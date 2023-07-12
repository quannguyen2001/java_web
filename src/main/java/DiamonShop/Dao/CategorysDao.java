package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.Categorys;
import DiamonShop.Entity.MapperCategorys;
@Repository
public class CategorysDao extends BaseDao{
	
	public List<Categorys> GetDataCategorys()
	{
		List<Categorys> list = new ArrayList<Categorys>();
		String sql = "SELECT * FROM categorys";
		list = _jdbcTemplate.query(sql, new MapperCategorys());
		return list;
	}
	
	public int AddCategory(Categorys category)
	{
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO categorys ");
		sql.append("( ");
		sql.append("   name, ");
		sql.append("   description ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("   '"+category.getName()+"', ");
		sql.append("   '"+category.getDescription()+"' ");
		sql.append(")");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	
	public int UpdateCategory(Categorys category)
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("UPDATE categorys ");
		sql.append("SET ");
		sql.append(" name =   '"+category.getName()+"', ");
		sql.append(" description =   '"+category.getDescription()+"' ");
		sql.append("WHERE ");
		sql.append(" id = '"+ category.getId() +"' ");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;	
	};
	
	
	public Categorys GetCategoryByID(int id)
	{	
		String sql = "SELECT * FROM categorys WHERE id = '"+ id +"'";
		Categorys result = _jdbcTemplate.queryForObject(sql, new MapperCategorys());
		return result;
	};
	
	public int CountCategory()
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT COUNT(id) FROM categorys;");
		int id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return id;
	};
	
	public int DeleteCategory(int id)
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("DELETE ");
		sql.append("FROM categorys ");
		sql.append("WHERE ");
		sql.append("id = '"+ id +"' ");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;	
	};
}
