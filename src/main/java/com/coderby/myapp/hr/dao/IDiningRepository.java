package com.coderby.myapp.hr.dao;

import java.util.List;

import org.apache.ibatis.annotations.Param;

import com.coderby.myapp.hr.model.DiningVO;

public interface IDiningRepository {
	List<DiningVO> selectByDiningName(@Param("diningName") String diningName,@Param ("location") String location,@Param("keyword") String keyword,@Param("hashtag") String hashtag);
	int selectCount(@Param("diningName") String diningName,@Param ("location") String location,@Param("keyword") String keyword,@Param("hashtag") String hashtag);
	List<DiningVO> selectPage(@Param("diningName") String diningName,@Param ("location") String location,@Param("keyword") String keyword,@Param("hashtag") String hashtag,@Param("pagecount") String pagecount);


	List<DiningVO> selectByKeyword(String keyword);
	List<DiningVO> selectByHashtag(String hashtag);
	List<DiningVO> selectByLocation(@Param ("location") String location);
	DiningVO selectByDiningId(@Param("diningId")int diningId);
}