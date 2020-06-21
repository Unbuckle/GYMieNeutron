package at.fhj.ima.project.gymieneutron.service

import at.fhj.ima.project.gymieneutron.dto.UserDto
import at.fhj.ima.project.gymieneutron.entity.User
import at.fhj.ima.project.gymieneutron.entity.UserRole
import at.fhj.ima.project.gymieneutron.repository.BlogRepository
import at.fhj.ima.project.gymieneutron.repository.UserRepository
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.time.LocalDate
import at.fhj.ima.project.gymieneutron.dto.BlogDto
import at.fhj.ima.project.gymieneutron.entity.Blog
import org.springframework.security.core.context.SecurityContextHolder

@Service
class BlogService(val blogRepository: BlogRepository,
val userRepository: UserRepository) {
    fun createNewBlog(): BlogDto {
        val newBlog = Blog()
        return convertEntityToDto(newBlog)
    }

    private fun convertEntityToDto(entity: Blog): BlogDto {
        return BlogDto(entity.id,  entity.title, entity.infotxt, entity.user)
    }

    @Transactional
    fun save(dto: BlogDto) {

        val blog = convertDtoToEntity(dto)

        blogRepository.save(blog)
    }

    private fun convertDtoToEntity(dto: BlogDto): Blog {

        // logic that prevents specific roles/users from editing certain attributes could be added here
        val auth = SecurityContextHolder.getContext().authentication.name
        val user = userRepository.findByUsername(auth)

        val blog = Blog()
        blog.id = dto.id
        blog.title = dto.title
        blog.infotxt = dto.infotxt
        blog.user = user
        return blog
    }

    /*fun findByFirstnameOrLastname(search: String): List<User> {
        return userRepository.findByFirstnameOrLastname(search)
    }

    fun findAll(): List<User> {
        return userRepository.findAll()
    }*/

}
