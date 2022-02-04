package com.coderby.myapp.hr.service;

import java.util.List;

import org.apache.ibatis.annotations.Param;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.stereotype.Service;

import com.coderby.myapp.hr.dao.IDiningRepository;
import com.coderby.myapp.hr.model.DiningVO;
@Service
public class DiningService implements IDiningService {
   
   @Autowired
   @Qualifier("IDiningRepository")
   IDiningRepository diningRepository;
   @Override
   public List<DiningVO> selectByDiningName(String diningName,String location, String keyword, String hashtag) {
      return diningRepository.selectByDiningName(diningName,location,keyword,hashtag);
   }
   @Override
   public int selectCount(String diningName,String location,String keyword, String hashtag) {
      return diningRepository.selectCount(diningName, location, keyword, hashtag);
   }
   
   @Override
   public List<DiningVO> selectPage(String diningName,String location,String keyword, String hashtag,String pagecount) {
      return diningRepository.selectPage(diningName, location, keyword, hashtag,pagecount);
   }
   
   @Override
   public List<DiningVO> selectByKeyword(String keyword) {
      return diningRepository.selectByKeyword(keyword);
   }

   @Override
   public List<DiningVO> selectByHashtag(String hashtag) {
      return diningRepository.selectByHashtag(hashtag);
   }

   @Override
   public List<DiningVO> selectByLocation(String location) {
      return diningRepository.selectByLocation(location);
   }
   
   @Override
   public DiningVO selectByDiningId(int diningId) {
      return diningRepository.selectByDiningId(diningId);
   }

}