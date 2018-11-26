<%-- 
    Document   : ranking
    Created on : 25/11/2018, 21:52:32
    Author     : Marco Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="pt-br">
<head>
    <title>Facee</title>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <link rel="stylesheet" type="text/css" href="css/estilo1.css">
    <script type="text/javascript" src="js/script.js"></script>
    <style>
            .listaRanking{
                text-align: left;
                margin-bottom: 50px;
            }
            th, td {
               padding: 2px 5px 2px 5px;
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
</head>
<body>
<div class="background">
    <div class="centralizar">
        <audio id="audioUsuario">
            <source src="WEB-INF/audio/CLICK10A.wav" type="audio/wav"></audio>
        <audio id="audioSenha">
            <source src="WEB-INF/audio/CLICK10B.wav" type="audio/wav"></audio>
        <div class="boxForm">
            <div class="tituloPrincipal">
                <h1> Ranking </h1>
            </div>
            <table class="listaRanking">
                <tr>
                    <th>N.</th>
                    <th>Nome</th>
                    <th>Pontuação</th>
                </tr>
                <tr>
                    <td>1.</td>
                    <td>Marco</td>
                    <td>500</td>
                </tr>
                <tr>
                    <td>2.</td>
                    <td>antonio</td>
                    <td>400</td>
                </tr>
                <tr>
                    <td>3.</td>
                    <td>Guilherme</td>
                    <td>300</td>
                </tr>
                <tr>
                    <td>4.</td>
                    <td>Herik</td>
                    <td>200</td>
                </tr>
                <tr>
                    <td>5.</td>
                    <td>Felipe</td>
                    <td>100</td>
                <tr>
            </table>
            <form id="interface" action="">
                <input type="button" onclick="window.open('interface.jsp','_self');" class="buttonDificuldade" value="Voltar">
            </form>
        </div>
    </div>
</div>
</body>
</html>
