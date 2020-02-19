package org.mines.douai.j2ee.tp.lepez.resources;

import java.util.ListResourceBundle;

public class I18NBundle_fr extends ListResourceBundle {

	public Object[][] getContents() {
		return contents;
	}

	static final Object[][] contents = { 
			{ "header.chooseLanguage", "Choix de la langue" },
			{ "language.english", "Anglais" },
			{ "language.french", "Français" },
			{ "header.chooseCurrency", "Choix de la devise" },
			{ "button.Refresh", "Actualiser" },
			{ "message.selectedCurrency", "Le montant en dollard de la devise selectionée est de: " } };
}