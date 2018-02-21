package com.chinasofti.ssm.hotel.handler;

import java.io.IOException;
import java.util.List;
import java.util.Map;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import org.apache.struts2.ServletActionContext;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.chinasofti.ssm.hotel.entity.Account;
import com.chinasofti.ssm.hotel.entity.Check;
import com.chinasofti.ssm.hotel.entity.EUser;
import com.chinasofti.ssm.hotel.service.IUserService;

@Controller
@RequestMapping("reqs")
public class UserHandler {
	// ◊¢»ÎService
	@Autowired
	IUserService iUserService;

	@RequestMapping("/userlogin")
	public String userlogin(EUser user,Map<String, Object> map,HttpServletRequest req, HttpServletResponse resp) {
		String result="1";
		try {
			List<EUser> userlist = iUserService.userlogin(user);
			if (userlist.size() != 0) {
				System.out.println("--------------------------------");
				 result = "{\"status\":\"ok\",\"message\":\"µ«¬º≥…π¶!\"}";
				 resp.getWriter().write(result);
			} else {
				System.out.println("!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!!");
				 result = "{\"status\":\"fail\",\"message\":\"’À∫≈ªÚ√‹¬Î¥ÌŒÛµ«¬º ß∞‹£¨«Î∫À µ÷ÿ ‘!\"}";
				 resp.getWriter().write(result);
				
			}
		} catch (Exception e) {
			e.printStackTrace();
		}
		return null;
	}

	@RequestMapping("/checkshow")
	public String checkshow(Map<String, Object> map) {
        List<Check> checklist=iUserService.checkshow();
        System.out.println(checklist);
        map.put("checkmap", checklist);
		return "check";
	}
	
	@RequestMapping("/accountshow")
	public String accountshow(Map<String, Object> map) {
        List<Account> accountlist=iUserService.accountshow();
        System.out.println(accountlist);
        map.put("accountmap", accountlist);
		return "account";
	}
}
