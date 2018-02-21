package com.chinasofti.ssm.hotel.handler;

import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.SessionAttribute;

import com.chinasofti.ssm.hotel.entity.Check;
import com.chinasofti.ssm.hotel.entity.EUser;
import com.chinasofti.ssm.hotel.entity.Txt;
import com.chinasofti.ssm.hotel.service.TxtService;
import com.fasterxml.jackson.core.JsonProcessingException;
import com.fasterxml.jackson.databind.ObjectMapper;

@Controller
public class Messagehandler {
	@Autowired
	TxtService txtservice;
	
	@RequestMapping("/messageshow")
	public String Messageshow(Map<String, Object> map){
		
	List<Txt>	txlist=txtservice.txtshow();
	map.put("txlist", txlist);
		
		return "txtshow";
		
		
		
	}
	@RequestMapping("/messagedel")
	public String Messagedel(Txt txt){
		System.out.println(txt);
		txtservice.txtdel(txt);
		
		return "redirect:messageshow";
		
		
		
	}
	
	@RequestMapping("/TxtdelAll")
	public String TxtdelAll(HttpServletRequest request){
		String arra=request.getParameter("arr");
		System.out.println(arra);
		String[] array=arra.split(",");
		for (int i = 0; i < array.length; i++) {
			int idd=Integer.parseInt(array[i]);
			txtservice.txtdelAll(idd);
			System.out.println(idd);
		}
		
		return "redirect:messageshow";
		
		
	}
	
	@RequestMapping("/newshow")
	
	public String newshow(Map<String, Object> map,HttpServletRequest request,HttpServletResponse response){
		
	 
         
		List<Check> checklist=txtservice.Newshow();
		System.out.println("=-==============");
		map.put("checklist", checklist);
		//listתjson
		ObjectMapper mapper = new ObjectMapper();
		 try {
			String jsonStr = mapper.writeValueAsString(checklist);
			System.out.println("~~~"+jsonStr);
			response.getWriter().write(jsonStr);
		
		 } catch (Exception e) {
				// TODO Auto-generated catch block
				e.printStackTrace();
			}
		
		return null;
		
	}
	
	@RequestMapping("/usershow")
	public String Usershow(Map<String, Object> map,EUser euser){
		List<EUser> Userlist=txtservice.Usershow();
		System.out.println(Userlist);
		map.put("Userlist", Userlist);
		
		return "usershow";
		
		
	}
	@RequestMapping("/usertoupdate")
	public String Usertoupdate(EUser euser,Map<String, Object> map){
		
		List<EUser> uslist=txtservice.Usertoupdate(euser);
		map.put("uslist", uslist);
		
		return null;
		
	}
	
	
	@RequestMapping("/userupdate")
	public String Userupdate(EUser euser){
		System.out.println(euser);
		txtservice.Userupdate(euser);
		return "redirect:usershow";
		
		
		
	}
	
	
	
	

}
