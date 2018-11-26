<%-- 
    Document   : interface
    Created on : 25/11/2018, 20:11:15
    Author     : Marco Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
        <link rel="stylesheet" type="text/css" href="css/estilo1.css">
        <link rel="stylesheet" type="text/css" href="css/restom.css">
    <style>
        .alinhamento {
            display: flex;
            align-items: center;
            text-align: center;
            justify-content: center;
            height: 100vh;
            flex-direction: column;
        }
        .box {
            width:90%;
            margin:1%;
        }
        .buttonDificuldade{
            padding:4%;
            margin:3%;
        }
        .buttonDificuldade:hover {
            background-color: rgba(230,230,230,0.8);
        }
        input[type=button], input[type=submit]{
            width:150px;
            height: 70px;
            font-size: 20px;
            margin-bottom: 20px;
        }
        input[type=button]:hover, input[type=submit]:hover{
            transition: 0.4s;
            background-image: linear-gradient(45deg, yellow, orange);
        }
        .boxForm{
            width:40%;
        }
    </style>
    <script>
        function mudarCor(x){
            if( x>0 && x<4){
                for(i = 1; i<4;i++){
                    if(document.getElementById(i).style.backgroundColor == "rgba(0, 0, 0, 0.5)"){
                        document.getElementById(i).style.backgroundColor="";
                    }
                }
            }
            document.getElementById(x).style.backgroundColor = "rgba(0,0,0,0.5)";
        }
        function pagJogo(){
            var dificuldade;
            for(i = 1; i<4;i++){
                if(document.getElementById(i).style.backgroundColor == "rgba(0, 0, 0, 0.5)"){
                    dificuldade = i;
                }
            }
            if(dificuldade == undefined){
                document.getElementById('erro').innerHTML = "Escolha uma dificuldade, por favor!";
            } else {
                localStorage.setItem("dificuldade", dificuldade);
                localStorage.setItem("nome", "<%=nome%>");
                window.open('jogo.jsp','_blank');
                window.open('jogo.jsp','_self');
            }
        }
    </script>
    <meta charset="UTF-8">
    <title>Facee</title>
</head>

<body>
   <div class="alinhamento background">
        <div class="boxForm">
            <div class="tituloPrincipal">
                <% String nome = (String)(request.getAttribute("nome"));%>
                <h1> O que deseja fazer <%=nome%>?</h1>
            </div>
            <div class="box">
            <form action="Ranking">
                <div onclick="mudarCor('1')" class="buttonDificuldade" id="1">FACIL</div>
                <div onclick="mudarCor('2')" class="buttonDificuldade" id="2">MEDIO</div>
                <div onclick="mudarCor('3')" class="buttonDificuldade" id="3">DIFICIL</div>
                <input type="hidden" value="<%=nome%>" name="nome" id="nome">
                <input type="button" onclick="pagJogo()" class="buttonDificuldade" value="INICIAR JOGO">
                <input type="submit" class="buttonDificuldade" value="RANKING">
            </form>
            <div class="erro"><span id="erro"></span></div>
        </div>
   </div>
</body>
</html>
