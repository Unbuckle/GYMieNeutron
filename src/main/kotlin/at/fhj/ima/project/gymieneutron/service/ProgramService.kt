package at.fhj.ima.project.gymieneutron.service

import at.fhj.ima.project.gymieneutron.entity.Programs
import at.fhj.ima.project.gymieneutron.repository.ProgramRepository
import org.springframework.stereotype.Service

@Service
class ProgramService(val programRepository: ProgramRepository) {
    fun findAll(): List<Programs> {
        return programRepository.findAll()
    }
}