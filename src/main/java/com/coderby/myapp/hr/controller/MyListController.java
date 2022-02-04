package com.coderby.myapp.hr.controller;

import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.List;

import org.apache.log4j.Logger;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.factory.annotation.Qualifier;
import org.springframework.http.HttpHeaders;
import org.springframework.http.HttpStatus;
import org.springframework.http.MediaType;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.mvc.support.RedirectAttributes;

import com.coderby.myapp.hr.model.DiningVO;
import com.coderby.myapp.hr.model.MyListVO;
import com.coderby.myapp.hr.service.IMyListService;
import com.coderby.myapp.hr.service.IDiningService;

@Controller
public class MyListController {
	static  final Logger logger = Logger.getLogger(MyListController.class);

	@Autowired
	IMyListService myListService;

	@Autowired
	IDiningService diningService;

	@RequestMapping(value="/hr/mylist")
	public String getAllMyList(Model model) {
		List<MyListVO> myList = myListService.getAllMyList();
		model.addAttribute("myList", myList);
		return "hr/mylist";
	}

	@RequestMapping(value="/hr/insert", method=RequestMethod.GET)
	public String insertMyList(int diningId, String diningName ,Model model) {
		model.addAttribute("diningId", diningId);
		model.addAttribute("diningName", diningName);
		return "hr/insertform";
	}

	@RequestMapping(value="/hr/insert", method=RequestMethod.POST)
	public String insertMyList(MyListVO mylist, RedirectAttributes redirectAttrs,
			Model model) {
		MultipartFile file = mylist.getFile();
		logger.info(file.getOriginalFilename());
		try {
			myListService.insertMyList(mylist);
			if(file!=null && !file.isEmpty()) {
				logger.info("/upload : " +file.getOriginalFilename());

				mylist.setMyPicName(file.getOriginalFilename());
				mylist.setMyPicSize(file.getSize());
				mylist.setMyPicContentType(file.getContentType());
				mylist.setMyPicData(file.getBytes());
				myListService.uploadFile(mylist);
			}
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttrs.addFlashAttribute("message",e.getMessage());
		}
		logger.info("/upload3 : " +mylist.toString());	
		return "redirect:/hr/mylist";
	}

	@RequestMapping(value="/hr/{myId}")
	public String getMyListInfo(@PathVariable int myId, Model model) {
		MyListVO myList = myListService.getMyListInfo(myId);
		model.addAttribute("myList", myList);
		return "hr/myview";
	}

	@RequestMapping(value="/hr/update", method=RequestMethod.GET)
	public String updateMyList(int myId, Model model) {
		model.addAttribute("myList", myListService.getMyListInfo(myId));
		return "hr/updateform";
	}

	@RequestMapping(value="/hr/update", method=RequestMethod.POST)
	public String updateMyList(MyListVO myList, RedirectAttributes redirectAttrs,
			Model model) {

		logger.info("/getmyid0: "+ myList.toString());
		logger.info("/getmyid1: "+ myList.getMyId());
		MultipartFile file = myList.getFile();

		logger.info("/getmyid2: "+ myList.getMyId());

		logger.info(file.getOriginalFilename());
		try {
			myListService.updateMyList(myList);
			if(file!=null && !file.isEmpty()) {
				logger.info("/update : " +file.getOriginalFilename());

				myList.setMyPicName(file.getOriginalFilename());
				myList.setMyPicSize(file.getSize());
				myList.setMyPicContentType(file.getContentType());
				myList.setMyPicData(file.getBytes());
				myListService.updateFile(myList);
			}
		} catch (Exception e) {
			e.printStackTrace();
			redirectAttrs.addFlashAttribute("message",e.getMessage());
		}
		logger.info("/getmyid3: "+ myList.getMyId());
		return "redirect:/hr/" +myList.getMyId(); 
	}

	@RequestMapping(value="/hr/delete", method=RequestMethod.GET)
	public String deleteMyList(int myId, Model model) {
		model.addAttribute("myId",myId);
		model.addAttribute("myList", myListService.getMyListInfo(myId));
		return "hr/deleteform";
	}

	@RequestMapping(value="/hr/delete", method=RequestMethod.POST)
	public String deleteMyList(int myId, String diningName, Model model) {
		myListService.deleteMyList(myId, diningName);
		return "redirect:/hr/mylist"; 
	}

	@RequestMapping(value="/hr/deletefile/{myId}")
	public String deleteFile(@PathVariable int myId) {
		myListService.deleteFile(myId);
		return "redirect:/hr/update?myId="+myId; 
	}

	@RequestMapping("/img/{myId}")
	public ResponseEntity<byte[]> getImageFile(@PathVariable int myId){
		MyListVO file= myListService.getFile(myId);
		final HttpHeaders headers = new HttpHeaders();
		if(file != null) {
			logger.info("getFile " + file.toString());
			String[] mtypes = file.getMyPicContentType().split("/");
			headers.setContentType(new MediaType(mtypes[0], mtypes[1]));
			headers.setContentDispositionFormData("attachment", file.getMyPicName(), Charset.forName("UTF-8"));
			headers.setContentLength(file.getMyPicSize());
			return new ResponseEntity<byte[]>(file.getMyPicData(),headers,HttpStatus.OK);
		}else {
			return new ResponseEntity<byte[]>(HttpStatus.NOT_FOUND);
		}
	}

