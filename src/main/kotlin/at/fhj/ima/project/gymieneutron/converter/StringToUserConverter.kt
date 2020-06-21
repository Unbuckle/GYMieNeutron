package at.fhj.ima.project.gymieneutron.converter


import at.fhj.ima.project.gymieneutron.entity.User
import at.fhj.ima.project.gymieneutron.repository.UserRepository
import org.springframework.core.convert.converter.Converter
import org.springframework.stereotype.Component
import java.time.LocalDate
import java.time.format.DateTimeFormatter

@Component
class StringToUserConverter(val userRepository: UserRepository) : Converter<String?, User?> {
    override fun convert(source: String): User? {
        if (source.isNullOrBlank()) {
            return null
        }
        return userRepository.getOne(Integer.parseInt(source));
    }

}
