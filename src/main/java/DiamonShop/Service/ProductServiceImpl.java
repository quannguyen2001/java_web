package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dao.ProductsDao;
import DiamonShop.Dto.ProductsDto;
@Service
public class ProductServiceImpl implements IProductService{
	@Autowired
	ProductsDao productDao = new ProductsDao();
	
	public ProductsDto GetProductByID(long id) {
		List<ProductsDto> listProducts = productDao.GetProductByID(id);
		return listProducts.get(0);
	}

	public List<ProductsDto> GetProductByIDCategory(int id) {
		
		return productDao.GetAllProductsByID(id);
	}
	
	//
	public List<ProductsDto> GetProduct() {
		
		return  productDao.GetProduct();
	}
	
	public List<ProductsDto> GetAllDataProducts(int start, int totalPage) {

		return productDao.GetAllDataProducts(start,totalPage);
	}

	public List<ProductsDto> GetProductsByName(String name) {
		
		return productDao.GetProductByName(name);
	}

	public List<ProductsDto> GetDataProductByNamePaginate(String name, int start, int totalPage) {
		
		return productDao.GetDataProductsByNamePaginate(name, start, totalPage);
	}

	public int CountProduct() {
		
		return productDao.CountProduct();
	}

	@Override
	public int AddProduct(ProductsDto product) {
		
		return productDao.AddProduct(product);
	}

	@Override
	public int DeleteProduct(long id) {
		
		return productDao.DeleteProduct(id);
	}


}
