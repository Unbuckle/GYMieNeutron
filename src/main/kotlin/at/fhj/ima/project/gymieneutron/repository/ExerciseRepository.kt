package at.fhj.ima.project.gymieneutron.repository

import at.fhj.ima.project.gymieneutron.entity.Exercise
import at.fhj.ima.project.gymieneutron.entity.User
import org.springframework.data.jpa.repository.JpaRepository
import org.springframework.stereotype.Repository

@Repository
interface ExerciseRepository : JpaRepository<Exercise, Int> {
}