package org.mines.douai.j2ee.tp.lepez.tag;

import java.io.IOException;
import java.util.Locale;
import java.util.ResourceBundle;

import javax.servlet.jsp.JspException;
import javax.servlet.jsp.tagext.TagSupport;

public class I18NQuote extends TagSupport {

	/**
	 * 
	 */
	private static final long serialVersionUID = 1L;
	public String lang;
	public String key;

	public String getKey() {
		return key;
	}

	public void setKey(String key) {
		this.key = key;
	}

	public String getLang() {
		return lang;
	}

	public void setLang(String lang) {
		this.lang = lang;
	}
	
	public int doStartTag() throws JspException {
		try {
			System.out.println("L: "+lang);
			Locale locale = new Locale(lang,"");
			ResourceBundle myResources = ResourceBundle.getBundle("org.mines.douai.j2ee.tp.lepez.resources.I18NBundle", locale);
			pageContext.getOut().println(myResources.getString(key));
		} catch (IOException e) {
			throw new JspException("I/O Error", e);
		}
		return SKIP_BODY;
	}

}
