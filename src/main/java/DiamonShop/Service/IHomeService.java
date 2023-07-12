package DiamonShop.Service;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Service;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Entity.Bills;
import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.Slides;
import DiamonShop.Entity.Users;
@Service
public interface IHomeService {
	@Autowired
	public List<Slides> GetDataSlide();
	public List<Categorys> GetDataCategorys();
	public List<ProductsDto> GetDataProducts();
	public List<Users> GetDataUser();
	public List<Bills> GetDataOrder();
}
