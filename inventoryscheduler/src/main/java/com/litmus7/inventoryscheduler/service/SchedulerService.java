package com.litmus7.inventoryscheduler.service;

import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.nio.file.Files;
import java.nio.file.Path;
import java.nio.file.Paths;
import java.nio.file.StandardCopyOption;
import java.sql.Timestamp;
import java.util.ArrayList;
import java.util.Date;
import java.util.List;
import java.util.stream.Collectors;
import java.util.stream.Stream;

import org.apache.poi.hssf.usermodel.HSSFWorkbook;
import org.apache.poi.ss.usermodel.Cell;
import org.apache.poi.ss.usermodel.Row;
import org.apache.poi.ss.usermodel.Sheet;
import org.apache.poi.ss.usermodel.Workbook;
import org.apache.poi.xssf.usermodel.XSSFWorkbook;
import org.slf4j.Logger;
import org.slf4j.LoggerFactory;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.scheduling.annotation.Scheduled;
import org.springframework.stereotype.Service;

import com.litmus7.inventoryscheduler.dto.ExcelBean;
import com.litmus7.inventoryscheduler.repository.SchedulerRepository;

@Service
public class SchedulerService {
	
	
	Logger logger=LoggerFactory.getLogger(SchedulerService.class);
	

	@Autowired
	SchedulerRepository repository;

	@Scheduled(cron = "0/30 * * * * *")
	public void execute() {
		logger.info("Inventory Check at "+new Date());
		//System.out.println("Inventory Check ");
		//System.out.println("Time now is " + new Date());

		try (Stream<Path> walk = Files.walk(Paths.get("src/main/resources/inventory/new"))) {

			List<String> result = walk.map(x -> x.toString()).filter(f -> f.endsWith(".xlsx"))
					.collect(Collectors.toList());

			result.forEach(excelsheet -> {
				try {
					process(excelsheet);

				} catch (IOException e) {
					logger.error(e.getMessage());
					//System.out.println(e.getMessage());
				}
			});

		} catch (IOException e) {
			//System.out.println("IOexception in the directory");
			logger.error("IOexception in the directory");
		}

	}