	@RequestMapping("/pds/{fileId}")
	public ResponseEntity<byte[]> getBinaryFile(@PathVariable int myId) {
		MyListVO file= myListService.getFile(myId);
		final HttpHeaders headers = new HttpHeaders();
		if(file != null) {
			logger.info("getFile " + file.toString());
			String[] mtypes = file.getMyPicContentType().split("/");
			headers.setContentType(new MediaType(mtypes[0], mtypes[1]));
			headers.setContentDispositionFormData("attachment", file.getMyPicName(), Charset.forName("UTF-8"));
			headers.setContentLength(file.getMyPicSize());
			return new ResponseEntity<byte[]>(file.getMyPicData(),headers,HttpStatus.OK);
		}else {
			return new ResponseEntity<byte[]>(HttpStatus.NOT_FOUND);
		}
	}

	@RequestMapping(value="/hr/list")
	public String selectAllDiningInfo(Model model) {    
		List<DiningVO> diningList = diningService.selectByDiningName("","","","");
		int count = diningService.selectCount("", "", "", "");
		model.addAttribute("diningList", diningList);
		model.addAttribute("pagecount",count/10 + 1);
		model.addAttribute("count",count );
		return "hr/lists";
	}


	//   @RequestMapping(value="/hr/search", method=RequestMethod.POST)
	//   public String selectByDiningName(String diningName,String location,String hashtag,String keyword,Model model) {
	//	      List<DiningVO> diningList = diningService.selectByDiningName(diningName,location,keyword,hashtag);
	//	      int count = diningService.selectCount(diningName, location, keyword, hashtag);
	//	      model.addAttribute("diningList", diningList);
	//	      model.addAttribute("pagecnt",count/10 +1);
	//	      model.addAttribute("count",count );
	//	      
	//	      model.addAttribute("diningName",diningName);
	//	      model.addAttribute("location",location);
	//	      model.addAttribute("hashtag",hashtag);
	//	      model.addAttribute("keyword",keyword);
	//	      return "hr/lists";
	//   }

	@RequestMapping(value="/hr/search", method=RequestMethod.GET)
	   public String selectByDiningName(@RequestParam(value="diningName",required=false,defaultValue="") String diningName,
	         @RequestParam(value="location",required=false,defaultValue="") String location,
	         @RequestParam(value="hashtag",required=false,defaultValue="") String hashtag,
	         @RequestParam(value="keyword",required=false,defaultValue="") String keyword,
	         @RequestParam(value="pagecount",required=false,defaultValue="1") String pagecount,Model model) {
	      List<DiningVO> diningList = new ArrayList<DiningVO>();
	      int pagecount1 = Integer.parseInt(pagecount)-1;
	      int count = diningService.selectCount(diningName, location, keyword, hashtag);
	      
	      diningList = diningService.selectPage(diningName, location, keyword, hashtag, Integer.toString(pagecount1));
	      
//	      if(count <101) {
	        
//	      }
//	      else {
//	         diningList = diningService.selectByDiningName(diningName, location, keyword, hashtag);
//	      }
	      String prevpage="10";
	      String pagebegin="1";
//	      if(Integer.parseInt(pagecount)%10==1) {
	         pagebegin=Integer.toString(((Integer.parseInt(pagecount)-1)/10)*10+1);
//	      }
	      model.addAttribute("pagebegin",pagebegin);

	      model.addAttribute("diningList", diningList);
	      int pagecnt = (count/10)+1;
	      
	      if(count%10==0) {
	         pagecnt=count/10;
	      }
	      
	      model.addAttribute("pagecnt",pagecnt);
	      model.addAttribute("pagecount",pagecount);
	      model.addAttribute("count",count );

	      model.addAttribute("diningName",diningName);
	      model.addAttribute("location",location);
	      model.addAttribute("keyword",keyword);
	      model.addAttribute("hashtag",hashtag);

	      return "hr/lists";
	}
	//   
	//   @RequestMapping(value="/hr/pagenation", method=RequestMethod.POST)
	//   public String selectPage(String diningName,String location,String hashtag,String keyword,String pagecount,Model model) {
	//	      List<DiningVO> diningList = diningService.selectPage(diningName, location, keyword, hashtag, pagecount);
	//	      int count = diningService.selectCount(diningName, location, keyword, hashtag);
	//	      model.addAttribute("diningList", diningList);
	//	      model.addAttribute("pagecount",count/10);
	//	      model.addAttribute("count",count );
	//	      return "hr/lists";
	//   }
	//   

	@RequestMapping(value="/hr/detail")
	public String selectDetailDiningInfo(int diningId,Model model) {
		DiningVO dining = diningService.selectByDiningId(diningId);
		model.addAttribute("dining",dining);
		return "hr/detail";
	}

	@RequestMapping(value="/hr/detail", method=RequestMethod.POST)
	public String selectDetailDiningInfo(String diningName,String location,String hashtag,String keyword,Model model) {
		List<DiningVO> diningList = diningService.selectByDiningName(diningName,location,keyword,hashtag);
		model.addAttribute("diningList", diningList);
		return "hr/detail";
	}


}
