package DiamonShop.Service;

import DiamonShop.Entity.Users;

public interface IAccountService {
	public int AddAcount(Users user);
	
	public Users CheckAccount(Users user);
	
	public int CountUser();
	
	public int DeleteUser(long id);
	
}
