package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.CategorysDao;
import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Categorys;

@Service
public class CategoryServiceImpl implements ICategoryService {
	@Autowired
	private ProductsDao productDao;
	
	@Autowired
	private CategorysDao categoryDao;
	

	public List<ProductsDto> GetAllProductsByID(int id) {

		return productDao.GetAllProductsByID(id);
	}

	public List<ProductsDto> GetDataProductPaginate(int id, int start, int totalPage) {

		return productDao.GetDataProductsPaginate(id, start, totalPage);
	}
	
	public int AddCategory(Categorys category) {
		
		return categoryDao.AddCategory(category);
	}

	public int DeleteCategory(int id) {
		
		return categoryDao.DeleteCategory(id);
	}

	public Categorys GetCategoryByID(int id) {
		
		return categoryDao.GetCategoryByID(id);
	}

	public int UpdateCategory(Categorys category) {
		
		return categoryDao.UpdateCategory(category);
	}

	public int CountCategory() {
		
		return categoryDao.CountCategory();
	}

	

}
