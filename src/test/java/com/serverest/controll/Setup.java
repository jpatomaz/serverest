package com.serverest.controll;

import com.github.javafaker.Faker;
import com.serverest.database.DataBase;
import com.serverest.steps.requisitions.RequisitionApi;
import com.serverest.util.MapToHashMap;

import java.util.HashMap;

public class Setup {

    public static String nome = Faker.instance().name().fullName();
    public static String email = Faker.instance().internet().emailAddress();
    public static String password = "teste";
    public static String id;

    public static void cadastraFuncionario(){

        HashMap<String, Object> body = new HashMap<>();
        body.put("nome", nome);
        body.put("email", email);
        body.put("password", "teste");
        body.put("administrador", "true");

        DataBase.setResponse(RequisitionApi.enviaMetodoComOsDados("POST", "/usuarios", body));
        Setup.id = DataBase.getResponse().path("_id");
        System.out.println("StatusCode: " + DataBase.getResponse().getStatusCode());
        System.out.println("Response: " + DataBase.getResponse().asString());

        System.out.println("sdfsdsdfdsfsdf" + DataBase.getResponse().path("_id"));
        System.out.println("dsafsdfdsfds" + Setup.id);
    }

    public static void main(String[] args) {
        cadastraFuncionario();
        System.out.println(Setup.nome + Setup.email);
    }
}
