package Roogle;

public class Roogle_info_DTO {
	
	private String info_name, info_data, info_habitat, info_breeding;
	
	public Roogle_info_DTO() {}
	
	public Roogle_info_DTO(String info_name, String info_data, String info_habitat, String info_breeding) {
		super();
		this.info_name = info_name;
		this.info_data = info_data;
		this.info_habitat = info_habitat;
		this.info_breeding = info_breeding;
	}

	public String getInfo_name() {
		return info_name;
	}

	public void setInfo_name(String info_name) {
		this.info_name = info_name;
	}

	public String getInfo_data() {
		return info_data;
	}

	public void setInfo_data(String info_data) {
		this.info_data = info_data;
	}

	public String getInfo_habitat() {
		return info_habitat;
	}

	public void setInfo_habitat(String info_habitat) {
		this.info_habitat = info_habitat;
	}

	public String getInfo_breeding() {
		return info_breeding;
	}

	public void setInfo_breeding(String info_breeding) {
		this.info_breeding = info_breeding;
	}
	
}
