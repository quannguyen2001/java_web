package DiamonShop.Service;

import java.util.List;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;

@Service
public interface IProductService {
	public ProductsDto GetProductByID(long id);
	
	public List<ProductsDto> GetProductByIDCategory(int id);
	
	public List<ProductsDto> GetProduct();
	
	public List<ProductsDto> GetAllDataProducts(int start, int totalPage);
	
	public List<ProductsDto> GetProductsByName(String name);
	
	public List<ProductsDto> GetDataProductByNamePaginate(String name,int start, int totalPage);
	
	public int CountProduct();
	
	public int AddProduct(ProductsDto product);
	
	public int DeleteProduct(long id);

}
