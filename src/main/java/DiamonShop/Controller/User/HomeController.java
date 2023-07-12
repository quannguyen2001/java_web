package DiamonShop.Controller.User;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class HomeController extends BaseController{

	@RequestMapping(value = {"/","/trang-chu"})
	public ModelAndView Index()
	{
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.addObject("products", _homeService.GetDataProducts());
		_mvShare.setViewName("user/index");
		
		return _mvShare;
	}
	

	@RequestMapping(value = "/lien-he")
	public ModelAndView Contact()
	{
		
		_mvShare.setViewName("user/contact/contacts");
		return _mvShare;
	}
	
	@RequestMapping(value = "/bao-hanh")
	public ModelAndView Insurance()
	{
		
		_mvShare.setViewName("user/insurance/insurance");
		return _mvShare;
	}
	
	@RequestMapping(value = "/gioi-thieu")
	public ModelAndView About()
	{
		
		_mvShare.setViewName("user/about/about");
		return _mvShare;
	}
	
	
}
