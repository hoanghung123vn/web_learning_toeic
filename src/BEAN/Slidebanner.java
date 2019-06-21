package BEAN;

public class Slidebanner {
	private int id;
	private String title;
	private String content;
	private String image_path;
	
	public Slidebanner(String title, String content, String image_path) {
		this.title = title;
		this.content = content;
		this.image_path = image_path;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getTitle() {
		return title;
	}
	public void setTitle(String title) {
		this.title = title;
	}
	public String getContent() {
		return content;
	}
	public void setContent(String content) {
		this.content = content;
	}
	public String getImage_path() {
		return image_path;
	}
	public void setImage_path(String image_path) {
		this.image_path = image_path;
	}
}
