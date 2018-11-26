<%-- 
    Document   : jogo
    Created on : 25/11/2018, 21:56:46
    Author     : Marco Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <meta charset="UTF-8">
    <title>Facee</title>
    <link rel="stylesheet" href="css/estilo1.css">
    <link rel="stylesheet" href="css/restom.css">
    <script>
        var personagens = [
            {"personagem":"0", "oculos":false, "moreno":true, "loiro":false, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":true, "chapeu":false, "cabeloCurto":true, "bocaGrande":true, "barba":false, "bigode":false, "narizLargo":true, "labiosVermelho":false, "verDentes":true, "sorrindo":true, "homem":true, "negro":true},
            {"personagem":"1", "oculos":true, "moreno":false, "loiro":false, "castanho":true, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":true, "barba":false, "bigode":false, "narizLargo":false, "labiosVermelho":false, "verDentes":false, "sorrindo":true, "homem":true, "negro":false},
            {"personagem":"2", "oculos":false, "moreno":true, "loiro":false, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":true, "chapeu":false, "cabeloCurto":false, "bocaGrande":false, "barba":false, "bigode":false, "narizLargo":true, "labiosVermelho":false, "verDentes":false, "sorrindo":true, "homem":false, "negro":false},
            {"personagem":"3", "oculos":true, "moreno":true, "loiro":false, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":false, "barba":true, "bigode":true, "narizLargo":false, "labiosVermelho":false, "verDentes":false, "sorrindo":true, "homem":true, "negro":false},
            {"personagem":"4", "oculos":true, "moreno":false, "loiro":false, "castanho":true, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":true, "barba":false, "bigode":false, "narizLargo":true, "labiosVermelho":false, "verDentes":false, "sorrindo":true, "homem":true, "negro":true},
            {"personagem":"5", "oculos":true, "moreno":false, "loiro":false, "castanho":false, "grisalho":true, "careca":true, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":false, "barba":false, "bigode":true, "narizLargo":true, "labiosVermelho":false, "verDentes":false, "sorrindo":false, "homem":true, "negro":false},
            {"personagem":"6", "oculos":false, "moreno":false, "loiro":true, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":false, "barba":true, "bigode":true, "narizLargo":true, "labiosVermelho":true, "verDentes":false, "sorrindo":true, "homem":true, "negro":false},
            {"personagem":"7", "oculos":false, "moreno":false, "loiro":false   , "castanho":false, "grisalho":true, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":false, "barba":false, "bigode":false, "narizLargo":true, "labiosVermelho":false, "verDentes":false, "sorrindo":false, "homem":true, "negro":false},
            {"personagem":"8", "oculos":false, "moreno":true, "loiro":false, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":true, "chapeu":false, "cabeloCurto":true, "bocaGrande":false, "barba":false, "bigode":false, "narizLargo":true, "labiosVermelho":false, "verDentes":true, "sorrindo":true, "homem":true, "negro":false},
            {"personagem":"9", "oculos":false, "moreno":true, "loiro":false, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":false, "bocaGrande":true, "barba":false, "bigode":false, "narizLargo":false, "labiosVermelho":true, "verDentes":false, "sorrindo":true, "homem":false, "negro":true},
            {"personagem":"10", "oculos":false, "moreno":true, "loiro":false, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":false, "bocaGrande":false, "barba":false, "bigode":false, "narizLargo":false, "labiosVermelho":true, "verDentes":false, "sorrindo":true, "homem":true, "negro":false},
            {"personagem":"11", "oculos":true, "moreno":true, "loiro":false, "castanho":false, "grisalho":false, "careca":true, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":true, "barba":true, "bigode":true, "narizLargo":true, "labiosVermelho":false, "verDentes":false, "sorrindo":false, "homem":true, "negro":false},
            {"personagem":"12", "oculos":true, "moreno":false, "loiro":true, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":true, "barba":false, "bigode":false, "narizLargo":true, "labiosVermelho":false, "verDentes":true, "sorrindo":true, "homem":true, "negro":false},
            {"personagem":"13", "oculos":true, "moreno":false, "loiro":false, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":true, "cabeloCurto":true, "bocaGrande":false, "barba":true, "bigode":true, "narizLargo":true, "labiosVermelho":false, "verDentes":false, "sorrindo":false, "homem":true, "negro":true},
            {"personagem":"14", "oculos":true, "moreno":true, "loiro":false, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":false, "barba":false, "bigode":false, "narizLargo":false, "labiosVermelho":false, "verDentes":false, "sorrindo":false, "homem":true, "negro":false},
            {"personagem":"15", "oculos":false, "moreno":false, "loiro":false, "castanho":true, "grisalho":false, "careca":false, "olhosFechado":true, "chapeu":true, "cabeloCurto":true, "bocaGrande":false, "barba":true, "bigode":false, "narizLargo":false, "labiosVermelho":false, "verDentes":false, "sorrindo":true, "homem":true, "negro":false},
            {"personagem":"16", "oculos":false, "moreno":true, "loiro":false, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":false, "bocaGrande":true, "barba":false, "bigode":false, "narizLargo":true, "labiosVermelho":false, "verDentes":true, "sorrindo":true, "homem":false, "negro":true},
            {"personagem":"17", "oculos":true, "moreno":false, "loiro":false, "castanho":true, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":false, "bocaGrande":false, "barba":false, "bigode":false, "narizLargo":true, "labiosVermelho":false, "verDentes":false, "sorrindo":false, "homem":true, "negro":false},
            {"personagem":"18", "oculos":false, "moreno":false, "loiro":false, "castanho":true, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":false, "bocaGrande":true, "barba":false, "bigode":false, "narizLargo":false, "labiosVermelho":true, "verDentes":false, "sorrindo":false, "homem":false, "negro":false},
            {"personagem":"19", "oculos":false, "moreno":false, "loiro":false, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":true, "cabeloCurto":true, "bocaGrande":true, "barba":true, "bigode":true, "narizLargo":true, "labiosVermelho":true, "verDentes":false, "sorrindo":false, "homem":true, "negro":true},
            {"personagem":"20", "oculos":false, "moreno":false, "loiro":true, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":true, "chapeu":false, "cabeloCurto":true, "bocaGrande":true, "barba":true, "bigode":true, "narizLargo":true, "labiosVermelho":false, "verDentes":false, "sorrindo":false, "homem":true, "negro":false},
            {"personagem":"21", "oculos":false, "moreno":false, "loiro":true, "castanho":false, "grisalho":false, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":false, "bocaGrande":false, "barba":false, "bigode":false, "narizLargo":false, "labiosVermelho":true, "verDentes":false, "sorrindo":false, "homem":false, "negro":false},
            {"personagem":"22", "oculos":false, "moreno":true , "loiro":false, "castanho":false, "grisalho":false, "careca":true, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":true, "barba":false, "bigode":false, "narizLargo":true, "labiosVermelho":false, "verDentes":false, "sorrindo":false, "homem":true, "negro":false},
            {"personagem":"23", "oculos":false, "moreno":false , "loiro":false, "castanho":false, "grisalho":true, "careca":false, "olhosFechado":false, "chapeu":false, "cabeloCurto":true, "bocaGrande":false, "barba":false, "bigode":true, "narizLargo":false, "labiosVermelho":false, "verDentes":false, "sorrindo":false, "homem":true, "negro":false}
        ]
        function pergunta(x){
            var ItemPertence = true;
            switch(x){
                case 1:
                    if(personagens[personagemAdversario].oculos == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].oculos == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 2:
                    if(personagens[personagemAdversario].chapeu == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    }else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].chapeu == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 3:
                    if(personagens[personagemAdversario].olhosFechado == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].olhosFechado == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 4:
                    if(personagens[personagemAdversario].moreno == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].moreno == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 5:
                    if(personagens[personagemAdversario].castanho == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].castanho == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 6:
                    if(personagens[personagemAdversario].loiro == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].loiro == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 7:
                    if(personagens[personagemAdversario].grisalho == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].grisalho == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 8:
                    if(personagens[personagemAdversario].cabeloCurto == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].cabeloCurto == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 9:
                    if(personagens[personagemAdversario].careca == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].careca == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 10:
                    if(personagens[personagemAdversario].bocaGrande == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].bocaGrande == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 11:
                    if(personagens[personagemAdversario].barba == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].barba == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 12:
                    if(personagens[personagemAdversario].bigode == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].bigode == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 13:
                    if(personagens[personagemAdversario].narizLargo == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].narizLargo == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 14:
                    if(personagens[personagemAdversario].labiosVermelho == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].labiosVermelho == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 15:
                    if(personagens[personagemAdversario].verDentes == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].verDentes == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 16:
                    if(personagens[personagemAdversario].verDentes == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].verDentes == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 17:
                    if(personagens[personagemAdversario].homem == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].homem == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
                case 18:
                    if(personagens[personagemAdversario].negro == true){
                        alert("O personagem adversario tem");
                        ItemPertence = false;
                    } else {
                        alert("O personagem adversario não tem");
                    }
                    for(i = 0; i < personagens.length; i++){
                        if(personagens[i].negro == ItemPertence){
                            document.getElementById(i).src = "img/erro.png";
                        } 
                    }
                    break;
            }
            voltar();
            
        }
        function inicio(){
            alert("jogador1 escolheu o personagem 1");
            alert("jogador2 escolheu o personagem 2");
            seuPersonagem = 0;
            personagemAdversario = 1;
            document.getElementById('escolhido').src = "img/"+seuPersonagem+".png"
        }
        function personagemSelecionado(x){
            if(x == personagemAdversario){
                window.open('ganhador.jsp','_self')
            } else {
                document.getElementById(x).src = "img/erro.png";
                voltar();
            }
        }
        function adivinhar(){
            document.getElementById('tabuleiro').style.display = "none";
            document.getElementById('personagens').style.display = "block";
        }
        function perguntar(){
            document.getElementById('tabuleiro').style.display = "none";
            document.getElementById('perguntas').style.display = "block";
        }
        function voltar(){
            document.getElementById('perguntas').style.display = "none";
            document.getElementById('personagens').style.display = "none";
            document.getElementById('tabuleiro').style.display = "block";
        }
    </script>
    <style>
        .background-game {
            width: 100%;
            height: 100%;
            background-color: white;
        }
        .boxForm{
            width:90%;
            height:80vh;
            background-color: navajowhite;
            display: block;
        }
        .btn {
            margin: 20px;
            background-color: aliceblue;
            border-radius: 10px;
            width:100px;
        }
        .centralizar{
            height: 100%;
            text-align: center;
        }
        img{
            width: 50px;
        }
        .personagem{
            width: 100px;
            margin: 5px;
        }
        #tabuleiro{
            display: block;
        }
        #personagens {
            display: none;
        }
        #perguntas{
            display: none;
        }
    </style>
</head>
<body onload="inicio()">
    <div class="background-game">
        <div class="centralizar">
            <div class="boxForm">
                <div class="col-dg-12" id="tabuleiro">
                    <div class="col-dg-10">
                        <div class="col-dg-2 personagem"><img src="img/0.png" id="0"></div>
                        <div class="col-dg-2 personagem"><img src="img/1.png" id="1"></div>
                        <div class="col-dg-2 personagem"><img src="img/2.png" id="2"></div>
                        <div class="col-dg-2 personagem"><img src="img/3.png" id="3"></div>
                        <div class="col-dg-2 personagem"><img src="img/4.png" id="4"></div>
                        <div class="col-dg-2 personagem"><img src="img/5.png" id="5"></div>
                        <div class="linha"></div>
                        <div class="col-dg-2 personagem"><img src="img/6.png" id="6"></div>
                        <div class="col-dg-2 personagem"><img src="img/7.png" id="7"></div>
                        <div class="col-dg-2 personagem"><img src="img/8.png" id="8"></div>
                        <div class="col-dg-2 personagem"><img src="img/9.png" id="9"></div>
                        <div class="col-dg-2 personagem"><img src="img/10.png" id="10"></div>
                        <div class="col-dg-2 personagem"><img src="img/11.png" id="11"></div>
                        <div class="linha"></div>
                        <div class="col-dg-2 personagem"><img src="img/12.png" id="12"></div>
                        <div class="col-dg-2 personagem"><img src="img/13.png" id="13"></div>
                        <div class="col-dg-2 personagem"><img src="img/14.png" id="14"></div>
                        <div class="col-dg-2 personagem"><img src="img/15.png" id="15"></div>
                        <div class="col-dg-2 personagem"><img src="img/16.png" id="16"></div>
                        <div class="col-dg-2 personagem"><img src="img/17.png" id="17"></div>
                        <div class="linha"></div>
                        <div class="col-dg-2 personagem"><img src="img/18.png" id="18"></div>
                        <div class="col-dg-2 personagem"><img src="img/19.png" id="19"></div>
                        <div class="col-dg-2 personagem"><img src="img/20.png" id="20"></div>
                        <div class="col-dg-2 personagem"><img src="img/21.png" id="21"></div>
                        <div class="col-dg-2 personagem"><img src="img/22.png" id="22"></div>
                        <div class="col-dg-2 personagem"><img src="img/23.png" id="23"></div>
                    </div>
                    <div class="col-dg-2 centralizar">
                        <div class="btn"><img id="escolhido" src="" alt="">personagem</div>
                        <div class="btn" onclick="perguntar()"><img src="img/interrogacao2.png" alt="">perguntar</div>
                        <div class="btn" onclick="adivinhar()"><img src="img/lampada.png" alt="">adivinhar</div>
                    </div>
                </div>
                <div class="col-dg-12" id="personagens">
                    <h1>Escolha um personagem</h1>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(0)"><img src="img/0.png" id="0"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(1)"><img src="img/1.png" id="1"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(2)"><img src="img/2.png" id="2"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(3)"><img src="img/3.png" id="3"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(4)"><img src="img/4.png" id="4"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(5)"><img src="img/5.png" id="5"></div>
                    <div class="linha"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(6)"><img src="img/6.png" id="6"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(7)"><img src="img/7.png" id="7"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(8)"><img src="img/8.png" id="8"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(9)"><img src="img/9.png" id="9"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(10)"><img src="img/10.png" id="10"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(11)"><img src="img/11.png" id="11"></div>
                    <div class="linha"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(12)"><img src="img/12.png" id="12"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(13)"><img src="img/13.png" id="13"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(14)"><img src="img/14.png" id="14"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(15)"><img src="img/15.png" id="15"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(16)"><img src="img/16.png" id="16"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(17)"><img src="img/17.png" id="17"></div>
                    <div class="linha"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(18)"><img src="img/18.png" id="18"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(19)"><img src="img/19.png" id="19"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(20)"><img src="img/20.png" id="20"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(21)"><img src="img/21.png" id="21"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(22)"><img src="img/22.png" id="22"></div>
                    <div class="col-dg-2 personagem" onclick="personagemSelecionado(23)"><img src="img/23.png" id="23"></div>
                    <div class="linha"></div>
                    <div class="btn" onclick="voltar()"><img src="img/voltar.png" alt="">voltar</div>
                </div>
                <div id="perguntas">
                    <h1>Qual pergunta deseja fazer?</h1>
                    <div onclick="pergunta(1)">Ele usa oculos?</div>
                    <div onclick="pergunta(2)">Ele usa um chapéu?</div>
                    <div onclick="pergunta(3)">Os olhos dele está aberto?</div>
                    <div onclick="pergunta(4)">Ele têm o cabelo preto?</div>
                    <div onclick="pergunta(5)">Ele têm o cabelo castanho?</div>
                    <div onclick="pergunta(6)">Ele têm o cabelo loiro?</div>
                    <div onclick="pergunta(7)">Ele têm o cabelo grisalho?</div>
                    <div onclick="pergunta(8)">Ele têm cabelo curto?</div>
                    <div onclick="pergunta(9)">Ele é careca?</div>
                    <div onclick="pergunta(10)">Ele têm uma boca grande?</div>
                    <div onclick="pergunta(11)">Ele têm uma barba?</div>
                    <div onclick="pergunta(12)">Ele têm um bigode?</div>
                    <div onclick="pergunta(13)">Ele têm um nariz largo?</div>
                    <div onclick="pergunta(14)">Ele têm lábios vermelho?</div>
                    <div onclick="pergunta(15)">Você consegue ver os dentes dele?</div>
                    <div onclick="pergunta(16)">Ele esta serio?</div>
                    <div onclick="pergunta(17)">Ele é uma homem?</div>
                    <div onclick="pergunta(18)">Ele têm pele negro?</div>
                    <div class="btn" onclick="voltar()"><img src="img/voltar.png" alt="">voltar</div>
                </div>
            </div>
        </div>
    </div>
</body>
</html>
