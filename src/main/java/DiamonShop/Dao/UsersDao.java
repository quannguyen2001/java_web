package DiamonShop.Dao;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Repository;

import DiamonShop.Entity.MapperUsers;
import DiamonShop.Entity.Users;

@Repository
public class UsersDao extends BaseDao{
	public int AddAccount(Users user)
	{
		StringBuffer sql = new StringBuffer();
		sql.append("INSERT ");
		sql.append("INTO users ");
		sql.append("( ");
		sql.append("   user, ");
		sql.append("   password, ");
		sql.append("   display_name, ");
		sql.append("   address ");
		sql.append(") ");
		sql.append("VALUES ");
		sql.append("( ");
		sql.append("   '"+user.getUser()+"', ");
		sql.append("   '"+user.getPassword()+"', ");
		sql.append("   '"+user.getDisplay_name()+"', ");
		sql.append("   '"+user.getAddress()+"' ");
		sql.append(")");
		
		int insert = _jdbcTemplate.update(sql.toString());
		return insert;
	};
	
	public Users GetUserByAcc(Users user)
	{	
		String sql = "SELECT * FROM users WHERE user = '"+user.getUser()+"'";
		Users result = _jdbcTemplate.queryForObject(sql, new MapperUsers());
		return result;
	};
	
	public List<Users> GetDataUsers() {
		List<Users> list = new ArrayList<Users>();
		String sql = "SELECT * FROM users";
		list = _jdbcTemplate.query(sql, new MapperUsers());
		return list;
	}
	
	public int CountUser()
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("SELECT COUNT(id) FROM users;");
		int id = _jdbcTemplate.queryForObject(sql.toString(), new Object[] {}, Integer.class);
		return id;
	};
	
	public int DeleteUser(long id)
	{	
		StringBuffer sql = new StringBuffer();
		sql.append("DELETE ");
		sql.append("FROM users ");
		sql.append("WHERE ");
		sql.append("id = '"+ id +"' ");

		int insert = _jdbcTemplate.update(sql.toString());
		return insert;	
	};
}

