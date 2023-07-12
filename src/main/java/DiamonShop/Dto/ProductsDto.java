package DiamonShop.Dto;

public class ProductsDto {
	private long id_product;
	private int id_category;
	private String name;
	private double price;
	private int sale;
	private String year;
	private boolean highlight;
	private boolean new_product;
	private String details;
	private String screen;
	private String software;
	private String camera_sau;
	private String camera_truoc;
	private String chip;
	private String ram;
	private String rom;
	private String sim;
	private String pin;
	private String link;
	private long id_color;
	private String name_color;
	private String img;
	
	public ProductsDto()
	{
		super();
	}

	public long getId_product() {
		return id_product;
	}
	
	public void setId_product(long id_product) {
		this.id_product = id_product;
	}
	
	public int getId_category() {
		return id_category;
	}
	
	public void setId_category(int id_category) {
		this.id_category = id_category;
	}
	
	public String getName() {
		return name;
	}
	
	public void setName(String name) {
		this.name = name;
	}
	
	public double getPrice() {
		return price;
	}
	
	public void setPrice(double price) {
		this.price = price;
	}
	
	public int getSale() {
		return sale;
	}
	
	public void setSale(int sale) {
		this.sale = sale;
	}
	
	public String getYear() {
		return year;
	}
	
	public void setYear(String year) {
		this.year = year;
	}
	
	public boolean isHighlight() {
        return highlight;
    }

    public void setHighlight(boolean highlight) {
        this.highlight = highlight;
    }
    
    public boolean isNew_product() {
        return new_product;
    }

    public void setNew_product(boolean new_product) {
        this.new_product = new_product;
    }
	
	public String getDetails() {
		return details;
	}
	
	public void setDetails(String details) {
		this.details = details;
	}
	
	public long getId_color() {
		return id_color;
	}
	
	public void setId_color(long id_color) {
		this.id_color = id_color;
	}
	
	public String getName_color() {
		return name_color;
	}
	
	public void setName_color(String name_color) {
		this.name_color = name_color;
	}
	
	
	public String getImg() {
		return img;
	}
	
	public void setImg(String img) {
		this.img = img;
	}
	

	public String getScreen() {
		return screen;
	}

	public void setScreen(String screen) {
		this.screen = screen;
	}

	public String getSoftware() {
		return software;
	}

	public void setSoftware(String software) {
		this.software = software;
	}

	public String getCamera_sau() {
		return camera_sau;
	}

	public void setCamera_sau(String camera_sau) {
		this.camera_sau = camera_sau;
	}

	public String getCamera_truoc() {
		return camera_truoc;
	}

	public void setCamera_truoc(String camera_truoc) {
		this.camera_truoc = camera_truoc;
	}

	public String getChip() {
		return chip;
	}

	public void setChip(String chip) {
		this.chip = chip;
	}

	public String getRam() {
		return ram;
	}

	public void setRam(String ram) {
		this.ram = ram;
	}

	public String getRom() {
		return rom;
	}

	public void setRom(String rom) {
		this.rom = rom;
	}

	public String getSim() {
		return sim;
	}

	public void setSim(String sim) {
		this.sim = sim;
	}

	public String getPin() {
		return pin;
	}

	public void setPin(String pin) {
		this.pin = pin;
	}
    
	public String getLink() {
		return link;
	}

	public void setLink(String link) {
		this.link = link;
	}
}
