package org.mines.douai.j2ee.tp.lepez.tag;

import javax.servlet.jsp.tagext.TagSupport;

public class I18NQuote extends TagSupport  {
	
	public String lang;

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}
	
}