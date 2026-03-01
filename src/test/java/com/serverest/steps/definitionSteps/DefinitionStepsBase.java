package com.serverest.steps.definitionSteps;

import com.github.javafaker.Faker;
import com.serverest.database.DataBase;
import com.serverest.steps.requisitions.RequisitionApi;
import io.cucumber.java.DataTableType;
import io.cucumber.java.pt.Dado;
import io.cucumber.java.pt.E;
import io.cucumber.java.pt.Entao;
import org.junit.Assert;

import java.util.List;
import java.util.Map;

public class DefinitionStepsBase {

    //Substitui dados do BDD em casos específicos
    @DataTableType(replaceWithEmptyString = "[vazio]")
    public Object objectType(String cell) {

        if (cell.equals("[Gera Nome]")) {
            return Faker.instance().name().fullName();
        }

        if (cell.equals("[Gera Email]")) {
            return Faker.instance().internet().emailAddress();
        }

        return cell;
    }

    @Dado("que envio uma requisição {string} para o endpoint {string}")
    public void requisicaoSemParametro(String requisicao, String endPoint) {
        DataBase.setResponse(RequisitionApi.requisicaoSemParametro(requisicao, endPoint));
    }

    @Dado("que envio uma requisição {string} para o endpoint {string} com os dados:")
    public void enviaMetodoComOsDados(String requisicao, String endPoint, Map<String, Object> data) {
        DataBase.setResponse(RequisitionApi.enviaMetodoComOsDados(requisicao, endPoint, data));
    }

    @Dado("que envio uma requisição {string} para o endpoint {string} com o body:")
    public void enviaMetodoComBody(String requisicao, String endPoint, String body) {
        DataBase.setResponse(RequisitionApi.enviaMetodoComBody(requisicao, endPoint, body));
    }

    @Entao("devera retornar o status {int}")
    public void devera_retornar_o_status(int statusResposta) {
        System.out.println("StatusCode: " + DataBase.getResponse().getStatusCode());
        System.out.println("Response: " + DataBase.getResponse().asString());
        Assert.assertEquals(statusResposta, DataBase.getResponse().getStatusCode());
    }

    @Dado("que envio uma requisição {string} para o endpoint {string} com os parâmetros:")
    public void enviaMetodoComParametro(String requisicao, String endPoint, Map<String, String> parametros) {
        DataBase.setResponse(RequisitionApi.enviaMetodoComParametros(requisicao, endPoint, parametros));
    }

    @E("a resposta deve incluir os seguintes campos:")
    public void aRespostaDeveIncluirOsSeguintesCampos(List<String> campos) {
        RequisitionApi.validaCamposResposta(campos);
    }

    @E("a resposta deve incluir os seguintes valores:")
    public void aRespostaDeveIncluirOsSeguintesValores(Map<String, String> campos) {
        RequisitionApi.validaValoresResposta(campos);
    }
}
