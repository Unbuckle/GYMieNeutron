package at.fhj.ima.project.gymieneutron.dto

import at.fhj.ima.project.gymieneutron.entity.User
import at.fhj.ima.project.gymieneutron.entity.Exercise
import at.fhj.ima.project.gymieneutron.entity.Programs
import at.fhj.ima.project.gymieneutron.entity.UserRole
import org.springframework.http.StreamingHttpOutputMessage
import java.io.Serializable
import java.time.LocalDate
import javax.validation.constraints.NotNull
import javax.validation.constraints.Past
import javax.validation.constraints.Size

class UserDto(
        var id: Int? = null,
        @field:NotNull()
        var username: String? = null,
        var password: String? = null,
        @field:NotNull()
        var firstName: String? = null,
        @field:Size(min = 2, max = 240)
        var lastName: String? = null,
        @field:Past
        var dayOfBirth: LocalDate? = null,
        var email: String? = null
) : Comparable<User>, Serializable {
    override fun compareTo(other: User): Int {
        return compareValues(id, other.id)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false
        other as User
        if (id != other.id) return false
        return true
    }

    override fun hashCode(): Int {
        return id.hashCode()
    }
}
