package com.transmuda.stepdefinitions;

import com.transmuda.pages.DashboardPage;
import com.transmuda.utilities.Driver;
import io.cucumber.java.en.When;

public class LogoutStepDefs {

    DashboardPage dashboardPage = new DashboardPage();

    @When("the user clicks on logout link under username")
    public void theUserClicksOnLogoutLinkUnderUsername() {

        dashboardPage.waitUntilLoaderScreenDisappear();
        dashboardPage.userName.click();
        dashboardPage.logOutLink.click();
    }

    @When("the user clicks step back button")
    public void theUserClicksStepBackButton() {
        Driver.get().navigate().back();
    }
}
