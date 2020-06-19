package at.fhj.ima.project.gymieneutron.controller

import org.springframework.stereotype.Controller
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod

@Controller
class HomePageController {

    @RequestMapping("", method = [RequestMethod.GET])
    fun homePage(): String {
        return "redirect:start"
    }

}
