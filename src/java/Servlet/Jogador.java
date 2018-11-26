package Servlet;

public class Jogador {

    private String nome;
    private String usuario;
    private String senha;
    private String email;

    public Jogador() {
    }

    public Jogador(String nome, String usuario, String senha) {
        this.nome = nome;
        this.usuario = usuario;
        this.senha = senha;
    }

    public String getNome() {
        return nome;
    }

    public String getUsuario() {
        return usuario;
    }

    public String getSenha() {
        return senha;
    }

}
