package com.senasoft.reto.Controller;


import com.senasoft.reto.Repository.UsersRepository;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.GetMapping;


@Controller
public class viewUsers{

    @Autowired
    UsersRepository usersRepository;



    @GetMapping("/")
    public String login(Model model)
    {
        return "login";
    }



}
