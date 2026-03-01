package com.serverest;

import com.serverest.util.GeraToken;
import io.cucumber.java.BeforeAll;


public class Hooks {

    @BeforeAll
    public static void before_all() {
        GeraToken.geraToken();
    }
}
