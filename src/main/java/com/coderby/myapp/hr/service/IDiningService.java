package com.coderby.myapp.hr.service;

import java.util.List;

import com.coderby.myapp.hr.model.DiningVO;

public interface IDiningService {
	List<DiningVO> selectByDiningName(String diningName,String location, String keyword, String hashtag);
	int selectCount(String diningName,String location,String keyword, String hashtag);
	List<DiningVO> selectPage(String diningName,String location,String keyword, String hashtag,String pagecount);
	List<DiningVO> selectByKeyword(String keyword);
	List<DiningVO> selectByHashtag(String hashtag);
	List<DiningVO> selectByLocation(String location);
	DiningVO selectByDiningId(int diningId);
}