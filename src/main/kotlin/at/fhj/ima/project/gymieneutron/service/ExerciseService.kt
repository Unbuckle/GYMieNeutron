package at.fhj.ima.project.gymieneutron.service

import at.fhj.ima.project.gymieneutron.entity.Exercise
import at.fhj.ima.project.gymieneutron.repository.ExerciseRepository
import org.springframework.stereotype.Service

@Service
class ExerciseService(val exerciseRepository: ExerciseRepository) {
    fun findAll(): List<Exercise> {
        return exerciseRepository.findAll()
    }
}