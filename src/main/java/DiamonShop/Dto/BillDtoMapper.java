package DiamonShop.Dto;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class BillDtoMapper  implements RowMapper<BillDto>{

	public BillDto mapRow(ResultSet rs, int rowNum) throws SQLException {
		BillDto bill = new BillDto();
		bill.setId(rs.getLong("id"));
		bill.setId_product(rs.getLong("id_product"));
		bill.setName(rs.getString("name"));
		bill.setPrice(rs.getDouble("price"));
		bill.setQuanty(rs.getInt("quanty"));
		return bill;
	}

}
