package at.fhj.ima.project.gymieneutron.repository

import at.fhj.ima.project.gymieneutron.entity.Programs
import at.fhj.ima.project.gymieneutron.entity.User
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface ProgramRepository : JpaRepository<Programs, Int> {
}
