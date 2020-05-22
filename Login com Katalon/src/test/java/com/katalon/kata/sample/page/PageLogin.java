/* Autor: Alline S. Domingos 

  Funcões da página de Login

*/

package com.katalon.kata.sample.page;
import com.katalon.kata.selenium.PageTemplate;
import org.openqa.selenium.WebElement;
import org.openqa.selenium.support.FindBy;
import org.openqa.selenium.support.ui.ExpectedConditions;

public class PageLogin extends PageTemplate {

  @FindBy(tagName = "a")
  private WebElement SignInBtn;  

  @FindBy(className = "hybrid-login-form-main")
  private WebElement loginform;

  @FindBy(id = "id_userLoginId")
  private WebElement userInput;

  @FindBy(id = "id_password")
  private WebElement passwordInput;

  @FindBy(tagName = "button")
  private WebElement loginBtn;

  @FindBy(className = "profile-link")
  private WebElement chooseusername;

  /* Clica sobre botão signIn para ir a tela de login*/
  public void SignIn(){

    SignInBtn.click();

  }

  /* Espera pelo formulário de login */
  public void waitLoginForm(){
    waitUtil(ExpectedConditions.visibilityOf(loginform));
  }

  /* Seta valores nos campos de e-mail e senha */
  public void login(String user, String password) {
  
    userInput.sendKeys(user);
    passwordInput.sendKeys(password);
    loginBtn.submit();
  }
 
   /* Espera pela tela inicial */
  public void validateLogin(){
     waitUtil(ExpectedConditions.visibilityOf(chooseusername));
  }


}