package DiamonShop.Entity;

import java.sql.ResultSet;
import java.sql.SQLException;

import org.springframework.jdbc.core.RowMapper;

public class MapperBills implements RowMapper<Bills>{

	public Bills mapRow(ResultSet rs, int rowNum) throws SQLException {
		Bills bills = new Bills();
		bills.setId(rs.getLong("id"));
		bills.setUser(rs.getString("user"));
		bills.setPhone(rs.getString("phone"));
		bills.setDisplay_name(rs.getString("display_name"));
		bills.setAddress(rs.getString("address"));
		bills.setNote(rs.getString("note"));
		bills.setStatus(rs.getBoolean("status"));
		return bills;
	}

}