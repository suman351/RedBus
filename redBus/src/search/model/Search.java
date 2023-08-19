package search.model;

public class Search {
	protected int id;
    protected String name;
    protected String origin;
    protected String destination;
    protected String email;
    protected int age;
	public Search() {
		
	}
	public Search(String name, String origin, String destination,String email, int age) {
		super();
		this.name = name;
		this.origin = origin;
		this.destination = destination;
		this.email=email;
		this.age=age;
	}
	public Search(int id, String name, String origin, String destination,String email, int age) {
		super();
		this.id = id;
		this.name = name;
		this.origin = origin;
		this.destination = destination;
		this.email=email;
		this.age=age;
	}
	public int getId() {
		return id;
	}
	public void setId(int id) {
		this.id = id;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public String getOrigin() {
		return origin;
	}
	public void setOrigin(String origin) {
		this.origin = origin;
	}
	public String getDestination() {
		return destination;
	}
	public void setDestination(String destination) {
		this.destination = destination;
	}
	
	public String getEmail() {
		return email;
	}
	public void setEmail(String email) {
		this.email = email;
	}
	public int getAge() {
		return age;
	}
	public void setAge(int age) {
		this.age = age;
	}

    
}
