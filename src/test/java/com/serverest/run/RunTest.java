package com.serverest.run;


import io.cucumber.junit.CucumberOptions;
import net.serenitybdd.cucumber.CucumberWithSerenity;
import org.junit.runner.RunWith;

@RunWith(CucumberWithSerenity.class)
@CucumberOptions(features = {
        "src/test/resources/features"
}, plugin = { "pretty" },tags="@api and not @wip", glue = {"com.serverest"}, dryRun = false)

public class RunTest {

}