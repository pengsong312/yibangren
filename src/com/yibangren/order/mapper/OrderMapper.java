package com.yibangren.order.mapper;

import java.util.List;

import com.yibangren.order.entity.Order;

public interface OrderMapper {

	public void addOrder(Order order);

	public List<Order> getAllOrder();


}
