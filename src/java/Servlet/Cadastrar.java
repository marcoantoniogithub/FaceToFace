/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Servlet;

import java.io.BufferedWriter;
import java.io.File;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.OutputStreamWriter;
import java.io.PrintWriter;
import java.nio.charset.Charset;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 * @author marcov
 */
@WebServlet(name = "Cadastrar", urlPatterns = {"/Cadastrar"})
public class Cadastrar extends HttpServlet {

    /**
     * Processes requests for both HTTP <code>GET</code> and <code>POST</code>
     * methods.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */


    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        String nome = request.getParameter("nome");
        String usuario = request.getParameter("usuario");
        String senha = request.getParameter("senha");

        Jogador jogador = new Jogador(nome, usuario, senha);
        System.out.println("Jogador: " + jogador.toString());

        grava(jogador);

        request.getRequestDispatcher("index.jsp").forward(request, response);
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

    private void grava(Jogador jogador) throws IOException {
        String diretorioAqruivo = getServletContext().getRealPath("/WEB-INF");
        File arquivo = new File(diretorioAqruivo, "jogador.txt");

        if (!arquivo.exists()) {
            arquivo.createNewFile();
        }

        String diretorioArquivoComArquivo = getServletContext().getRealPath("/WEB-INF/jogador.txt");
        OutputStreamWriter outputStreamWriter = new OutputStreamWriter(
                new FileOutputStream(diretorioArquivoComArquivo, true), Charset.forName("UTF-8").newEncoder());

        BufferedWriter bufferedWriter = new BufferedWriter(outputStreamWriter);

        bufferedWriter.write(jogador.getNome() + ";");
        bufferedWriter.write(jogador.getUsuario() + ";");
        bufferedWriter.write(jogador.getSenha());
        bufferedWriter.newLine();
        bufferedWriter.flush();
        bufferedWriter.close();
    }
}
