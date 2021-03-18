package shoppingcart.bean;

public class Item implements java.io.Serializable
	{
	    public String productCode;
	    public String description;
	    public double price;
	    public int quantity;

	    public Item()
	    {
	    }

	    public Item(String aProductCode, String aDescription,
	        double aPrice, int aQuantity)
	    {
	        productCode = aProductCode;
	        description = aDescription;
	        price = aPrice;
	        quantity = aQuantity;
	    }

	// Make get/set methods so the attributes will appear
	// as bean attributes.

	    public String getProductCode() { return productCode; }
	    public void setProductCode(String aProductCode) {
	        productCode = aProductCode; }

	    public String getDescription() { return description; }
	    public void setDescription(String aDescription) {
	        description = aDescription; }

	    public double getPrice() { return price; }
	    public void setPrice(double aPrice) { price = aPrice; }

	    public int getQuantity() { return quantity; }
	    public void setQuantity(int aQuantity) { quantity = aQuantity; }

}
