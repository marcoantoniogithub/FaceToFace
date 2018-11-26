<%-- 
    Document   : index
    Created on : 25/11/2018, 19:15:57
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
        <script>
            function recuperarLogin(){
                <% String portaAcesso = "";
                    if(request.getAttribute("portaAcesso") != null)
                        portaAcesso=(String)(request.getAttribute("portaAcesso"));          
                 %>
                var erro = "<%=portaAcesso%>";
                if(erro == "false"){
                    document.getElementById('erro').innerHTML = "ERRO: Essa conta não foi cadastrada"
                }
                document.getElementById('usuario').value = localStorage.getItem("usuario");
                document.getElementById('senha').value = localStorage.getItem("senha");   
            }
        </script>
    </head>
    <body onload="recuperarLogin()">
        <div class="background">
            <div class="centralizar">
                <audio id="audioUsuario">
                    <source src="audio/CLICK10A.wav" type="audio/wav">
                </audio>
                <audio id="audioSenha">
                    <source src="audio/CLICK10B.wav" type="audio/wav">
                </audio>
                <div class="boxForm">
                    <div class="tituloPrincipal">
                        <h1> Face to Face </h1>
                    </div>
                    <form id="id_login" name="n_login" action="Logar" method="POST">
                        <label for="id_usuario">Usuario</label>
                        <input class="inputText" type="text" name="usuario" id="usuario" onkeypress="document.getElementById('audioUsuario').play()" onkeydown="document.getElementById('audioUsuario').pause()">
                        <br>
                        <br>
                        <label for="id_senha">Senha</label>
                        <input class="inputText" placeholder="••••••••••••" type="password" name="senha" id="senha" maxlength="12"  onkeypress="document.getElementById('audioSenha').play()" onkeydown="document.getElementById('audioSenha').pause()">
                        <br>
                        <br>
                        <input type="checkbox" id="id_lembrarSenha">
                        <label for="id_lembrarSenha"> Lembrar Senha</label>
                        <br>
                        <br>
                        <center class="botaoIndex">
                            <input type="button" onclick="logar()" value="Entrar">
                            <input onclick="window.open('cadastro.jsp','_self')" type="button" value="Cadastrar">
                        </center>
                    </form>
                    <div class="erro"><span id="erro"></span></div>
                </div>
            </div>
        </div>
    </body>
</html>
