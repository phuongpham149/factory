package model.bo;

import model.bean.User;
import model.dao.UserDAO;

public class UserBO {
	UserDAO userDAO = new UserDAO();
	
	public User getUserByUsernamePassword(String id, String password){
		return userDAO.getUserByUsernamePassword(id,password);
	}
	
	
}
