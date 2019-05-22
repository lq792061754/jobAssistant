package com.lq.job.controller;

import java.util.List;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.stereotype.Controller;
import org.springframework.ui.Model;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestParam;
import org.springframework.web.bind.annotation.ResponseBody;

import com.github.pagehelper.PageHelper;
import com.github.pagehelper.PageInfo;
import com.lq.job.domain.CompanyMsg;
import com.lq.job.service.CompanyMsgService;

@Controller
public class CompanyMsgController {
    @Autowired
    private CompanyMsgService companyMsgService;
    @RequestMapping(value="insertCompanyMsg")
    public String insertCompanyMsg(CompanyMsg company, Model model) {
        int i = companyMsgService.insertCompanyMsg(company);
        if (i > 0) {
            model.addAttribute("RESULT", "success");
        } else {
            model.addAttribute("RESULT", "success");
        }
        return "admin/uploadCompany";
    }
    @RequestMapping(value="getAllCompanyMsg")
    @ResponseBody
    public List<CompanyMsg> getAllComMsg() {
        List<CompanyMsg> list = companyMsgService.getAllCompanyMsg();
                return list;
    }
    @RequestMapping(value="showCompanyMsg")
    @ResponseBody
    public PageInfo<CompanyMsg> showCompanyMsg(@RequestParam(defaultValue="1")Integer page) {
        PageHelper.startPage(page, 5);//分页
        List<CompanyMsg> li = companyMsgService.getAllCompanyMsg();
        PageInfo<CompanyMsg> list = new PageInfo<>(li);
        return list;
    }
    @RequestMapping(value="modifyCompanyMsg")
    public String modifyCompanyMsg(CompanyMsg company) {
        companyMsgService.updateCompanyMsgById(company);
        return "admin/CompanyManage";
    }
}
