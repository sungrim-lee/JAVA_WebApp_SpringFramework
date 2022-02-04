package com.coderby.myapp.hr.model;

import java.sql.Date;
import java.util.Arrays;

import javax.validation.constraints.Digits;
import javax.validation.constraints.Max;
import javax.validation.constraints.Min;

import org.springframework.web.multipart.MultipartFile;

public class MyListVO {

	private int myId;
	private int diningId;
	private String diningName;

	private String myPicName;
	private long myPicSize;
	private String myPicContentType;
	private byte[] myPicData;

	private String myOpinion;
	@Digits(integer=3,fraction=0,message="평점은 정수로만 입력해주세요.")
	@Min(value=0,message="평점은 0-100점 사이")
	@Max(value=100,message="평점은 0-100점 사이")
	private int myGrade;
	private Date myDate;
	private MultipartFile file;
	
	public MultipartFile getFile() {
		return file;
	}
	public void setFile(MultipartFile file) {
		this.file = file;
	}
	public int getMyId() {
		return myId;
	}
	public void setMyId(int myId) {
		this.myId = myId;
	}
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
	public String getMyPicName() {
		return myPicName;
	}
	public void setMyPicName(String myPicName) {
		this.myPicName = myPicName;
	}
	public long getMyPicSize() {
		return myPicSize;
	}
	public void setMyPicSize(long myPicSize) {
		this.myPicSize = myPicSize;
	}
	public String getMyPicContentType() {
		return myPicContentType;
	}
	public void setMyPicContentType(String myPicContentType) {
		this.myPicContentType = myPicContentType;
	}
	public byte[] getMyPicData() {
		return myPicData;
	}
	public void setMyPicData(byte[] myPicData) {
		this.myPicData = myPicData;
	}
	public String getMyOpinion() {
		return myOpinion;
	}
	public void setMyOpinion(String myOpinion) {
		this.myOpinion = myOpinion;
	}
	public int getMyGrade() {
		return myGrade;
	}
	public void setMyGrade(int myGrade) {
		this.myGrade = myGrade;
	}
	public Date getMyDate() {
		return myDate;
	}
	public void setMyDate(Date myDate) {
		this.myDate = myDate;
	}
	@Override
	public String toString() {
		return "MyListVO [myId=" + myId + ", diningId=" + diningId + ", diningName=" + diningName + ", myPicName="
				+ myPicName + ", myPicSize=" + myPicSize + ", myPicContentType=" + myPicContentType + ", myOpinion=" + myOpinion + ", myGrade=" + myGrade + ", myDate=" + myDate
				+ "]";
	}








}