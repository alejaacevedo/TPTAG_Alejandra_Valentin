package org.mines.douai.j2ee.tp.lepez.resources;

import java.util.*;

public class I18NBundle_en extends ListResourceBundle {
 public Object[][] getContents() {
  return contents;
 }

 static final Object[][] contents = {
  {"header.chooseLanguage","Choice of language"},
  {"language.english","English"},
  {"language.french","French"},
  {"header.chooseCurrency","Choice of Currency"},
  {"button.Refresh","Refresh"},
  {"message.selectedCurrency","The amount in dollars of the selected currency is: "}
  };
}