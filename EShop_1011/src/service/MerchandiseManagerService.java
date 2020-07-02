package service;

import java.util.List;

import dao.MerchandiseDAO;

import po.CategoryPO;
import po.MerchandisePO;

public class MerchandiseManagerService {
	public List<CategoryPO> getCategoryList(){
		MerchandiseDAO merchandiseDAO = new MerchandiseDAO();
		return merchandiseDAO.findCategoryList();
	}

	public List<MerchandisePO> getMerchandiseList(int special) {
		MerchandiseDAO merchandiseDAO = new MerchandiseDAO();
		return merchandiseDAO.findMerchandiseList(special);
	}

	public MerchandisePO getMerById(String id) {
		MerchandiseDAO merchandiseDAO = new MerchandiseDAO();
		int int_id=Integer.parseInt(id);
		return MerchandiseDAO.findMerById(int_id);
	}
		
	
}
