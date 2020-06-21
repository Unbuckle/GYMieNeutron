package at.fhj.ima.project.gymieneutron.dto

import at.fhj.ima.project.gymieneutron.entity.Blog
import at.fhj.ima.project.gymieneutron.entity.User
import java.io.Serializable

class BlogDto(
        var id: Int? = null,
        var title: String? = null,
        var infotxt: String? = null,
        var user: User? = null

) : Comparable<Blog>, Serializable {
    override fun compareTo(other: Blog): Int {
        return compareValues(id, other.id)
    }

    override fun equals(other: Any?): Boolean {
        if (this === other) return true
        if (javaClass != other?.javaClass) return false
        other as Blog
        if (id != other.id) return false
        return true
    }

    override fun hashCode(): Int {
        return id.hashCode()
    }
}
