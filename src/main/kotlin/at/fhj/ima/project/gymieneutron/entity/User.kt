package at.fhj.ima.project.gymieneutron.entity
import com.sun.istack.NotNull
import java.io.Serializable
import java.time.LocalDate
import javax.persistence.*
import javax.validation.constraints.Past
import javax.validation.constraints.Size

enum class UserRole {
    ROLE_USER,
    ROLE_ADMIN
}

@Entity
@Table(uniqueConstraints = [UniqueConstraint(name = "username_UK", columnNames = ["username"])])
class User(
        @Id
        @GeneratedValue(strategy = GenerationType.IDENTITY)
        var id: Int? = null,
        @Enumerated(EnumType.STRING)
        var role: UserRole? = null,
        @Column(nullable = false, unique = true)
        @field:NotNull()
        var username: String? = null,
        var password: String? = null,
        @field:Size(min = 2, max = 240)
        var firstName: String? = null,
        @field:Size(min = 2, max = 240)
        var lastName: String? = null,
        @field:Past
        var dayOfBirth: LocalDate? = null,
        var email: String? = null,

        @ManyToMany
        var programs: Set<Programs>? = null,
        @ManyToMany
        var exercise: Set<Exercise>? = null,
        @ManyToMany(fetch = FetchType.EAGER)
        var files: List<File>? = null

) : Comparable<User>, Serializable{
    override fun compareTo(other: User): Int {
        return compareValues(username, other.username)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false
        other as User
        if (username != other.username) return false
        return true
    }

    override fun hashCode(): Int {
        return username.hashCode()
    }
}


