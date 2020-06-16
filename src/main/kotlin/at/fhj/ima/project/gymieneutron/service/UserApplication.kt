package at.fhj.ima.project.gymieneutron.service

import org.springframework.boot.web.servlet.FilterRegistrationBean
import org.springframework.context.annotation.Bean
import org.springframework.web.servlet.resource.ResourceUrlEncodingFilter

@Bean
fun resourceUrlEncodingFilterRegistration(): FilterRegistrationBean<ResourceUrlEncodingFilter> {
    val registration = FilterRegistrationBean<ResourceUrlEncodingFilter>()
    registration.setFilter(ResourceUrlEncodingFilter())
    registration.addUrlPatterns("/*")
    registration.setName("resourceUrlEncodingFilter")
    return registration
}