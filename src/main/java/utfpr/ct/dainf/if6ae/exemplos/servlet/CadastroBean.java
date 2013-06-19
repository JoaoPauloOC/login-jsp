/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */
package utfpr.ct.dainf.if6ae.exemplos.servlet;

import javax.ejb.Stateless;

/**
 *
 * @author João Paulo
 */
@Stateless
public class CadastroBean {

    private String usuario = "";
    private String senha = "";

    public String getUsuario() {
        return usuario;
    }

    public void setUsuario(String usuario) {
        this.usuario = usuario;
    }

    public String getSenha() {
        return senha;
    }

    public void setSenha(String senha) {
        this.senha = senha;
    }

}
