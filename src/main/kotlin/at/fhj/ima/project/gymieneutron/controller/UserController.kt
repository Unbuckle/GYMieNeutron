package at.fhj.ima.project.gymieneutron.controller

import at.fhj.ima.project.gymieneutron.entity.User
import at.fhj.ima.project.gymieneutron.repository.ExerciseRepository
import at.fhj.ima.project.gymieneutron.repository.ProgramRepository
import at.fhj.ima.project.gymieneutron.repository.UserRepository
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
class UserController (val userRepository: UserRepository,
                      val programRepository: ProgramRepository,
                      val exerciseRepository: ExerciseRepository ) {

    fun showEditUserView(model: Model): String {
        model.set("programs", programRepository.findAll())
        model.set("exercise", exerciseRepository.findAll())
        return "editUser"}


    @RequestMapping("/editUser", method = [RequestMethod.GET])
    @Secured("ROLE_ADMIN")
    fun editUser(model: Model, @RequestParam(required = false) username: String?): String {
        //model.set("programs", programRepository.findAll())
        //model.set("exercises", exerciseRepository.findAll())
        if (username != null) {
            val user = userRepository.findByUsername(username);
            model.set("user", user)
        } else {
            val newUser = User()
            newUser.dayOfBirth = LocalDate.now()
            model.set("user", newUser)
        }
        return showEditUserView(model)
    }

    @RequestMapping("/changeUser", method = [RequestMethod.POST])
    @Secured("ROLE_ADMIN")
    fun changeUser(@ModelAttribute ("user") @Valid user: User,
                   bindingResult: BindingResult, model: Model): String {
        if (bindingResult.hasErrors()) {
            return  showEditUserView(model)
        }
        try {
            userRepository.save(user)
        } catch (dive: DataIntegrityViolationException) {
            if (dive.message.orEmpty().contains("constraint [username_UK]")) {
                bindingResult.rejectValue("username", "username.alreadyInUse", "Username already in use.");
                return showEditUserView(model)
            } else {
                throw dive;
            }
        }
        userRepository.save(user);
        return "redirect:/editUser?username=" + user.username
    }

    @RequestMapping("/listUser", method = [RequestMethod.GET])
    fun listUser(model: Model, @RequestParam(required = false) search: String?): String {
        if (search != null) {
            model.set("user", userRepository.findByFirstnameOrLastname(search))
        } else {
            model.set("user", userRepository.findAll())
        }
        return "listUser"
    }

    @RequestMapping("/deleteUser", method = [RequestMethod.POST])
    @Secured("ROLE_ADMIN")
    fun deleteUser(model: Model, @RequestParam username: String): String {
        val user = userRepository.findByUsername(username);
        userRepository.delete(user);
        model.set("message", "User $username deleted")
        return listUser(model, null)
    }

    @RequestMapping("/menWorkout", method = [RequestMethod.GET])
    fun menWorkout(model: Model): String {
        model.set("programs", programRepository.findAll())
        return "menWorkout"
    }

    @RequestMapping("/womenWorkout", method = [RequestMethod.GET])
    fun womenWorkout(model: Model): String {
        model.set("programs", programRepository.findAll())
        return "womenWorkout"
    }


    @RequestMapping ("/start", method = [RequestMethod.GET])
    fun start (model: Model): String {
        model.set("programs", programRepository.findAll())
        return "start"
    }

}

