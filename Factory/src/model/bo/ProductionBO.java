package model.bo;

import model.bean.Production;
import model.dao.ProductionDAO;

public class ProductionBO {
	ProductionDAO productionDAO = new ProductionDAO();
	
	public Production getProductionByUsernamePassword(String id, String password){
		return productionDAO.getProductionByUsernamePassword(id,password);
	}

}
