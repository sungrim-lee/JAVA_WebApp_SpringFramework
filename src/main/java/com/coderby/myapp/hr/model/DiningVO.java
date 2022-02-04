package com.coderby.myapp.hr.model;

public class DiningVO {
   private int diningId;
   private String diningName;
   private String locationDetail;
   private String locationSimple;
   private int grade;
   private String keyword;
   private String picture;
   private String hashtag;
   private String phoneNumber;
   private String diningUrl;
   private String wordcloud;
   
   
   public int getDiningId() {
      return diningId;
   }

   public void setDiningId(int diningId) {
      this.diningId = diningId;
   }

   public String getDiningName() {
      return diningName;
   }

   public void setDiningName(String diningName) {
      this.diningName = diningName;
   }

   public String getLocationDetail() {
      return locationDetail;
   }

   public void setLocationDetail(String locationDetail) {
      this.locationDetail = locationDetail;
   }

   public String getLocationSimple() {
      return locationSimple;
   }

   public void setLocationSimple(String locationSimple) {
      this.locationSimple = locationSimple;
   }

   public int getGrade() {
      return grade;
   }

   public void setGrade(int grade) {
      this.grade = grade;
   }

   public String getKeyword() {
      return keyword;
   }

   public void setKeyword(String keyword) {
      this.keyword = keyword;
   }

   public String getPicture() {
      return picture;
   }

   public void setPicture(String picture) {
      this.picture = picture;
   }

   public String getHashtag() {
      return hashtag;
   }

   public void setHashtag(String hashtag) {
      this.hashtag = hashtag;
   }

   public String getPhoneNumber() {
      return phoneNumber;
   }

   public void setPhoneNumber(String phoneNumber) {
      this.phoneNumber = phoneNumber;
   }

   public String getDiningUrl() {
      return diningUrl;
   }

   public void setDiningUrl(String diningUrl) {
      this.diningUrl = diningUrl;
   }

   public String getWordcloud() {
      return wordcloud;
   }

   public void setWordcloud(String wordcloud) {
      this.wordcloud = wordcloud;
   }

   @Override
   public String toString() {
      return "DiningVO [diningId=" + diningId + ", diningName=" + diningName + ", locationDetail=" + locationDetail
            + ", locationSimple=" + locationSimple + ", grade=" + grade + ", keyword=" + keyword + ", picture="
            + picture + ", hashtag=" + hashtag + ", phoneNumber=" + phoneNumber + ", diningUrl=" + diningUrl
            + ", wordcloud=" + wordcloud + "]";
   }
   
   
}