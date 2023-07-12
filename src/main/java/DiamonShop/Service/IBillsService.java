package DiamonShop.Service;

import java.util.HashMap;
import java.util.List;

import org.springframework.stereotype.Service;

import DiamonShop.Dto.BillDto;
import DiamonShop.Dto.CartDto;
import DiamonShop.Entity.Bills;
@Service
public interface IBillsService {
	public int AddBills(Bills bill);
	
	public void AddBillsDetail(HashMap<Long, CartDto> carts);
	
	public int DeleteBill(long id);
	
	public int CountBill();
	
	public int SumAllBill();
	
	public List<BillDto> GetAllBiDetailByID(long id);
	
	public int UpdateBill(long id);
	
	public int SumBill(long id);
	
	public int CountProductOnBill(long id);
}
