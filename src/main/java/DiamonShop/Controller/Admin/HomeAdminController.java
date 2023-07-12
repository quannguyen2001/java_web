package DiamonShop.Controller.Admin;

import javax.servlet.ServletContext;

import java.io.BufferedOutputStream;
import java.io.File;
import java.io.FileOutputStream;
import java.nio.file.Path;
import java.nio.file.Paths;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.PathVariable;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.Slides;
import DiamonShop.Entity.Users;
import DiamonShop.Service.AccountServiceImpl;
import DiamonShop.Service.BillsServiceImpl;
import DiamonShop.Service.CategoryServiceImpl;
import DiamonShop.Service.ProductServiceImpl;
import DiamonShop.Service.SlideServiceImpl;

@Controller
public class HomeAdminController extends BaseAdminController{

	@Autowired
	CategoryServiceImpl categoryService = new CategoryServiceImpl();
	
	@Autowired
	ProductServiceImpl productService = new ProductServiceImpl();
	
	@Autowired
	BillsServiceImpl billService = new BillsServiceImpl();
	
	@Autowired
	AccountServiceImpl accountService = new AccountServiceImpl();
	
	@Autowired
	SlideServiceImpl slideService = new SlideServiceImpl();
	
	@Autowired
	ServletContext application;
	
	@RequestMapping(value = {"/quan-ly/"})
	public ModelAndView Index()
	{
		_mvShare.addObject("count_cate", categoryService.CountCategory());
		_mvShare.addObject("count_pro", productService.CountProduct());
		_mvShare.addObject("count_bill", billService.CountBill());
		_mvShare.addObject("sum_all_bill", billService.SumAllBill());
		_mvShare.addObject("count_user", accountService.CountUser());
		_mvShare.addObject("count_slide", slideService.CountSlide());
		_mvShare.setViewName("admin/index");	
		return _mvShare;
	}
	
