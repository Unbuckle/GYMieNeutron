package at.fhj.ima.project.gymieneutron.controller

import at.fhj.ima.project.gymieneutron.dto.BlogDto
import at.fhj.ima.project.gymieneutron.dto.UserDto
import at.fhj.ima.project.gymieneutron.entity.Blog
import at.fhj.ima.project.gymieneutron.entity.User
import at.fhj.ima.project.gymieneutron.entity.UserRole
import at.fhj.ima.project.gymieneutron.repository.BlogRepository
import at.fhj.ima.project.gymieneutron.repository.ExerciseRepository
import at.fhj.ima.project.gymieneutron.repository.ProgramRepository
import at.fhj.ima.project.gymieneutron.repository.UserRepository
import at.fhj.ima.project.gymieneutron.service.BlogService
import at.fhj.ima.project.gymieneutron.service.UserService
import org.springframework.beans.factory.annotation.Autowired
import org.springframework.dao.DataIntegrityViolationException
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.ui.set
import org.springframework.web.bind.annotation.ModelAttribute
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
import org.springframework.web.bind.annotation.RequestParam
import java.time.LocalDate
import org.springframework.data.domain.Example
import org.springframework.security.access.annotation.Secured
import org.springframework.validation.AbstractBindingResult
import org.springframework.validation.BindingResult
import javax.validation.Valid

@Controller
class BlogController(val userRepository: UserRepository,
                     val programRepository: ProgramRepository,
                     val exerciseRepository: ExerciseRepository,
                     val userService: UserService,
                     val blogRepository: BlogRepository,
                     val blogService: BlogService) {


    @RequestMapping("/blog", method = [RequestMethod.GET])
    fun blog(model: Model, @RequestParam(required = false) id: Int?): String {
        model.set("blogdto", blogService.createNewBlog())
        return "blog"
    }

    @RequestMapping("/editBlog", method = [RequestMethod.POST])
    fun editBlog(@ModelAttribute("blogdto") @Valid blogdto: BlogDto?,
                 bindingResult: BindingResult, model: Model): String {
        if (bindingResult.hasErrors()) {
            return "blog"
        }
        try {
            if (blogdto != null) {
                blogService.save(blogdto)
            }
        } catch (dive: DataIntegrityViolationException) {
            if (dive.message.orEmpty().contains("constraint [username_UK]")) {
                bindingResult.rejectValue("id", "username.alreadyInUse", "Username already in use.");
                return "blog"
            } else {
                throw dive;
            }
        }
        return "redirect:/blog"
    }

}

