package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.MapperSlides;
import DiamonShop.Entity.Slides;

@Repository
public class SlidesDao extends BaseDao{
	
	public List<Slides> GetDataSlide(){
		
		List<Slides> list = new ArrayList<Slides>();
		String sql = "SELECT * FROM slides";
		list = _jdbcTemplate.query(sql, new MapperSlides());
		return list;
	}
	
	public int CountSlide()
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT COUNT(id) FROM slides;");
		int id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return id;
	};
	
	public int AddSlide(Slides slide)
	{
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO slides ");
		sql.append("( ");
		sql.append("   img, ");
		sql.append("   caption, ");
		sql.append("   content ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("   '"+slide.getImg()+"', ");
		sql.append("   '"+slide.getCaption()+"', ");
		sql.append("   '"+slide.getContent()+"' ");
		sql.append(")");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	
	public int DeleteSlide(int id)
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("DELETE ");
		sql.append("FROM slides ");
		sql.append("WHERE ");
		sql.append("id = '"+ id +"' ");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;	
	};
	
}
