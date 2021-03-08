package com.newtours.pages;

import org.openqa.selenium.WebDriver;
import org.openqa.selenium.support.PageFactory;
import org.openqa.selenium.support.ui.WebDriverWait;
import com.newtours.utils.Constants;

public class BasePage {

  protected WebDriverWait wait;
  protected WebDriver driver;

  public BasePage(WebDriver driver) {
    this.driver = driver;
    this.wait = new WebDriverWait(driver, Constants.MEDIUM_WAIT);
    PageFactory.initElements(this.driver, this);
  }
}
