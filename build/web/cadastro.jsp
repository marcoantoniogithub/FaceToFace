<%-- 
    Document   : cadastro
    Created on : 25/11/2018, 19:18:31
    Author     : Marco Antonio
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <title>Facee</title>
        <meta charset="UTF-8">
        <meta name="viewport" content="width=device-width, initial-scale=1.0">
        <link rel="stylesheet" type="text/css" href="css/estilo1.css">
        <script type="text/javascript" src="js/script.js"></script>
    </head>
    <body>
        <div class="background">
            <audio id="audioUsuario">
                <source src="audio/CLICK10A.wav" type="audio/wav"></audio>
            <audio id="audioSenha">
                <source src="audio/CLICK10B.wav" type="audio/wav"></audio>
            <div class="centralizar">
                <div class="boxForm">
                    <div class="tituloPrincipal">
                        <h1> Face to Face </h1>
                    </div>
                    <form id="cadastro" action="Cadastrar" method="post">
                        <label for="id_nome">Nome completo</label>
                        <input class="inputText" type="text" name="nome" id="id_nome" onkeypress="document.getElementById('audioUsuario').play()" onkeydown="document.getElementById('audioUsuario').pause()">
                        <br>
                        <br>
                        <label for="id_usuario">Usuario</label>
                        <input class="inputText" type="text" name="usuario" id="id_usuario" onkeypress="document.getElementById('audioUsuario').play()" onkeydown="document.getElementById('audioUsuario').pause()">
                        <br>
                        <br>
                        <label for="id_senha">Senha</label>
                        <input class="inputText" placeholder="••••••••••••" type="password" name="senha" id="id_senha" onkeypress="document.getElementById('audioSenha').play()" onkeydown="document.getElementById('audioSenha').pause()">
                        <br>
                        <br>
                        <label for="id_confSenha">Confime sua senha</label>
                        <input class="inputText" placeholder="••••••••••••" type="password" name="confirmacaoSenha" id="id_confSenha" onkeypress="document.getElementById('audioSenha').play()" onkeydown="document.getElementById('audioSenha').pause()">
                        <br>
                        <br>
                        <center>
                            <input type="button" onclick="cadastrar()" value="Cadatrar">
                            <input type="reset" value="Cancelar">
                            <input type="button" onclick="window.open('index.jsp','_self')" value="Voltar">
                        </center>
                    </form>
                    <div class="erro"><span id="erro"></span></div>
                </div>
            </div>
        </div>
    </body>
</html>

