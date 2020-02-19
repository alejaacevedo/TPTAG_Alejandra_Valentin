package org.mines.douai.j2ee.tp.lepez.bean;

import java.math.BigDecimal;
import java.util.HashMap;

public class QuoteBean {
	ModelRandomCurrency randomCurrency = new ModelRandomCurrency();
	HashMap<String,BigDecimal> currencies = randomCurrency.updateCurrency();
	
	public HashMap<String, BigDecimal> getCurrencies() {
		return currencies;
	}

	String name;
	BigDecimal value;
	String langue;
	

	public String getLangue() {
		return langue;
	}
	public void setLangue(String langue) {
		this.langue = langue;
	}
	public String getName() {
		return name;
	}
	public void setName(String name) {
		this.name = name;
	}
	public BigDecimal getValue() {
		return value;
	}
	public void setValue(String name) {
		this.value = randomCurrency.updateCurrency().get(name).setScale(4, BigDecimal.ROUND_HALF_UP);
	}
	
	public boolean isBitcoin( String currency) {
		return currency.equals("Bitcoin");
	}
	
	public boolean isLitecoin( String currency) {
		return currency.equals("Litecoin");
	}
	public boolean isNamecoin( String currency) {
		return currency.equals("Namecoin");
	}
	
	public boolean isFrançais( String langue) {
		return langue.equals("Français");
	}
	
	public boolean isEnglish( String langue) {
		return langue.equals("English");
	}
	
	public String printSelected(Boolean isCorrectCurrency) {
		if( isCorrectCurrency) {
			return "selected";
		}else {
			return "";
		}
	}
	
	public String printSelectedLangue(Boolean isCorrectLangue) {
		if( isCorrectLangue) {
			return "selected";
		}else {
			return "";
		}
	}
	
	

}
