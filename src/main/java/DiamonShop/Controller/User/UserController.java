package DiamonShop.Controller.User;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Entity.Users;
import DiamonShop.Service.AccountServiceImpl;

@Controller
public class UserController extends BaseController{
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	
	@RequestMapping(value="/dang-ky", method = RequestMethod.GET)
	public ModelAndView Register()
	{
		_mvShare.setViewName("user/account/login");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	
//	@RequestMapping(value="/dang-ky", method = RequestMethod.POST)
//	public ModelAndView CreateAcc(@ModelAttribute("user") Users user)
//	{
//		int count = accountService.AddAcount(user);
//		if(count > 0)
//		{
//			_mvShare.addObject("status", "Đăng ký tài khoản thành công!");
//		}
//		else
//		{
//			_mvShare.addObject("status", "Đăng ký tài khoản thất bại!");
//		}
//		
//		_mvShare.setViewName("user/account/login");
//		return _mvShare;
//	}
	
	@RequestMapping(value="/dang-nhap", method = RequestMethod.POST)
	public ModelAndView Login(HttpSession session, @ModelAttribute("user") Users user)
	{
		user = accountService.CheckAccount(user);
		if(user != null)
		{
			_mvShare.setViewName("redirect:/quan-ly/");
			session.setAttribute("LoginInfo", user);
			
		}
		else
		{
			_mvShare.addObject("statusLogin", "Đăng nhập thất bại!");
		}
		
		return _mvShare;
	}
	
	@RequestMapping(value="/dang-xuat", method = RequestMethod.GET)
	public String Logout(HttpSession session, HttpServletRequest request)
	{
		session.removeAttribute("LoginInfo");
		
		//return "redirect:"+request.getHeader("Referer");
		return "redirect:/trang-chu";
	}
}