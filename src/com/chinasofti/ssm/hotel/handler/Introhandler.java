package com.chinasofti.ssm.hotel.handler;

import java.io.File;
import java.io.IOException;
import java.util.List;
import java.util.Map;
import java.util.UUID;







import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;

import com.chinasofti.ssm.hotel.entity.Intro;
import com.chinasofti.ssm.hotel.service.IntroService;

@Controller
public class Introhandler {
	@Autowired
	IntroService introservice;
	Intro intro=new Intro();

	@RequestMapping(value="/introaddaaa",method=RequestMethod.POST)
	public String Introadd(@RequestParam(value="img") MultipartFile photofile,HttpServletRequest request,HttpServletResponse response){
		
		String realpath = "E:/PB/Hotel/WebContent/img";
		File savefile=new File(realpath,photofile.getOriginalFilename());
		System.out.println(savefile);
		System.out.println(photofile.getOriginalFilename());
		try {
			if (!savefile.getParentFile().exists()) {
				savefile.getParentFile().mkdirs();
			}
			
			photofile.transferTo(savefile);//
			
		} catch (IOException e) {
			e.printStackTrace();
		}
		String introname=request.getParameter("introname");
		String intro1=request.getParameter("intro_text");
	   intro.setImg("img"+"\\"+savefile.getAbsolutePath().split("\\\\")[5]);
	   intro.setUuid(UUID.randomUUID().toString());
       intro.setIntro_text(intro1);
       intro.setIntroname(introname);
	   introservice.Introadd(intro);
	  
	 
		   return "redirect:introshow";
	  
		
	}
	
	@RequestMapping("/introshow")
	public String Introshow(Map<String, Object> intromap){
		
		
		List<Intro> Introlist=introservice.Introshow();
		
		intromap.put("Introlist", Introlist);
		return "introshow";
		
		
		
	}
	
	@RequestMapping("/introupdate")
	public String Introupdate(Intro intro,Map<String, Object> map){
		List<Intro> list=introservice.intrushow(intro);
		map.put("map1", list);
		return "introupdate";
		
		
	}
	
	@RequestMapping("/introtoupdate")
	public String Introtoupdate(@RequestParam(value="img") MultipartFile photofile,
	HttpServletRequest request){
		String realpath =  "E:/PB/Hotel/WebContent/img";
		File savefile=new File(realpath,photofile.getOriginalFilename());
		System.out.println("savefile"+savefile);
		System.out.println("1111"+photofile.getOriginalFilename());
		if(photofile.getOriginalFilename().equals("")){
			String id=request.getParameter("id");
			String introname=request.getParameter("introname");
			String intro1=request.getParameter("intro_text");
			int id1= Integer.parseInt(id);
			intro.setId(id1);
			intro.setIntro_text(intro1);
			intro.setIntroname(introname);
			introservice.uupdate(intro);
		}
		else{
			
			try {
				if (!savefile.getParentFile().exists()) {
					savefile.getParentFile().mkdirs();
				}
				
				photofile.transferTo(savefile);
				
			} catch (IOException e) {
				e.printStackTrace();
			}
			String id=request.getParameter("id");
			String introname=request.getParameter("introname");
			String intro1=request.getParameter("intro_text");
			int id1= Integer.parseInt(id);
			intro.setId(id1);
			intro.setImg("img"+"\\"+savefile.getAbsolutePath().split("\\\\")[5]);
			intro.setIntro_text(intro1);
			intro.setIntroname(introname);
			introservice.Introtoupdate(intro);
		}
		
		return "redirect:introshow";
		
		
	}
	@RequestMapping("/delaction")
	public String del(Intro intro){
		
		System.out.println("~~~~~~"+intro);
		introservice.del(intro);
		
		return "redirect:introshow";
		
		
	}
	@RequestMapping("/deleteMessage.action")
	public String delAll(HttpServletRequest request){
		String list = request.getParameter("list");
		String[] str = list.split(",");
		System.out.println(5556656);
		System.out.println(list);
		for (int i = 0; i < str.length; i++) {
			
			int ids=Integer.parseInt(str[i]);
			introservice.delAll(ids);
			System.out.println(ids);
			System.out.println(str[i]);
		}
		return "redirect:introshow";
		
		
	}
	
	

}
