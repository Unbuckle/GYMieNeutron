package at.fhj.ima.project.gymieneutron.controller.advice

import at.fhj.ima.project.gymieneutron.repository.UserRepository
import org.springframework.security.authentication.AnonymousAuthenticationToken
import org.springframework.security.core.context.SecurityContextHolder
import org.springframework.ui.Model
import org.springframework.web.bind.annotation.ControllerAdvice
import org.springframework.web.bind.annotation.ModelAttribute


@ControllerAdvice
class CurrentUserControllerAdvice(val userRepository: UserRepository) {

    @ModelAttribute
    fun addCurrentUser(model: Model) {

        val auth = SecurityContextHolder.getContext().authentication

        if (auth !is AnonymousAuthenticationToken) {
            val username = auth.name
            val currentUser = userRepository.findByUsername(username)
            model.addAttribute("currentUser", currentUser)
        }
    }
}
