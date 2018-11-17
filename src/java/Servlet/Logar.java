/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.BufferedReader;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStreamReader;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author marcov
 */
@WebServlet(name = "Logar", urlPatterns = {"/Logar"})
public class Logar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */

    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        List<Jogador> listaDeUsuarios = le();

        boolean portaAcesso = false;
        for (Jogador jogador : listaDeUsuarios) {
            if (usuario.equals(jogador.getUsuario()) && senha.equals(jogador.getSenha())) {
                portaAcesso = true;
            }
        }

        if (!portaAcesso) {
            request.getRequestDispatcher("cadastro.html").forward(request, response);
        } else {
            request.getRequestDispatcher("jogo.html").forward(request, response);
        }
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">

    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request  servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException      if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

    public List<Jogador> le() throws IOException {
        List<Jogador> result = new ArrayList<>();
        String caminhoDir = getServletContext().getRealPath("/WEB-INF");
        File arquivo = new File(caminhoDir, "jogador.txt");
        if (arquivo.exists()) {
            String linha;
            String cli = getServletContext().getRealPath("/WEB-INF/jogador.txt");
            BufferedReader b = new BufferedReader(
                    new InputStreamReader(
                            new FileInputStream(cli), Charset.forName("UTF-8").newDecoder()));
            while ((linha = b.readLine()) != null)
                if (!linha.isEmpty()) {

                    String[] vetCliente = linha.split(";");
                    Jogador jogador = new Jogador(vetCliente[0], vetCliente[1], vetCliente[3], vetCliente[2]);
                    result.add(jogador);
                }
            b.close();
        }
        return result;
    }
}
