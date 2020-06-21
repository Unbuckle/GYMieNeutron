package at.fhj.ima.project.gymieneutron.entity

import javax.persistence.*


@Entity
class Blog (
            @Id
            @GeneratedValue(strategy = GenerationType.IDENTITY)
            var id: Int? = null,
            var title: String? = null,
            var infotxt: String? = null,

            @ManyToMany(fetch = FetchType.EAGER)
            var files: List<File>? = null,
            @ManyToOne
            var user: User? = null

    ) : Comparable<Exercise> {
        override fun compareTo(other: Exercise): Int {
            return compareValues(id, other.id)
        }

        override fun equals(other: Any?): Boolean {
            if (this === other) return true
            if (javaClass != other?.javaClass) return false
            other as Exercise
            if (id != other.id) return false
            return true
        }

        override fun hashCode(): Int {
            return id.hashCode()
        }
    }

