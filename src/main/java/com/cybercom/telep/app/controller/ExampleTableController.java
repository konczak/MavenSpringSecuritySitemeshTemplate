package com.cybercom.telep.app.controller;

import java.text.DateFormat;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.List;

import org.joda.time.DateTime;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;

import com.cybercom.telep.app.binder.DateTimeEditor;
import com.cybercom.telep.app.dto.SomeDTO;

@Controller
public class ExampleTableController {

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        DateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd HH:mm:ss");

        binder.registerCustomEditor(DateTime.class, new DateTimeEditor(dateFormat, true));
    }

    @ModelAttribute("someDTOList")
    public List<SomeDTO> populateWebFrameworkList() {

        //Data referencing for web framework checkboxes
        List<SomeDTO> webFrameworkList = new ArrayList<SomeDTO>();
        webFrameworkList.add(new SomeDTO());
        webFrameworkList.add(new SomeDTO());
        webFrameworkList.add(new SomeDTO());
        webFrameworkList.add(new SomeDTO());
        webFrameworkList.add(new SomeDTO());
        webFrameworkList.add(new SomeDTO());
        webFrameworkList.add(new SomeDTO());

        return webFrameworkList;
    }

    @RequestMapping(value = "example/table",
                    method = RequestMethod.GET)
    public String advancedTable(ModelMap model) {

        return "example/table";
    }
}
