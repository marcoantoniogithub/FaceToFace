/* 
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
function logar(){
    inputs = document.getElementsByTagName("input");
    var porta = false;
    for (var i=0; i<inputs.length; i++) {
        if (((inputs[i].type == "text") || (inputs[i].type == "password")) && (inputs[i].value == "")) {
            document.getElementById('erro').innerHTML = "ERRO: "+inputs[i].name.toUpperCase() + " não pode estar em branco. Favor preencher!";
            porta = true;
            break;
        }
        else if (((inputs[i].type == "text") || (inputs[i].type == "password")) && inputs[i].value.length < 6){
            document.getElementById('erro').innerHTML =("ERRO: "+inputs[i].name.toUpperCase() + " deve conter ao menos 6 caracteres!");
            porta = true;
            break;
        }
        else if (inputs[i].type == "text"){
            us = i;
            for(j=0; j<inputs[i].value.length; j++){
                if(((inputs[i].value.charAt(j) < 65 || inputs[i].value.charAt(j) > 90) && (inputs[i].value.charAt(j) < 97 || inputs[i].value.charAt(j) > 122))){
                    document.getElementById('erro').innerHTML =("ERRO: "+inputs[i].name.toUpperCase() + " deve conter apenas letras!");
                    porta = true;
                    break;
                }
            }     
        }
        else if (inputs[i].type == "password"){
            ps = i;
            for(j=0; j<inputs[i].value.length; j++){
                 if(((inputs[i].value.charAt(j) < '0' || inputs[i].value.charAt(j) > '9') && (inputs[i].value.charAt(j) < 65 || inputs[i].value.charAt(j) > 90) && (inputs[i].value.charAt(j) < 97 || inputs[i].value.charAt(j) > 122))){
                    document.getElementById('erro').innerHTML =("ERRO: "+inputs[i].name.toUpperCase() + " deve conter apenas letras ou números!");
                    porta = true;
                    break;
                }
            }     
        }
        else if (inputs[i].type == "checkbox"){
            if(inputs[i].checked == true){
                localStorage.setItem("usuario", inputs[us].value);
                localStorage.setItem("senha", inputs[ps].value);
            }
            else{
                localStorage.removeItem("usuario");
                localStorage.removeItem("senha");
            }
        }
    }
    if(porta == true){
    }
    else {
        document.getElementById("id_login").submit();
    }
}
function cadastrar(){
    inputs = document.getElementsByTagName("input");
    var porta = false;
    for (var i=0; i<inputs.length; i++) {
        if (((inputs[i].type == "text") || (inputs[i].type == "password")) && (inputs[i].value == "")) {
            document.getElementById('erro').innerHTML =("ERRO: "+inputs[i].name.toUpperCase() + " não pode estar em branco. Favor preencher!");
            porta = true;
            break;
        }
        else if (((inputs[i].type == "text") || (inputs[i].type == "password")) && inputs[i].value.length < 6){
            document.getElementById('erro').innerHTML =("ERRO: "+inputs[i].name.toUpperCase() + " deve conter ao menos 6 caracteres!");
            porta = true;
            break;
        }
        else if (inputs[i].type == "text"){
            for(j=0; j<inputs[i].value.length; j++){
                if(((inputs[i].value.charAt(j) < 65 || inputs[i].value.charAt(j) > 90) && (inputs[i].value.charAt(j) < 97 || inputs[i].value.charAt(j) > 122))){
                    document.getElementById('erro').innerHTML =("ERRO: "+inputs[i].name.toUpperCase() + " deve conter apenas letras!");
                    porta = true;
                    break;
                }
            }     
        }
        else if (inputs[i].type == "password"){
            for(j=0; j<inputs[i].value.length; j++){
                 if(((inputs[i].value.charAt(j) < '0' || inputs[i].value.charAt(j) > '9') && (inputs[i].value.charAt(j) < 65 || inputs[i].value.charAt(j) > 90) && (inputs[i].value.charAt(j) < 97 || inputs[i].value.charAt(j) > 122))){
                    document.getElementById('erro').innerHTML =("ERRO: "+inputs[i].name.toUpperCase() + " deve conter apenas letras ou números!");
                    porta = true;
                    break;
                }
            }     
        } else {
            if(document.getElementById('id_senha').value == document.getElementById('id_confSenha').value){
                
            } else {
                document.getElementById('erro').innerHTML =("ERRO: As duas senhas não são iguais!");
                porta = true;
            }
        }
    }
    if(porta == true){
        
    }
    else {
        document.getElementById("cadastro").submit();
    }
}