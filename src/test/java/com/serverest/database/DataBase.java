package com.serverest.database;

import io.restassured.response.Response;

import java.util.HashMap;

public class DataBase {

    private static Response response;
    private static int statusCode;
    private static String codeAuthorization;
    private static HashMap<String, String> body;


    public static Response getResponse() {
        return response;
    }

    public static void setResponse(Response response) {
        DataBase.response = response;
    }

    public static String getCodeAuthorization() {
        return codeAuthorization;
    }

    public static void setCodeAuthorization(String codeAuthorization) {
        DataBase.codeAuthorization = codeAuthorization;
    }

    public static HashMap<String, String> getBody() {
        return body;
    }

    public static void setBody(HashMap<String, String> body) {
        DataBase.body = body;
    }

}
