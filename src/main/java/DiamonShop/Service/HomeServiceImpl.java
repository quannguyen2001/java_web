package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.BillsDao;
import DiamonShop.Dao.CategorysDao;
import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dao.SlidesDao;
import DiamonShop.Dao.UsersDao;
import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Bills;
import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.Slides;
import DiamonShop.Entity.Users;

@Service
public class HomeServiceImpl implements IHomeService {
	@Autowired
	private SlidesDao slidesDao;

	@Autowired
	private CategorysDao categoryDao;
	
	@Autowired
	private ProductsDao productsDao;
	
	@Autowired
	private UsersDao usersDao;
	
	@Autowired
	private BillsDao billsDao;

	public List<Slides> GetDataSlide() {

		return slidesDao.GetDataSlide();
	}

	public List<Categorys> GetDataCategorys() {

		return categoryDao.GetDataCategorys();
	}

	public List<ProductsDto> GetDataProducts() {
		List<ProductsDto> listProducts = productsDao.GetDataProducts();
		return listProducts;
	}

	public List<Users> GetDataUser() {
		return usersDao.GetDataUsers();
	}

	public List<Bills> GetDataOrder() {
		
		return billsDao.GetDataOrders();
	}
	
	

}
