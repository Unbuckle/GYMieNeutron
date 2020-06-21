package at.fhj.ima.project.gymieneutron.controller
import at.fhj.ima.project.gymieneutron.service.ProgramService
import org.springframework.stereotype.Controller
import org.springframework.ui.Model
import org.springframework.ui.set
import org.springframework.web.bind.annotation.RequestMapping
import org.springframework.web.bind.annotation.RequestMethod
@Controller
class WorkoutController(val programService: ProgramService) {
    @RequestMapping("/menWorkout", method = [RequestMethod.GET])
    fun menWorkout(model: Model): String {
        model.set("programs", programService.findAll())
        return "menWorkout"
    }
    @RequestMapping("/womenWorkout", method = [RequestMethod.GET])
    fun womenWorkout(model: Model): String {
        model.set("programs", programService.findAll())
        return "womenWorkout"
    }
    @RequestMapping ("/mAbs", method = [RequestMethod.GET])
    fun mAbs (model: Model): String {
        model.set("programs", programService.findAll())
        return "mAbs"
    }
    @RequestMapping ("/mArms", method = [RequestMethod.GET])
    fun mArms (model: Model): String {
        model.set("programs", programService.findAll())
        return "mArms"
    }
    @RequestMapping ("/mBack", method = [RequestMethod.GET])
    fun mBack (model: Model): String {
        model.set("programs", programService.findAll())
        return "mBack"
    }
    @RequestMapping ("/mLegs", method = [RequestMethod.GET])
    fun mLegs (model: Model): String {
        model.set("programs", programService.findAll())
        return "mLegs"
    }
    @RequestMapping ("/wAbs", method = [RequestMethod.GET])
    fun wAbs (model: Model): String {
        model.set("programs", programService.findAll())
        return "wAbs"
    }
    @RequestMapping ("/wArms", method = [RequestMethod.GET])
    fun wArms (model: Model): String {
        model.set("programs", programService.findAll())
        return "wArms"
    }
    @RequestMapping ("/wBack", method = [RequestMethod.GET])
    fun wBack (model: Model): String {
        model.set("programs", programService.findAll())
        return "wBack"
    }
    @RequestMapping ("/wLegs", method = [RequestMethod.GET])
    fun wLegs (model: Model): String {
        model.set("programs", programService.findAll())
        return "wLegs"
    }
}