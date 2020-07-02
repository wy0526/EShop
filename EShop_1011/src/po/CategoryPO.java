package po;
/**
 * 数据表对应
 * @author Administrator
 *
 */
public class CategoryPO {
	private String id;
	private String cateName;
	private String cateDesc;
	//默认构造器
	public CategoryPO(){}
	//全参数构造器
	public CategoryPO(String id, String cateName, String cateDesc) {
		this.id = id;
		this.cateName = cateName;
		this.cateDesc = cateDesc;
	}
	public String getId() {
		return id;
	}
	public void setId(String id) {
		this.id = id;
	}
	public String getCateName() {
		return cateName;
	}
	public void setCateName(String cateName) {
		this.cateName = cateName;
	}
	public String getCateDesc() {
		return cateDesc;
	}
	public void setCateDesc(String cateDesc) {
		this.cateDesc = cateDesc;
	}
	
}
