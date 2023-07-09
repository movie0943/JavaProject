package org.sang.controller;

import org.sang.bean.RespBean;
import org.sang.bean.User;
import org.sang.service.UserService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.web.bind.annotation.PostMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

/**
 * Created by sang on 2017/12/17.
 */
@RestController
public class LoginRegController {

    @Autowired
    UserService userService;

    @RequestMapping("/login_error")
    public RespBean loginError() {
        return new RespBean("error", "登入失敗!");
    }

    @RequestMapping("/login_success")
    public RespBean loginSuccess() {
        return new RespBean("success", "登入成功!");
    }

    @RequestMapping("/login_page")
    public RespBean loginPage() {
        return new RespBean("error", "尚未登入，請登入!");
    }

    @PostMapping("/reg")
    public RespBean reg(User user) {
        int result = userService.reg(user);
        if (result == 0) {
            return new RespBean("success", "註冊成功!");
        } else if (result == 1) {
            return new RespBean("error", "用戶名重複，請重輸入!");
        } else {
            return new RespBean("error", "註冊失敗!");
        }
    }
}
