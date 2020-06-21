package at.fhj.ima.project.gymieneutron.controller

import at.fhj.ima.project.gymieneutron.dto.UserDto
import at.fhj.ima.project.gymieneutron.entity.User
import at.fhj.ima.project.gymieneutron.entity.UserRole
import at.fhj.ima.project.gymieneutron.repository.ExerciseRepository
import at.fhj.ima.project.gymieneutron.repository.ProgramRepository
import at.fhj.ima.project.gymieneutron.repository.UserRepository
import at.fhj.ima.project.gymieneutron.service.ExerciseService
import at.fhj.ima.project.gymieneutron.service.ProgramService
import at.fhj.ima.project.gymieneutron.service.UserService
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
class UserController (val userService: UserService,
                      val programService: ProgramService,
                      val exerciseService: ExerciseService) {

    fun showEditUserView(model: Model): String {
        model.set("programs", programService.findAll())
        model.set("exercise", exerciseService.findAll())
        return "editUser"}


    @RequestMapping("/editUser", method = [RequestMethod.GET])
    @Secured("ROLE_ADMIN")
    fun editUser(model: Model, @RequestParam(required = false) username: String?): String {
        //model.set("programs", programRepository.findAll())
        //model.set("exercises", exerciseRepository.findAll())
        if (username != null) {
            val user = userService.findByUsername(username);
            model.set("user", user)
        } else {
            model.set("user", userService.createNewUser())
        }
        return showEditUserView(model)
    }

    @RequestMapping("/changeUser", method = [RequestMethod.POST])
    @Secured("ROLE_ADMIN")
    fun changeUser(@ModelAttribute ("user") @Valid user: UserDto,
                   bindingResult: BindingResult, model: Model): String {
        if (bindingResult.hasErrors()) {
            return  showEditUserView(model)
        }
        try {
            userService.save(user)
        } catch (dive: DataIntegrityViolationException) {
            if (dive.message.orEmpty().contains("constraint [username_UK]")) {
                bindingResult.rejectValue("username", "username.alreadyInUse", "Username already in use.");
                return showEditUserView(model)
            } else {
                throw dive;
            }
        }
//        userRepository.save(user);
        return "redirect:/editUser?username=" + user.username
    }

    @RequestMapping("/listUser", method = [RequestMethod.GET])
    fun listUser(model: Model, @RequestParam(required = false) search: String?): String {
        if (search != null) {
            model.set("user", userService.findByFirstnameOrLastname(search))
        } else {
            model.set("user", userService.findAll())
        }
        return "listUser"
    }

    @RequestMapping("/deleteUser", method = [RequestMethod.POST])
    @Secured("ROLE_ADMIN")
    fun deleteUser(model: Model, @RequestParam username: String): String {
        //val user = userService.findByUsername(username);
        userService.delete(username);
        model.set("message", "User $username deleted")
        return listUser(model, null)
    }

   /* @RequestMapping("/menWorkout", method = [RequestMethod.GET])
    fun menWorkout(model: Model): String {
        model.set("programs", programService.findAll())
        return "menWorkout"
    }

    @RequestMapping("/womenWorkout", method = [RequestMethod.GET])
    fun womenWorkout(model: Model): String {
        model.set("programs", programService.findAll())
        return "womenWorkout"
    }*/


    @RequestMapping ("/start", method = [RequestMethod.GET])
    fun start (model: Model): String {
        model.set("programs", programService.findAll())
        return "start"
    }

    @RequestMapping ("/register" , method = [RequestMethod.GET])
    fun register (model: Model): String{
        val userdto: UserDto = UserDto()
        model.set("userdto", userdto)
        return "register"
    }

    @RequestMapping("/registerpost", method = [RequestMethod.POST])
    fun registerpost(@ModelAttribute("userdto") @Valid user: UserDto, bindingResult: BindingResult, model: Model): String {
        if (bindingResult.hasErrors()) {
            return "/register"
        }
        try {
            userService.save(user)
        } catch (dive: DataIntegrityViolationException) {
            if (dive.message.orEmpty().contains("username_UK")) {
                bindingResult.rejectValue("username", "username.alreadyInUse", "Username already in use.");
                return showEditUserView(model)
            } else {
                throw dive;
            }
        }
        return "/start"
    }


}

