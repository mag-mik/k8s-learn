package com.mik;

import org.springframework.web.bind.annotation.GetMapping;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RestController;

@RestController
public class K8sDemoController {

    @RequestMapping("/")
    public String hello() {
        return "hello";
    }

    @GetMapping("/home")
    public String getHi() {
        return "Hi";
    }

    @GetMapping("/students")
    public StudentInformation getStudents(){
        return new StudentInformation (1, "John", "Dou");
    }
}
