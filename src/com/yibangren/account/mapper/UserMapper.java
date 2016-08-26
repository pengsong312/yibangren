package com.yibangren.account.mapper;

import java.util.List;

import com.yibangren.account.entity.User;
import com.yibangren.account.util.Page;

public interface UserMapper {

	public void addUser(User user);

	public List<User> getAllUser();

	public User getUserById(int id);

	public void deleteById(int id);

	public void update(User user);

	public long getAllUserCount();

	public List<User> getUsers(Page page);

}
