package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Dto.BillDto;
import DiamonShop.Dto.BillDtoMapper;
import DiamonShop.Entity.BillDetail;
import DiamonShop.Entity.Bills;
import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.MapperBills;

@Repository
public class BillsDao extends BaseDao{
	public int AddBills(Bills bill)
	{
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO bills ");
		sql.append("( ");
		sql.append("  user, phone, display_name, address, note ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+bill.getUser()+"', ");
		sql.append("    '"+bill.getPhone()+"', ");
		sql.append("    '"+bill.getDisplay_name()+"', ");
		sql.append("    '"+bill.getAddress()+"', ");
		sql.append("    '"+bill.getNote()+"' ");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	
	public long GetIDLastBills()
	{
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT MAX(id) FROM bills;");
		long id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Long.class);
		return id;
	};
	
	public int AddBillsDetail(BillDetail billDetail)
	{
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT INTO billdetail ");
		sql.append("( ");
		sql.append("    id_product, ");
		sql.append("    id_bills, ");
		sql.append("    quanty, ");
		sql.append("    total ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("    '"+billDetail.getId_product()+"', ");
		sql.append("    '"+billDetail.getId_bills()+"', ");
		sql.append("    '"+billDetail.getQuanty()+"', ");
		sql.append("    '"+billDetail.getTotal()+"' ");
		sql.append(");");
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
		
	}
	
	public List<Bills> GetDataOrders()
	{
		List<Bills> list = new ArrayList<Bills>();
		String sql = "SELECT * FROM bills";
		list = _jdbcTemplate.query(sql, new MapperBills());
		return list;
	}
	
	public int CountBill()
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT COUNT(id) FROM bills;");
		int id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return id;
	};
	
	public int SumAllBill()
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT SUM(total) FROM billdetail;");
		int id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return id;
	};
	
	private StringBuffer SqlString()
	{
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append(" p.id ");
		sql.append(", p.id_product ");
		sql.append(", c.name ");
		sql.append(", c.price ");
		sql.append(", p.quanty ");
		sql.append("FROM ");
		sql.append("billdetail AS p ");
		sql.append("INNER JOIN ");
		sql.append("products AS c ");
		sql.append("ON p.id_product = c.id ");
		
		return sql;
	}
	
	private String SqlBillByID(long id)
	{
		StringBuffer sql = SqlString();
		sql.append("WHERE p.id_bills = '"+ id +"' ");
		sql.append("GROUP BY p.id_product ");
		sql.append("ORDER BY p.id_product ");
		return sql.toString();
	}
	
	public List<BillDto> GetAllBillDetailByID(long id)
	{
		String sql = SqlBillByID(id).toString();
		List<BillDto> listProducts = _jdbcTemplate.query(sql, new BillDtoMapper());
	    return listProducts;
	}
	
	public int UpdateBill(long id)
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE bills ");
		sql.append("SET ");
		sql.append(" status = '1' ");
		sql.append("WHERE ");
		sql.append(" id = '"+ id +"' ");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;	
	};
	
	public int DeleteBill(long id)
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("DELETE ");
		sql.append("FROM bills ");
		sql.append("WHERE ");
		sql.append("id = '"+ id +"' ");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;	
	};
	
	public int SumBill(long id)
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT SUM(total) FROM `billdetail` WHERE id_bills='"+ id + "';");
		int insert = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return insert;
	};
	
	public int CountProductOnBill(long id)
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT SUM(quanty) FROM `billdetail` WHERE id_bills='"+ id+ "';");
		int insert = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return insert;
	};
}
