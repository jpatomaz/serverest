package com.serverest.util;

import com.serverest.database.DataBase;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;
import org.junit.Assert;

import static com.serverest.controll.Endpoints.uri;

public class GeraToken {
    public static void geraToken() {
        System.out.println("  --------------------- Geração do Token de acesso! ------------------------ ");

        RestAssured.baseURI = uri;
        String endPoint = "/Login";
        RequestSpecification request = RestAssured.given().log().all();
        Response response = null;

        // Parâmetros do corpo da requisição
//        String body = "grant_type=client_credentials";

        // Cabeçalhos
        request.header("Content-Type", "application/json");
//        request.header("Authorization", authorization);

        // Usando body para application/x-www-form-urlencoded
        String requestBody = "{\"email\":\"fulano@qa.com\", \"password\":\"teste\"}";

        request.body(requestBody);


        try {
            response = request.post(endPoint);
        } catch (Exception e) {
            throw new RuntimeException("Não foi possível gerar o Token. Verifique se o Host está disponível: " + endPoint, e);
        }

        if (response.jsonPath().getString("authorization") != null) {
            System.out.println("Token Gerado: " + response.jsonPath().getString("authorization"));
            DataBase.setCodeAuthorization(response.jsonPath().getString("authorization"));
        } else {
            Assert.fail("Falha ao gerar o Token! \n" + "StatusCode: " + response.statusCode() + "\n" + response.asString());
        }

        System.out.println("------------------------------------------------------------------");

    }


}
