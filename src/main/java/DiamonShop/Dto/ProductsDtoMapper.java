package DiamonShop.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class ProductsDtoMapper implements RowMapper<ProductsDto>{

	public ProductsDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		ProductsDto products = new ProductsDto();
		products.setId_product(rs.getLong("id_product"));
		products.setId_category(rs.getInt("id_category"));
		products.setName(rs.getString("name"));
		products.setPrice(rs.getDouble("price"));
		products.setSale(rs.getInt("sale"));
		products.setYear(rs.getString("year"));
		products.setHighlight(rs.getBoolean("highlight"));
		products.setNew_product(rs.getBoolean("new_product"));
		products.setDetails(rs.getString("details"));
		products.setScreen(rs.getString("screen"));
		products.setSoftware(rs.getString("software"));
		products.setCamera_sau(rs.getString("camera_sau"));
		products.setCamera_truoc(rs.getString("camera_truoc"));
		products.setChip(rs.getString("chip"));
		products.setRam(rs.getString("ram"));
		products.setRom(rs.getString("rom"));
		products.setSim(rs.getString("sim"));
		products.setPin(rs.getString("pin"));
		products.setLink(rs.getString("link"));
		products.setId_color(rs.getLong("id_color"));
		products.setName_color(rs.getString("name_color"));
		products.setImg(rs.getString("img"));
		return products;
	}
	
}
