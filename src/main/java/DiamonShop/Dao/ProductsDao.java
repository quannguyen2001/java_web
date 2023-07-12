package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Dto.ProductsDto;
import DiamonShop.Dto.ProductsDtoMapper;
@Repository
public class ProductsDao extends BaseDao{
	
	private final boolean YES = true; 
	private final boolean NO = false;  
	private StringBuffer SqlString()
	{
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT ");
		sql.append("p.id as id_product ");
		sql.append(", p.id_category ");
		sql.append(", p.name ");
		sql.append(", p.price ");
		sql.append(", p.sale ");
		sql.append(", p.year ");
		sql.append(", p.highlight ");
		sql.append(", p.new_product ");
		sql.append(", p.details ");
		sql.append(", p.screen ");
		sql.append(", p.software ");
		sql.append(", p.camera_sau ");
		sql.append(", p.camera_truoc ");
		sql.append(", p.chip ");
		sql.append(", p.ram ");
		sql.append(", p.rom ");
		sql.append(", p.sim ");
		sql.append(", p.pin ");
		sql.append(", p.link ");
		sql.append(", c.id as id_color ");
		sql.append(", c.name as name_color ");
		sql.append(", c.img ");
		sql.append("FROM ");
		sql.append("products AS p ");
		sql.append("INNER JOIN ");
		sql.append("colors AS c ");
		sql.append("ON p.id = c.id_product ");
		
		return sql;
	}
	
	private String SqlProducts(boolean newProduct, boolean highlight)
	{
		StringBuffer sql = SqlString();
		//sql.append("WHERE 1 = 1");
		if(highlight)
		{
			sql.append("WHERE p.highlight = true ");
		}
		if(newProduct)
		{
			sql.append("AND P.new_product = true ");
		}
		
		sql.append("GROUP BY p.id,c.id_product ");
		sql.append("ORDER BY RAND() ");
		
		if(highlight)
		{
			sql.append("LIMIT 9 ");
		}
		if(newProduct)
		{
			sql.append("LIMIT 12 ");
		}
		return sql.toString();
	}
	
	//
	private String SqlAllProducts()
	{
		StringBuffer sql = SqlString();
		sql.append("GROUP BY p.id,c.id_product ");
		sql.append("ORDER BY p.id ASC ");
		return sql.toString();
	}
	
	private StringBuffer SqlProductsByID(int id)
	{
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND id_category = "+ id + " ");
		
		return sql;
	}
	
	private String SqlProductsPaginate(int id, int start, int totalPage)
	{
		StringBuffer sql = SqlProductsByID(id);
		sql.append("LIMIT " + start + " , " + totalPage);
		
		return sql.toString();
	}
	
	private String SqlProductByID(long id)
	{
		StringBuffer sql = SqlString();
		sql.append("WHERE 1 = 1 ");
		sql.append("AND p.id = "+ id + " ");
		sql.append("LIMIT 1 ");
		return sql.toString();
	}
	
	private String SqlAllProductsPaginate(int start, int totalPage)
	{
		StringBuffer sql = SqlString();
		sql.append("LIMIT " + start + " , " + totalPage);
		
		return sql.toString();
	}
	
	private String SqlSearchProducts(String name)
	{
		StringBuffer sql = SqlString();
		sql.append("WHERE p.name LIKE '%"+ name +"%' ");
		return sql.toString();
	}
	
	
	private String SqlSearchProducts(String name, int start, int totalPage)
	{
		StringBuffer sql = SqlString();
		sql.append("WHERE p.name LIKE '%"+ name +"%' ");
		sql.append("LIMIT " + start + " , " + totalPage);
		return sql.toString();
	}
	
	public List<ProductsDto> GetDataProducts(){
		String sql = SqlProducts(YES,NO);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
	    return listProducts;
	}
	
	public List<ProductsDto> GetAllProductsByID(int id){
		String sql = SqlProductsByID(id).toString();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
	    return listProducts;
	}
	
	public List<ProductsDto> GetDataProductsPaginate(int id,int start, int totalPage){
		StringBuffer sqlGetDataByID = SqlProductsByID(id);
		List<ProductsDto> listProductsByID = _jdbcTemplate.query(sqlGetDataByID.toString(), new ProductsDtoMapper());
		List<ProductsDto> listProducts = new ArrayList<ProductsDto>();
		
		if(listProductsByID.size() > 0)
		{
			String sql = SqlProductsPaginate(id, start, totalPage);
			listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		}
		
		
	    return listProducts;
	}

	
	public List<ProductsDto> GetProductByID(long id) {
		String sql = SqlProductByID(id);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public ProductsDto FindProductByID(long id) {
		String sql = SqlProductByID(id);
		ProductsDto product = _jdbcTemplate.queryForObject(sql, new ProductsDtoMapper());
		return product;
	}
	
	
	public int AddProduct(ProductsDto product)
	{
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO products ");
		sql.append("( ");
		sql.append("   name, ");
		sql.append("   price, ");
		sql.append("   sale, ");
		sql.append("   year, ");
		sql.append("   highlight, ");
		sql.append("   new_product, ");
		sql.append("   details, ");
		sql.append("   screen, ");
		sql.append("   software, ");
		sql.append("   camera_sau, ");
		sql.append("   camera_truoc, ");
		sql.append("   chip, ");
		sql.append("   ram, ");
		sql.append("   rom, ");
		sql.append("   sim, ");
		sql.append("   pin, ");
		sql.append("   link ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("   '"+product.getName()+"', ");
		sql.append("   '"+product.getPrice()+"', ");
		sql.append("   '"+product.getSale()+"', ");
		sql.append("   '"+product.getYear()+"', ");
		sql.append("   '"+product.isHighlight()+"', ");
		sql.append("   '"+product.isNew_product()+"', ");
		sql.append("   '"+product.getDetails()+"', ");
		sql.append("   '"+product.getScreen()+"', ");
		sql.append("   '"+product.getSoftware()+"', ");
		sql.append("   '"+product.getCamera_sau()+"', ");
		sql.append("   '"+product.getCamera_truoc()+"', ");
		sql.append("   '"+product.getChip()+"', ");
		sql.append("   '"+product.getRam()+"', ");
		sql.append("   '"+product.getRom()+"', ");
		sql.append("   '"+product.getSim()+"', ");
		sql.append("   '"+product.getPin()+"', ");
		sql.append("   '"+product.getLink()+"' ");
		sql.append(")");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	
	public int DeleteProduct(long id)
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("DELETE ");
		sql.append("FROM products ");
		sql.append("WHERE ");
		sql.append("id = '"+ id +"' ");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;	
	};
	
	//All Product
	public List<ProductsDto> GetProduct() {
		String sql = SqlAllProducts();
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDto> GetAllDataProducts(int start, int totalPage)
	{
		String sql = SqlAllProductsPaginate(start, totalPage);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	//Search Product
	public List<ProductsDto> GetProductByName(String name) {
		String sql = SqlSearchProducts(name);
		List<ProductsDto> listProducts = _jdbcTemplate.query(sql, new ProductsDtoMapper());
		return listProducts;
	}
	
	public List<ProductsDto> GetDataProductsByNamePaginate(String name, int start, int totalPage){
		String sqlGetDataByName = SqlSearchProducts(name, start, totalPage);
		List<ProductsDto> listProductsByName = _jdbcTemplate.query(sqlGetDataByName, new ProductsDtoMapper());	
	    return listProductsByName;
	}
	
	//Count Product
	public int CountProduct()
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT COUNT(id) FROM products;");
		int id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return id;
	};
	
}
