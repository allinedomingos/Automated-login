package com.katalon.kata.sample.testcase.parameterize;

import com.katalon.kata.sample.page.PageLogin;
import com.katalon.kata.sample.Constants;
import com.katalon.kata.sample.page.Init;
import com.katalon.kata.testng.TestTemplate;
import org.testng.annotations.Test;

public class Login extends TestTemplate { 

    private final Init urlpage = new Init(Constants.baseUrl);
    private PageLogin Login;
   
    @Test
    public void login() {


        urlpage.open();
        urlpage.maxWindow();
        Login.SignIn();
        Login.waitLoginForm();
        Login.login(Constants.username, Constants.password);
        Login.validateLogin();
        urlpage.closeBrowser();
        

    }




}