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
 *
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
    
    String nome = "";
    String usuario = "";
    String senha = "";
    String email = "";
    
    protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setContentType("text/html;charset=UTF-8");
        nome = request.getParameter("n_nome");
        usuario = request.getParameter("n_usuario");
        senha = request.getParameter("n_senha");
        email = request.getParameter("n_email");
        System.out.println("OS CAMPOS ESTAO PREENCHIDO");
        Jogador c = new Jogador();
        c.setNome(nome);
        c.setUsuario(usuario);
        c.setSenha(senha);
        grava(c);
        request.getRequestDispatcher("index.html").forward(request, response);
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
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
    public void grava(Jogador c) throws IOException
    {
            String caminhoDir = getServletContext().getRealPath("/WEB-INF");    
            File arquivo = new File(caminhoDir,"jogador.txt");
	    if(arquivo.exists()==false)
                arquivo.createNewFile();
            String cli = getServletContext().getRealPath("/WEB-INF/jogador.txt");    
            OutputStreamWriter g = new OutputStreamWriter(
                                       new FileOutputStream(cli,true),Charset.forName("UTF-8").newEncoder());
            BufferedWriter b = new BufferedWriter(g);
            b.write(c.getNome()+";");
            b.write(c.getUsuario()+";");
            b.write(c.getSenha());
            b.newLine();
            b.flush();
            b.close();   
    }
}