	//Quan Ly Hang
	@RequestMapping(value = "/quan-ly/category")
	public ModelAndView QuanLyHang()
	{
		_mvShare.addObject("categorys", _homeService.GetDataCategorys());
		_mvShare.setViewName("admin/category");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/add-category")
	public ModelAndView ThemMoiHang()
	{
		_mvShare.setViewName("admin/add_category");
		_mvShare.addObject("category", new Categorys());
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/AddCategory", method = RequestMethod.POST)
	public ModelAndView ThemMoiHang(@ModelAttribute("category") Categorys category)
	{
		categoryService.AddCategory(category);	
		_mvShare.setViewName("admin/add_category");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/update-category/{id}")
	public ModelAndView CapNhatHang(@ModelAttribute("category") Categorys category, @PathVariable int id)
	{
		_mvShare.addObject("category", categoryService.GetCategoryByID(id));
		_mvShare.setViewName("admin/update_category");
		return _mvShare;
	}
	
	@RequestMapping(value = "/UpdateCategory",  method = RequestMethod.POST)
	public ModelAndView UpdateCategory(@ModelAttribute("category") Categorys category)
	{
		categoryService.UpdateCategory(category);
		_mvShare.setViewName("admin/update_category");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/delete-category/{id}")
	public ModelAndView XoaHang(@PathVariable int id)
	{
		categoryService.DeleteCategory(id);
		_mvShare.setViewName("redirect:/quan-ly/category");
		return _mvShare;
	}
	
	//Quan Ly San Pham
	@RequestMapping(value = "/quan-ly/add-product")
	public ModelAndView ThemMoiSanPham()
	{
		_mvShare.addObject("products", new ProductsDto());
		_mvShare.setViewName("admin/add_product");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/AddProduct", method = RequestMethod.POST)
	public ModelAndView AddProduct(@ModelAttribute("product") ProductsDto product)
	{
		productService.AddProduct(product);
		_mvShare.setViewName("admin/add_product");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/product-detail/{id}")
	public ModelAndView ChiTietSanPham(@PathVariable long id)
	{
		_mvShare.addObject("product", productService.GetProductByID(id));
		_mvShare.setViewName("admin/product_detail");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/product")
	public ModelAndView QuanLySanPham()
	{
		_mvShare.addObject("products",productService.GetProduct());
		_mvShare.setViewName("admin/product");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/delete-product/{id}")
	public ModelAndView XoaSanPham(@PathVariable int id)
	{
		productService.DeleteProduct(id);
		_mvShare.setViewName("redirect:/quan-ly/product");
		return _mvShare;
	}
	
	//Quan Ly Don Hang
	@RequestMapping(value = "/quan-ly/order")
	public ModelAndView QuanLyDonHang()
	{
		_mvShare.addObject("orders", _homeService.GetDataOrder());
		_mvShare.setViewName("admin/order");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/bill-detail/{id}")
	public ModelAndView ChiTietDonHang(@PathVariable long id)
	{
		_mvShare.addObject("bills", billService.GetAllBiDetailByID(id));
		_mvShare.addObject("count", billService.CountProductOnBill(id));
		_mvShare.addObject("sum", billService.SumBill(id));
		_mvShare.setViewName("admin/bill_detail");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/update-bill/{id}")
	public ModelAndView CapNhatDonHang(@PathVariable long id)
	{
		_mvShare.addObject("bill", billService.UpdateBill(id));
		_mvShare.setViewName("redirect:/quan-ly/order");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/delete-bill/{id}")
	public ModelAndView XoaDonHang(@PathVariable int id)
	{
		billService.DeleteBill(id);
		_mvShare.setViewName("redirect:/quan-ly/order");
		return _mvShare;
	}
	
	//Quan Ly Slide
	@RequestMapping(value = "/quan-ly/slide")
	public ModelAndView QuanLySlide()
	{
		_mvShare.addObject("slides", _homeService.GetDataSlide());
		_mvShare.setViewName("admin/slide");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/add-slide")
	public ModelAndView ThemMoiSlide()
	{
		_mvShare.addObject("slide", new Slides());
		_mvShare.setViewName("admin/add_slide");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/AddSlide", method = RequestMethod.POST)
	public ModelAndView ThemMoiSlide(@ModelAttribute("slide") Slides slide)
	{
		slideService.AddSlide(slide);
		
//		 	try 
//		 	{
//	            File path = new File("C:\\Users\\quan\\eclipse-workspace\\DiamonShop\\src\\main\\webapp\\assets\\user\\img\\slide\\" + file.getOriginalFilename());
//	            path.createNewFile();
//	            FileOutputStream output = new FileOutputStream(path);
//	            output.write(file.getBytes());
//	            output.close();
//	           
//	        } 
//		 	catch(Exception ex)
//			{
//				ex.printStackTrace();
//			}
////		String path = application.getRealPath("/assets/user/img/slide/");
////		System.out.print("Path: "+path);
////		if(!slide.getImageFile().isEmpty())
////		{
//			
//			String path = application.getRealPath("/");
//			System.out.print("Path: "+path);
//			try
//			{
//				slide.setImageUrl(slide.getImageFile().getOriginalFilename());
//				
//				String filePath = path + "/assets/user/img/slide/" + slide.getImageUrl();
//				
//				Path paths = Paths.get(filePath);
//				
//				slide.getImageFile().transferTo(paths);
//				
//				slide.setImageFile(null);
//			}
//			catch(Exception ex)
//			{
//				ex.printStackTrace();
//			}
////			System.out.print("Caption: "+slide.getCaption());
////			System.out.print("Content: "+slide.getContent());
////			System.out.print("Image: "+slide.getImg());
////		}
		
		
		
		_mvShare.setViewName("admin/add_slide");
		return _mvShare;
	}
	
	@RequestMapping(value = "/quan-ly/delete-slide/{id}")
	public ModelAndView XoaSlide(@PathVariable int id)
	{
		slideService.DeleteSlide(id);
		_mvShare.setViewName("redirect:/quan-ly/slide");
		return _mvShare;
	}
	
	//Quan Ly Tai Khoan
	@RequestMapping(value = "/quan-ly/account")
	public ModelAndView TaiKhoan()
	{
		_mvShare.addObject("users", _homeService.GetDataUser());
		_mvShare.setViewName("admin/user");
		return _mvShare;
	}

	@RequestMapping(value = "/quan-ly/delete-account/{id}")
	public ModelAndView XoaTaiKhoan(@PathVariable long id)
	{
		accountService.DeleteUser(id);
		_mvShare.setViewName("redirect:/quan-ly/account");
		return _mvShare;
	}
	
	@RequestMapping(value="/quan-ly/add-account", method = RequestMethod.GET)
	public ModelAndView Register()
	{
		_mvShare.setViewName("admin/add_account");
		_mvShare.addObject("user", new Users());
		return _mvShare;
	}
	
	@RequestMapping(value="/quan-ly/dang-ky", method = RequestMethod.POST)
	public ModelAndView CreateAcc(@ModelAttribute("user") Users user)
	{
		int count = accountService.AddAcount(user);
		if(count > 0)
		{
			_mvShare.addObject("status", "Đăng ký tài khoản thành công!");
		}
		else
		{
			_mvShare.addObject("status", "Đăng ký tài khoản thất bại!");
		}
		
		_mvShare.setViewName("admin/add_account");
		return _mvShare;
	}
	
}
