package bean;

public class BirthBean {
	private int birth_id,patent_id;
	private String name_child,gender,dob,weight,birth_place, father_name,phone_no;
	
	public  BirthBean() {
		
	}

	public int getBirth_id() {
		return birth_id;
	}

	public void setBirth_id(int birth_id) {
		this.birth_id = birth_id;
	}

	public int getPatent_id() {
		return patent_id;
	}

	public void setPatent_id(int patent_id) {
		this.patent_id = patent_id;
	}

	public String getName_child() {
		return name_child;
	}

	public void setName_child(String name_child) {
		this.name_child = name_child;
	}

	public String getGender() {
		return gender;
	}

	public void setGender(String gender) {
		this.gender = gender;
	}

	public String getDob() {
		return dob;
	}

	public void setDob(String dob) {
		this.dob = dob;
	}

	public String getWeight() {
		return weight;
	}

	public void setWeight(String weight) {
		this.weight = weight;
	}

	public String getBirth_place() {
		return birth_place;
	}

	public void setBirth_place(String birth_place) {
		this.birth_place = birth_place;
	}



	public String getFather_name() {
		return father_name;
	}

	public void setFather_name(String father_name) {
		this.father_name = father_name;
	}

	public String getPhone_no() {
		return phone_no;
	}

	public void setPhone_no(String phone_no) {
		this.phone_no = phone_no;
	}

}
