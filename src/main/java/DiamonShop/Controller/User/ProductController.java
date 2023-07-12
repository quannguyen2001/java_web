package DiamonShop.Controller.User;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dto.PaginatesDto;
import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Categorys;
import DiamonShop.Service.IProductService;
import DiamonShop.Service.PaginateServiceImpl;

@Controller
public class ProductController extends BaseController {
	@Autowired
	private IProductService _productService;
	
	@Autowired
	private PaginateServiceImpl paginateService;
	
	int totalProductsPage = 9;

	@RequestMapping(value = { "chi-tiet-san-pham/{id}" })
	public ModelAndView Index(@PathVariable long id) {
		_mvShare.setViewName("user/products/product");
		_mvShare.addObject("product", _productService.GetProductByID(id));
		int idCategory = _productService.GetProductByID(id).getId_category();
		_mvShare.addObject("productByIDCategory", _productService.GetProductByIDCategory(idCategory));
		return _mvShare;
	}
	
	@RequestMapping(value = "/tat-ca-san-pham")
	public ModelAndView AllProduct()
	{
		_mvShare.setViewName("user/products/all_product");
	
		int totalData = _productService.GetProduct().size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, 1);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", _productService.GetAllDataProducts(paginateInfo.getStart(),totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "/tat-ca-san-pham/{currentPage}")
	public ModelAndView AllProduct(@PathVariable String currentPage)
	{
		_mvShare.setViewName("user/products/all_product");
	
		int totalData = _productService.GetProduct().size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", _productService.GetAllDataProducts(paginateInfo.getStart(),totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "/tim-kiem-san-pham")
	public ModelAndView SearchPhone(@PathVariable String name)
	{
		 _productService.GetProductsByName(name);
		_mvShare.addObject("nameProduct", name);
		_mvShare.setViewName("redirect:tim-kiem-san-pham/{name}");		
		return _mvShare;
	}
	
	@RequestMapping(value = "/tim-kiem-san-pham/{name}")
	public ModelAndView Search(@PathVariable String name)
	{
		
		_mvShare.setViewName("user/products/search");
	
		int totalData = _productService.GetProductsByName(name).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, 1);
		
		_mvShare.addObject("nameProduct", name);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductByNamePaginate(name, paginateInfo.getStart(),totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "/tim-kiem-san-pham/{name}/{currentPage}")
	public ModelAndView Search(@PathVariable String name,@PathVariable String currentPage)
	{
		
		_mvShare.setViewName("user/products/search");
	
		int totalData = _productService.GetProductsByName(name).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		
		_mvShare.addObject("nameProduct", name);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductByNamePaginate(name, paginateInfo.getStart(),totalProductsPage));
		return _mvShare;
	}
	
	@RequestMapping(value = "/tat-ca-san-pham/{name}/{currentPage}",  method = RequestMethod.GET)
	public ModelAndView SearchProduct(@RequestParam(name="name", required = false) String name,@PathVariable String currentPage)
	{
		int totalData = _productService.GetProductsByName(name).size();
		PaginatesDto paginateInfo = paginateService.GetInfoPaginates(totalData, totalProductsPage, Integer.parseInt(currentPage));
		
		_mvShare.addObject("nameProduct", name);
		_mvShare.addObject("paginateInfo", paginateInfo);
		_mvShare.addObject("productsPaginate", _productService.GetDataProductByNamePaginate(name, paginateInfo.getStart(),totalProductsPage));
		return _mvShare;
	}
}
