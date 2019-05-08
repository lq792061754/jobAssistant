package com.lq.job.controller;

import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpSession;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;

import com.lq.job.domain.Admin;
import com.lq.job.service.AdminService;

@Controller
public class AdminController {
    @Autowired
    private AdminService adminService;

    @RequestMapping(value="login")
    public String adminLogin(Admin admin, HttpServletRequest request) {
        Admin a = adminService.findOneAdmin(admin);
        if (a != null) {
            HttpSession session=request.getSession();//获取session并将userName存入session对象
            session.setAttribute("Admin", a);
            return "admin/main";
        }
        else
            return "redirect:login.html？ERROR=1";
    }
    @RequestMapping(value="loginOut")
    public String loginOut(HttpServletRequest request) {
        HttpSession session = request.getSession();
        session.invalidate();
        return "redirect:login.html";
    }
    @RequestMapping(value="changePwd")
    public String changePwd(String newPassword, Model model) {
        int i = adminService.changeAdminPwd(newPassword);
        if (i > 0)
        model.addAttribute("MESSAGE", "修改成功！");
        else
            model.addAttribute("MESSAGE", "修改失败！");
        return "admin/changepwd";
    }
}
