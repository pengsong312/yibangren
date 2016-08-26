package com.yibangren.order.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.ResponseBody;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.yibangren.order.entity.Order;
import com.yibangren.order.mapper.OrderMapper;

@Controller
@RequestMapping("order")
public class OrderController {

	private OrderMapper orderMapper = null;

	@Autowired
	public void setMapper(OrderMapper orderMapper) {
		this.orderMapper = orderMapper;
	}
	
	@RequestMapping(value = {"/list",""},method=RequestMethod.GET)
	public String list(Model model){
		
		List<Order> orders = null;
		
		orders = orderMapper.getAllOrder();
		
		model.addAttribute("ordersList", orders);
		model.addAttribute("size", orders.size());
		
		return "order/list";
	}
	@RequestMapping(value = {"/toAdd"})
	public String toAdd(Model model,Order order){
		
		return "order/add";
	}
	@RequestMapping(value = {"/add"})
	public String add(Model model,Order order,RedirectAttributes redirectAttributes){
		
		orderMapper.addOrder(order);
		
		List<Order> list = orderMapper.getAllOrder();
		redirectAttributes.addAttribute("message", "预约成功");
		redirectAttributes.addAttribute("size", list.size());
		return "redirect:list";
	}
	
	
}
