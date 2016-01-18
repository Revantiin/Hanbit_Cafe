package mypkg.cafe.bean;

public class MenuBean {
	private int 	no;			// ��ǰ��ȣ
	private String 	name;		// ��ǰ��
	private int		price;		// ����
	private String	category;	// ī�װ�
	private String	image;		// �̹���
	private String	desc;		// ��ǰ ����
	private int		weight;		// ����
	private String	size;		// ��ǰ ũ��
	private int 	calories;	// Į�θ�
	private int		carbs;		// ���
	private int 	proteins;	// �ܹ���
	private int 	fat;		// ����
	private int 	sodium;		// ��Ʈ��
	
	public MenuBean() {
		
	}

	public int getNo() {
		return no;
	}


	public void setNo(int no) {
		this.no = no;
	}


	public String getName() {
		return name;
	}


	public void setName(String name) {
		this.name = name;
	}


	public int getPrice() {
		return price;
	}


	public void setPrice(int price) {
		this.price = price;
	}


	public String getCategory() {
		return category;
	}


	public void setCategory(String category) {
		this.category = category;
	}


	public String getImage() {
		return image;
	}


	public void setImage(String image) {
		this.image = image;
	}


	public String getDesc() {
		return desc;
	}


	public void setDesc(String desc) {
		this.desc = desc;
	}


	public int getWeight() {
		return weight;
	}


	public void setWeight(int weight) {
		this.weight = weight;
	}


	public String getSize() {
		return size;
	}


	public void setSize(String size) {
		this.size = size;
	}


	public int getCalories() {
		return calories;
	}


	public void setCalories(int calories) {
		this.calories = calories;
	}


	public int getCarbs() {
		return carbs;
	}


	public void setCarbs(int carbs) {
		this.carbs = carbs;
	}


	public int getProteins() {
		return proteins;
	}


	public void setProteins(int proteins) {
		this.proteins = proteins;
	}


	public int getFat() {
		return fat;
	}


	public void setFat(int fat) {
		this.fat = fat;
	}


	public int getSodium() {
		return sodium;
	}


	public void setSodium(int sodium) {
		this.sodium = sodium;
	}

	@Override
	public String toString() {
		return "MenuBean [no=" + no + ", name=" + name + ", price=" + price
				+ ", category=" + category + ", image=" + image
				+ ", description=" + desc + ", weight=" + weight
				+ ", size=" + size + ", calories=" + calories + ", carbs="
				+ carbs + ", proteins=" + proteins + ", fat=" + fat
				+ ", sodium=" + sodium + "]";
	}
	
}
