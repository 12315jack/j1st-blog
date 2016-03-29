package www.j1stiot.cn;

import org.springframework.stereotype.Controller;
import org.springframework.web.bind.annotation.RequestMapping;

/**
 * This is a test Controller
 */
@Controller
public class HelloController {
    @RequestMapping("/hello")
    public String hello(){
        return "hello";
    }
}
