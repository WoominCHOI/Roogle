package Roogle;

public class LoginDTO {
	private String id;			// 아이디
	private String pwd;		// 비밀번호
	private String name;		// 이름
	private String phone;	// 핸드폰 번호
	private String email;		// 이메일 주소
	private String addr;		// 거주지
	
	// 기본 생성자
	public LoginDTO() {}
	
	// addr (주소) 제외하고 모두 받는 생성자 
	public LoginDTO(String id, String pwd, String name, String phone, String email) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.email = email;
	}
	
	// 모든 정보를 받는 생성자
	public LoginDTO(String id, String pwd, String name, String phone, String email, String addr) {
		super();
		this.id = id;
		this.pwd = pwd;
		this.name = name;
		this.phone = phone;
		this.email = email;
		this.addr = addr;
	}

	public String getId() {
		return id;
	}

	public void setId(String id) {
		this.id = id;
	}

	public String getPwd() {
		return pwd;
	}

	public void setPwd(String pwd) {
		this.pwd = pwd;
	}

	public String getName() {
		return name;
	}

	public void setName(String name) {
		this.name = name;
	}

	public String getPhone() {
		return phone;
	}

	public void setPhone(String phone) {
		this.phone = phone;
	}

	public String getEmail() {
		return email;
	}

	public void setEmail(String email) {
		this.email = email;
	}

	public String getAddr() {
		return addr;
	}

	public void setAddr(String addr) {
		this.addr = addr;
	}
	
	
}
