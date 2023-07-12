package DiamonShop.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Categorys;
@Service
public interface ICategoryService {
	
	public List<ProductsDto> GetAllProductsByID(int id);
	
	public List<ProductsDto> GetDataProductPaginate(int id,int start, int totalPage);
	
	public int AddCategory(Categorys category);
	
	public int DeleteCategory(int id);
	
	public Categorys GetCategoryByID(int id);
	
	public int UpdateCategory(Categorys category);
	
	public int CountCategory();
}
