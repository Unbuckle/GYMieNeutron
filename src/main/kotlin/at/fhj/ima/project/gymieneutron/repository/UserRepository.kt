package at.fhj.ima.project.gymieneutron.repository

import at.fhj.ima.project.gymieneutron.entity.User
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.data.jpa.repository.Query
import org.springframework.data.repository.query.Param
import org.springframework.stereotype.Repository

@Repository
interface UserRepository : JpaRepository<User, Int> {

    @Query("FROM User where firstName = :search OR lastName = :search")
    fun findByFirstnameOrLastname(@Param("search") search: String): List<User>

    @Query("FROM User where username = :username")
    fun findByUsername(@Param("username") username: String): User



}
