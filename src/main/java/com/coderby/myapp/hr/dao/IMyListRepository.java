package com.coderby.myapp.hr.dao;

import java.util.List;
import java.util.Map;

import org.apache.ibatis.annotations.Param;


import com.coderby.myapp.hr.model.MyListVO;

public interface IMyListRepository {

	List<MyListVO>getAllMyList();
	MyListVO getMyListInfo(int myid);
	void updateMyList(MyListVO mylist);
	void insertMyList(MyListVO mylist);
	void deleteMyList(@Param("myid") int myid, @Param("diningname") String diningname);
	List<Map<String, Object>> getAllDiningId();
	
	int getMaxMyId();
	void uploadFile( MyListVO mylist);
	MyListVO getFile(int myid);
	void deleteFile(int myid);
	void updateFile(MyListVO mylist);
	
}
