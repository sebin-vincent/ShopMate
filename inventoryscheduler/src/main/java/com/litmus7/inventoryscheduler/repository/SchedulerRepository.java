package com.litmus7.inventoryscheduler.repository;

import java.sql.Timestamp;

import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.data.jpa.repository.Modifying;
import org.springframework.data.jpa.repository.Query;
import org.springframework.data.repository.query.Param;
import org.springframework.stereotype.Repository;
import org.springframework.transaction.annotation.Transactional;

import com.litmus7.inventoryscheduler.dto.ItemMaster;

@Transactional
@Repository
public interface SchedulerRepository extends JpaRepository<ItemMaster, Integer> {

	@Query(value = "select count(*) from item_master where item_id=:item_id", nativeQuery = true)
	public int isExisting(@Param("item_id") String item_id);

	@Modifying
	@Query(value = "insert into item_master (item_id, item_name, item_description, hsn_code,unit_id,start_datetime,end_datetime) values (:item_id,:item_name, :item_description, :hsn_code, :unit_id,:start_datetime,:end_datetime)", nativeQuery = true)
	public void insertItem(@Param("item_id") String item_id, @Param("item_name") String item_name,
			@Param("item_description") String item_description, @Param("hsn_code") String hsn_code,
			@Param("unit_id") Integer unit_id, @Param("start_datetime") Timestamp start_datetime,
			@Param("end_datetime") Timestamp end_datetime);

	@Modifying
	@Query(value = "insert into stock_master (item_id, available_stock, reserved_stock, total_stock,dead_stock,state_id,preorder_level,reorder_level,backorder_level) values (:item_id,:available_stock, :reserved_stock, :total_stock,:dead_stock,:state_id,:preorder_level,:reorder_level,:backorder_level)", nativeQuery = true)
	public void insertStock(@Param("item_id") String item_id, @Param("available_stock") Integer available_stock,
			@Param("reserved_stock") Integer reserved_stock, @Param("total_stock") Integer total_stock,
			@Param("dead_stock") Integer dead_stock, @Param("state_id") Integer state_id,
			@Param("preorder_level") Integer preoder_level, @Param("reorder_level") Integer reorder_level,
			@Param("backorder_level") Integer backorder_level);

	@Modifying
	@Query(value = "update item_master i set i.item_name=:item_name,i.item_description=:item_description, i.hsn_code=:hsn_code,i.unit_id=:unit_id,i.start_datetime=:start_datetime,i.end_datetime=:end_datetime where i.item_id=:item_id", nativeQuery = true)
	public void updateItem(@Param("item_id") String item_id, @Param("item_name") String item_name,
			@Param("item_description") String item_description, @Param("hsn_code") String hsn_code,
			@Param("unit_id") Integer unit_id, @Param("start_datetime") Timestamp start_datetime,
			@Param("end_datetime") Timestamp end_datetime);

	@Modifying
	@Query(value = "update stock_master s set s.available_stock=:available_stock, s.reserved_stock=:reserved_stock, s.total_stock=:total_stock,s.dead_stock=:dead_stock,s.state_id=:state_id,s.preorder_level=:preorder_level,s.reorder_level=:reorder_level,s.backorder_level=:backorder_level where s.item_id=:item_id", nativeQuery = true)
	public void updateStock(@Param("item_id") String item_id, @Param("available_stock") Integer available_stock,
			@Param("reserved_stock") Integer reserved_stock, @Param("total_stock") Integer total_stock,
			@Param("dead_stock") Integer dead_stock, @Param("state_id") Integer state_id,
			@Param("preorder_level") Integer preoder_level, @Param("reorder_level") Integer reorder_level,
			@Param("backorder_level") Integer backorder_level);

}
