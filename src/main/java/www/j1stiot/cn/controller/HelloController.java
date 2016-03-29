package www.j1stiot.cn.controller;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * This is a test Controller
 */
@Controller
public class HelloController {
    @RequestMapping("/index")
    public String hello(){
        return "pages/front/index";
    }
}
