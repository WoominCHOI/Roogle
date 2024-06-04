package Roogle;

public class Roogle_DTO {
	private String api_name , api_species , api_ename , api_sname , api_photo , api_life , api_size;
	
	public Roogle_DTO() {};

	public Roogle_DTO(String api_name, String api_species, String api_ename, String api_sname, String api_photo,
			String api_life, String api_size) {
		super();
		this.api_name = api_name;
		this.api_species = api_species;
		this.api_ename = api_ename;
		this.api_sname = api_sname;
		this.api_photo = api_photo;
		this.api_life = api_life;
		this.api_size = api_size;
	}

	public String getApi_name() {
		return api_name;
	}

	public void setApi_name(String api_name) {
		this.api_name = api_name;
	}

	public String getApi_species() {
		return api_species;
	}

	public void setApi_species(String api_species) {
		this.api_species = api_species;
	}

	public String getApi_ename() {
		return api_ename;
	}

	public void setApi_ename(String api_ename) {
		this.api_ename = api_ename;
	}

	public String getApi_sname() {
		return api_sname;
	}

	public void setApi_sname(String api_sname) {
		this.api_sname = api_sname;
	}

	public String getApi_photo() {
		return api_photo;
	}

	public void setApi_photo(String api_photo) {
		this.api_photo = api_photo;
	}

	public String getApi_life() {
		return api_life;
	}

	public void setApi_life(String api_life) {
		this.api_life = api_life;
	}

	public String getApi_size() {
		return api_size;
	}

	public void setApi_size(String api_size) {
		this.api_size = api_size;
	}
	
	
}
