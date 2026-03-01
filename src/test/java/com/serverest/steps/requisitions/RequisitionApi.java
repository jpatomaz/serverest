package com.serverest.steps.requisitions;

import com.github.javafaker.Faker;
import com.serverest.database.DataBase;
import com.serverest.controll.Endpoints;
import com.serverest.util.MapToHashMap;
import io.restassured.RestAssured;
import io.restassured.response.Response;
import io.restassured.specification.RequestSpecification;

import java.util.HashMap;
import java.util.List;
import java.util.Map;

import static org.junit.Assert.assertTrue;

public class RequisitionApi extends Endpoints {
    static RequestSpecification request;
    static Faker faker = new Faker();

    private static Response enviaRequisicao(String requisicao, String endPoint, RequestSpecification request, Response response) {
        switch (requisicao) {
            case "POST":
                return request.post(endPoint);
            case "PUT":
                return request.put(endPoint);
            case "PATCH":
                return request.patch(endPoint);
            case "GET":
                return request.get(endPoint);
            case "DELETE":
                return request.delete(endPoint);

            default:
                System.out.println("****** REQUISIÇÃO INVÁLIDA: " + requisicao + " ******");
        }

        return response;
    }
    public static Response requisicaoSemParametro(String requisicao, String endPoint) {
        Response response = null;
        RestAssured.baseURI = uri;
        request = RestAssured.given().log().all();
        request.header("Content-Type", "application/json");

        //Essa Authorization é gerado na Classe GeraToken e preenchida no Hook BeforeAll
        request.header("Authorization", DataBase.getCodeAuthorization());
        return enviaRequisicao(requisicao, endPoint, request, response);
    }

    public static Response enviaMetodoComBody(String requisicao, String endPoint, String body) {
        RestAssured.baseURI = uri;
        RequestSpecification request = RestAssured.given().log().all();
        Response response = null;

        request.header("Content-Type", "application/json");
        request.body(body);

        //Essa Authorization é gerado na Classe GeraToken e preenchida no Hook BeforeAll
        request.header("Authorization", DataBase.getCodeAuthorization());

        return enviaRequisicao(requisicao, endPoint, request, response);
    }

    public static Response enviaMetodoComOsDados(String requisicao, String endPoint, Map<String, Object> data) {
        Response response = null;
        HashMap<String, Object> body = MapToHashMap.mapToHashMap(data);

        RestAssured.baseURI = uri;
        RequestSpecification request = RestAssured.given().log().all();

        request.header("Content-Type", "application/json");
        request.body(body);
        //Essa Authorization é gerado na Classe GeraToken e preenchida no Hook BeforeAll
        request.header("Authorization", DataBase.getCodeAuthorization());

        return enviaRequisicao(requisicao, endPoint, request, response);
    }


    public static Response enviaMetodoComParametros(String requisicao, String endPoint, Map<String, String> parametros) {
        RestAssured.baseURI = uri;
        RequestSpecification request = RestAssured.given().log().all();
        Response response = null;

        request.header("Content-Type", "application/json");
        request.params(parametros);
        //Essa Authorization é gerado na Classe GeraToken e preenchida no Hook BeforeAll
        request.header("Authorization", DataBase.getCodeAuthorization());

        return enviaRequisicao(requisicao, endPoint, request, response);
    }

    public static void validaValoresResposta(Map<String, String> campos) {
        Response resposta = DataBase.getResponse();

        for (Map.Entry<String, String> entry : campos.entrySet()) {
            String chave = entry.getKey();
            String valorEsperado = entry.getValue();
            Object valorResposta = resposta.path(chave);

            assertTrue("Campo: " + entry.getKey() + " não encontrado na resposta.", DataBase.getResponse().asString().contains(entry.getKey()));

            System.out.println("Apresentado: " + valorResposta.toString());
            System.out.println("Esperado: " + entry.getValue());
            assertTrue(valorResposta.toString().contains(entry.getValue()));
        }
    }

    public static void validaCamposResposta(List<String> campos) {
        String responseBody = DataBase.getResponse().getBody().asString();
        for (String campo : campos) {
            assertTrue("Campo: " + campo + " não encontrado na resposta.", responseBody.contains(campo));
        }
    }

}
