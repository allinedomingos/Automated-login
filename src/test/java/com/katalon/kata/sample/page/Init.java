/* Autor: Alline S. Domingos 
    
  Funcões de ação no navegador

*/

package com.katalon.kata.sample.page;
import com.katalon.kata.selenium.PageTemplate;


public class Init extends PageTemplate {

    private String baseUrl;
  
    public Init(String baseUrl) {
      this.baseUrl = baseUrl;
    }
  
    public void open() {
      driver.get(baseUrl);
    }

    public void maxWindow(){
      driver.manage().window().maximize();;
    }

    public void closeBrowser(){
      driver.quit();

    }

}

