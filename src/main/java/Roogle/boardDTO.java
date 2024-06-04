package Roogle;

public class boardDTO {
	private int bod_no;					// 글번호
	private String bod_writer;			// 글쓴이 (id)
	private String bod_title;			// 제목
	private String bod_content;		// 내용
	private String bod_write_time;	// 작성시간
	private int bod_readcnt;			// 조회수
	
	public boardDTO() {}	// 기본 생성자
	
	public boardDTO(int bod_no,String bod_writer, String bod_title, String bod_content, String bod_write_time,
			int bod_readcnt) {
		super();
		this.bod_no = bod_no;
		this.bod_writer = bod_writer;
		this.bod_title = bod_title;
		this.bod_content = bod_content;
		this.bod_write_time = bod_write_time;
		this.bod_readcnt = bod_readcnt;
	}

	public int getBod_no() {
		return bod_no;
	}

	public void setBod_no(int bod_no) {
		this.bod_no = bod_no;
	}

	public String getBod_writer() {
		return bod_writer;
	}

	public void setBod_writer(String bod_writer) {
		this.bod_writer = bod_writer;
	}

	public String getBod_title() {
		return bod_title;
	}

	public void setBod_title(String bod_title) {
		this.bod_title = bod_title;
	}

	public String getBod_content() {
		return bod_content;
	}

	public void setBod_content(String bod_content) {
		this.bod_content = bod_content;
	}

	public String getBod_write_time() {
		return bod_write_time;
	}

	public void setBod_write_time(String bod_write_time) {
		this.bod_write_time = bod_write_time;
	}

	public int getBod_readcnt() {
		return bod_readcnt;
	}

	public void setBod_readcnt(int bod_readcnt) {
		this.bod_readcnt = bod_readcnt;
	}

	
}
