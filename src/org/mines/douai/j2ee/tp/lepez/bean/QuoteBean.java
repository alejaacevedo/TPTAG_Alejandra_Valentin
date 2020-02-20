package org.mines.douai.j2ee.tp.lepez.bean;

import java.math.BigDecimal;
import java.util.HashMap;

public class QuoteBean {
	ModelRandomCurrency randomCurrency = new ModelRandomCurrency();
	HashMap<String, BigDecimal> currencies = randomCurrency.updateCurrency();
	String selection;
	BigDecimal value;
	String langue;

	public QuoteBean(String language, String selectedCurrency) {
		this.langue = language;
		this.selection = selectedCurrency;

	}

	public HashMap<String, BigDecimal> getCurrencies() {
		return currencies;
	}

	public String getSelection() {
		return selection;
	}

	public void setSelection(String selection) {
		this.selection = selection;
	}

	public String getLangue() {
		return langue;
	}

	public void setLangue(String langue) {
		this.langue = langue;
	}

	public BigDecimal getValue() {
		return value;
	}

	public void setValue(String name) {
		this.value = randomCurrency.updateCurrency().get(name).setScale(4, BigDecimal.ROUND_HALF_UP);
	}

	public boolean isBitcoin(String currency) {
		return currency.equals("Bitcoin");
	}

	public boolean isLitecoin(String currency) {
		return currency.equals("Litecoin");
	}

	public boolean isNamecoin(String currency) {
		return currency.equals("Namecoin");
	}

	public boolean isFrançais(String langue) {
		return langue.equals("fr");
	}

	public boolean isEnglish(String langue) {
		return langue.equals("en");
	}

	public String printSelected(Boolean isCorrectCurrency) {
		if (isCorrectCurrency) {
			return "selected";
		} else {
			return "";
		}
	}

	public String printSelectedLangue(Boolean isCorrectLangue) {
		if (isCorrectLangue) {
			return "selected";
		} else {
			return "";
		}
	}

}
