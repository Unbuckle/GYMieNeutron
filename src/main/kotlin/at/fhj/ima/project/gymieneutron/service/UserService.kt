package at.fhj.ima.project.gymieneutron.service

import at.fhj.ima.project.gymieneutron.dto.UserDto
import at.fhj.ima.project.gymieneutron.entity.User
import at.fhj.ima.project.gymieneutron.entity.UserRole
import at.fhj.ima.project.gymieneutron.repository.UserRepository
import org.springframework.security.crypto.bcrypt.BCryptPasswordEncoder
import org.springframework.stereotype.Service
import org.springframework.transaction.annotation.Transactional
import java.time.LocalDate

@Service
class UserService(val userRepository: UserRepository) {
    fun createNewUser(): UserDto {
        val newUser = User()
        newUser.dayOfBirth = LocalDate.now()
        return convertEntityToDto(newUser)
    }

    private fun convertEntityToDto(entity: User): UserDto {
        return UserDto(entity.id,  entity.username, entity.password,
                entity.firstName, entity.lastName, entity.dayOfBirth, entity.email)
    }

    @Transactional
    fun save(dto: UserDto) {

        val user = convertDtoToEntity(dto)

        userRepository.save(user)
    }

    private fun convertDtoToEntity(dto: UserDto): User {

        // logic that prevents specific roles/users from editing certain attributes could be added here

        val user = User()
        user.id = dto.id
        user.role = UserRole.ROLE_USER
        user.username = dto.username
        user.password = BCryptPasswordEncoder().encode(dto.password)
        user.firstName = dto.firstName
        user.lastName = dto.lastName
        user.dayOfBirth = dto.dayOfBirth
        user.email = dto.email
        return user
    }

    fun findByFirstnameOrLastname(search: String): List<User> {
        return userRepository.findByFirstnameOrLastname(search)
    }

    fun findAll(): List<User> {
        return userRepository.findAll()
    }

}
