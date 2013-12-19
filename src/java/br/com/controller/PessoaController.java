package br.com.controller;

import br.com.model.Pessoa;
import java.util.ArrayList;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;
import javax.servlet.http.HttpServletRequest;
import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.multipart.MultipartFile;
import org.springframework.web.servlet.ModelAndView;

@Controller
public class PessoaController {

    HttpServletRequest request;

    /**
     * Método utilizado para processar o cadastro de uma pessoa
     * @param p_pessoa
     * @param p_request
     * @return 
     */
    @RequestMapping(value = "/pessoa_adiciona", method = RequestMethod.POST)
    public ModelAndView pessoaAdiciona(@ModelAttribute Pessoa p_pessoa, HttpServletRequest p_request) {

        this.request = p_request;

        
        
        ArrayList<Pessoa> pessoas = new ArrayList<Pessoa>();
        pessoas.add(new Pessoa(1, "João"));
        pessoas.add(new Pessoa(2, "Maria"));
        pessoas.add(new Pessoa(3, "Cleunícia"));

        
        
        ModelAndView mv;
        mv = new ModelAndView("lista_pessoas");
        mv.addObject("pessoas", pessoas);
        return mv;
    }

    /**
     * Método utilizado apenas para mostrar o formulário de cadastro de pessoas 
     */
    @RequestMapping(value = "/pessoa_adiciona_show")
    public ModelAndView pessoaAdicionaShow() {

        ModelAndView mv;
        mv = new ModelAndView("cadastro_pessoa");        
        return mv;

    }
    
    
    
   /**
    * Método utlizado para mostrar a lista de pessoas cadastradas
    * @return 
    */
    @RequestMapping(value = "/lista_pessoas")
    public ModelAndView pessoasLista() {

         ArrayList<Pessoa> pessoas = new ArrayList<Pessoa>();
        pessoas.add(new Pessoa(1, "João"));
        pessoas.add(new Pessoa(2, "Maria"));
        pessoas.add(new Pessoa(3, "Cleunícia"));

        
        
        ModelAndView mv;
        mv = new ModelAndView("lista_pessoas");
        mv.addObject("pessoas", pessoas);
        return mv;

    }

}