	private void process(String excelFilePath) throws IOException {
		//System.out.println(excelFilePath + "    getting processed");
		logger.info(excelFilePath + "    getting processed");
		FileInputStream inputStream = null;
		try {
			inputStream = new FileInputStream(new File(excelFilePath));
		} catch (FileNotFoundException e) {
			//System.out.println("file not found: File is  " + excelFilePath);
			logger.error("file not found: File is  " + excelFilePath);
		}
		Workbook workbook = null;
		try {
			workbook = getWorkbook(inputStream, excelFilePath);
		} catch (IOException e) {
			//System.out.println(e.getMessage());
			logger.error(e.getMessage());
		}

		Sheet sheet = workbook.getSheetAt(0);
		List<ExcelBean> datalist = new ArrayList<ExcelBean>();
		for (Row row : sheet) {
			int numberOfCols = row.getPhysicalNumberOfCells();
			if (numberOfCols != 15) {
				inputStream.close();
				Path sourcePath = Paths.get(excelFilePath);
				Path targetPath = Paths.get("src/main/resources/inventory/error");

				Files.move(sourcePath, targetPath.resolve(sourcePath.getFileName()),
						StandardCopyOption.REPLACE_EXISTING);
				//System.out.println("File contains incorrect number of cells");
				logger.error("File contains incorrect number of cells");
				logger.info("File moved from " + sourcePath + "  to " + targetPath);
				//System.out.println("ERROR::-->File moved from " + sourcePath + "  to " + targetPath);
				return;
			}
			ExcelBean e = new ExcelBean();
			if (row.getRowNum() == 0)
				continue;
			for (Cell cell : row) {
				try {
					switch (cell.getColumnIndex()) {
					case 0:
						try {
							e.setItem_id(String.valueOf((int) cell.getNumericCellValue()));
						} catch (NumberFormatException ex) {
							e.setItem_id(String.valueOf(cell.getNumericCellValue()));
						}
						break;
					case 1:
						e.setItem_name(cell.getStringCellValue());
						break;
					case 2:
						e.setItem_description(cell.getStringCellValue());
						break;
					case 3:
						e.setHsn_code(cell.getStringCellValue());
						break;
					case 4:
						e.setUnit_id((int) cell.getNumericCellValue());
						break;
					case 5:
						e.setStart_datetime(new Timestamp(cell.getDateCellValue().getTime()));
						break;
					case 6:
						e.setEnd_datetime(new Timestamp(cell.getDateCellValue().getTime()));
						break;
					case 7:
						e.setAvailble_stock((int) cell.getNumericCellValue());
						break;
					case 8:
						e.setReserved_stock((int) cell.getNumericCellValue());
						break;
					case 9:
						e.setTotal_stock((int) cell.getNumericCellValue());
						break;
					case 10:
						e.setDead_stock((int) cell.getNumericCellValue());
						break;
					case 11:
						e.setPreorder_level((int) cell.getNumericCellValue());
						break;
					case 12:
						e.setReorder_level((int) cell.getNumericCellValue());
						break;
					case 13:
						e.setBackorder_level((int) cell.getNumericCellValue());
						break;
					case 14:
						e.setState_id((int) cell.getNumericCellValue());
						break;
					}
				} catch (NullPointerException | NumberFormatException | IllegalStateException e1) {

					Path sourcePath = Paths.get(excelFilePath);
					Path targetPath = Paths.get("src/main/resources/inventory/error");
					inputStream.close();
					Files.move(sourcePath, targetPath.resolve(sourcePath.getFileName()));
					//System.out.println("Incorrect Format Excel Data");
					logger.error("Incorrect Format Excel Data");
					logger.info("File moved from " + sourcePath + "  to " + targetPath);
					//System.out.println("ERROR::-->File moved from " + sourcePath + "  to " + targetPath);
					return;
				}
			}

			datalist.add(e);

		}

		workbook.close();
		inputStream.close();
		for (ExcelBean item : datalist) {
			if (repository.isExisting(item.getItem_id()) == 0) {
				repository.insertItem(item.getItem_id(), item.getItem_name(), item.getItem_description(),
						item.getHsn_code(), item.getUnit_id(), item.getStart_datetime(), item.getEnd_datetime());
				//System.out.println("item inserted");
				logger.info("item inserted");
				repository.insertStock(item.getItem_id(), item.getAvailble_stock(), item.getReserved_stock(),
						item.getTotal_stock(), item.getDead_stock(), item.getState_id(), item.getPreorder_level(),
						item.getReorder_level(), item.getBackorder_level());
				//System.out.println("stock inserted");
				logger.info("stock inserted");
			} else {

				repository.updateItem(item.getItem_id(), item.getItem_name(), item.getItem_description(),
						item.getHsn_code(), item.getUnit_id(), item.getStart_datetime(), item.getEnd_datetime());
				//System.out.println("item updated");
				logger.info("item updated");
				repository.updateStock(item.getItem_id(), item.getAvailble_stock(), item.getReserved_stock(),
						item.getTotal_stock(), item.getDead_stock(), item.getState_id(), item.getPreorder_level(),
						item.getReorder_level(), item.getBackorder_level());
				//System.out.println("stock updated");
				logger.info("stock updated");
			}
		}

		Path sourcePath = Paths.get(excelFilePath);
		Path targetPath = Paths.get("src/main/resources/inventory/processed");
		Files.move(sourcePath, targetPath.resolve(sourcePath.getFileName()), StandardCopyOption.REPLACE_EXISTING);
		//System.out.println("File moved from " + sourcePath + "  to " + targetPath);
		logger.info("File moved from " + sourcePath + "  to " + targetPath);
		return;

	}

	private Workbook getWorkbook(FileInputStream inputStream, String excelFilePath) throws IOException {

		Workbook workbook = null;
		if (excelFilePath.endsWith("xlsx")) {
			try {
				workbook = new XSSFWorkbook(inputStream);
			} catch (IOException e) {
				throw new IOException("IO exception occured when creating XSSForkbook");
			}
		} else if (excelFilePath.endsWith("xls")) {
			try {
				workbook = new HSSFWorkbook(inputStream);
			} catch (IOException e) {
				throw new IOException("IO exception occured when creating HSSForkbook");

			}
		}

		return workbook;
	}

}