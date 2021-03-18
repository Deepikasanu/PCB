package shoppingcart.bean;

public class Billing implements java.io.Serializable
	{
	    public String nameOnCard;
	    public String creditCardType;
	    public String creditCardNumber;
	    public String creditCardExpiration;

	    public Billing()
	    {
	    }

	    public String getNameOnCard() { return nameOnCard; }
	    public void setNameOnCard(String aName) { nameOnCard = aName; }

	    public String getCreditCardType() { return creditCardType; }
	    public void setCreditCardType(String aCreditCardType)
	        { creditCardType = aCreditCardType; }

	    public String getCreditCardNumber() { return creditCardNumber; }
	    public void setCreditCardNumber(String aCreditCardNumber)
	        { creditCardNumber = aCreditCardNumber; }

	    public String getCreditCardExpiration()
	        { return creditCardExpiration; }
	    public void setCreditCardExpiration(String aCreditCardExpiration)
	        { creditCardExpiration = aCreditCardExpiration; }

}
