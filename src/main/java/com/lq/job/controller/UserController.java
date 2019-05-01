package com.lq.job.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.util.DigestUtils;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.ResponseBody;

import com.lq.job.domain.User;
import com.lq.job.service.UserService;

@Controller
public class UserController {
    private SimpleDateFormat sdf = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");
    @Autowired
    private UserService userService;
    @RequestMapping(value="userRegister")
    public String register(User user) {
        String md5Password = DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
        Date date = new Date();
        user.setPassword(md5Password);
        user.setCreateTime(sdf.format(date));
        int i = userService.insertUser(user);
        if (i != 0) {
        return "redirect:userlogin.html?msg=1";
        } else {
            return "redirect:register.html?error=1";
        }
    }
    @RequestMapping(value="userLogin")
    @ResponseBody
    public String userLogin(User user) {
        String md5Password = DigestUtils.md5DigestAsHex(user.getPassword().getBytes());
        user.setPassword(md5Password);
        User u = userService.findOneUser(user);
        if (u != null) {
        return "欢迎登陆";
        } else {
//            redirect:userlogin.html?msg=2
            return "登陆失败";
        }
    }
    @RequestMapping(value="userExercise")
    public String showUserExercise() {
        return "user/showUserExercise";
    }
    @RequestMapping(value="doExercise")
    public String doExercise(Integer id, Model model) {
        model.addAttribute("ID", id);
        return "user/doExercise";
    }
}
