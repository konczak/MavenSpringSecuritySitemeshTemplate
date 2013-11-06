package com.cybercom.telep.app.controller;

import java.util.ArrayList;
import java.util.List;

import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

@Controller
public class ExampleListController {

    @ModelAttribute("webFrameworkList")
    public List<String> populateWebFrameworkList() {

        //Data referencing for web framework checkboxes
        List<String> webFrameworkList = new ArrayList<String>();
        webFrameworkList.add("Spring MVC");
        webFrameworkList.add("Struts 1");
        webFrameworkList.add("Struts 2");
        webFrameworkList.add("JSF");
        webFrameworkList.add("Apache Wicket");

        return webFrameworkList;
    }

    @RequestMapping(value = "example/list",
                    method = RequestMethod.GET)
    public String simpleList(ModelMap model) {

        return "example/list";
    }
}
