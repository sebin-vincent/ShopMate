package com.litmus7.shopmate.order.controller;

import com.litmus7.shopmate.order.dto.Response;
import com.litmus7.shopmate.order.service.TrendingServiceImpl;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.*;

@RestController
@RequestMapping("/order")
public class TrendingController {

    @Autowired
    private TrendingServiceImpl trendingService;

    @CrossOrigin
    @GetMapping("trending/{limit}")
    public Response getTrending(@PathVariable int limit) {

        Response response = new Response();
        response.setStatus(200);
        response.setMessage("successfully retrieved");
        response.setPayload((Object) trendingService.getTrendingSkuIds(limit));

        return response;

    }

}
