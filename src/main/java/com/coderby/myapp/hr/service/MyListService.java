package com.coderby.myapp.hr.service;

import java.util.List;
import java.util.Map;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.coderby.myapp.hr.dao.IMyListRepository;
import com.coderby.myapp.hr.model.MyListVO;

@Service
public class MyListService implements IMyListService {
	
	@Autowired
	@Qualifier("IMyListRepository")
	IMyListRepository myListRepository;
	
	@Override
	public List<MyListVO> getAllMyList() {
		return myListRepository.getAllMyList();
	}

	@Override
	public MyListVO getMyListInfo(int myid) {
		return myListRepository.getMyListInfo(myid);
	}

	@Override
	public void updateMyList(MyListVO mylist) {
		myListRepository.updateMyList(mylist);
	}

	@Override
	public void insertMyList(MyListVO mylist) {
		mylist.setMyId(myListRepository.getMaxMyId()+1);
		myListRepository.insertMyList(mylist);
	}

	@Override
	public void deleteMyList(int myid, String diningname) {
		myListRepository.deleteMyList(myid, diningname);
	}

	@Override
	public List<Map<String, Object>> getAllDiningId() {
		return myListRepository.getAllDiningId();
	}

	@Override
	public void uploadFile( MyListVO mylist) {
		myListRepository.uploadFile( mylist);
	}

	@Override
	public MyListVO getFile(int myid) {
		return myListRepository.getFile(myid);
	}

	@Override
	public void deleteFile(int myid) {
		myListRepository.deleteFile(myid);	
	}

	@Override
	public void updateFile(MyListVO mylist) {
		myListRepository.updateFile(mylist);	
	}
}
