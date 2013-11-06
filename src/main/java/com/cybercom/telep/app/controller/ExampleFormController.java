package com.cybercom.telep.app.controller;

import java.text.SimpleDateFormat;
import java.util.Date;

import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.beans.propertyeditors.CustomDateEditor;
import org.springframework.stereotype.Controller;
import org.springframework.ui.ModelMap;
import org.springframework.validation.BindingResult;
import org.springframework.web.bind.WebDataBinder;
import org.springframework.web.bind.annotation.InitBinder;
import org.springframework.web.bind.annotation.ModelAttribute;
import org.springframework.web.bind.annotation.RequestMapping;
import org.springframework.web.bind.annotation.RequestMethod;
import org.springframework.web.bind.support.SessionStatus;

import com.cybercom.telep.app.form.Customer;
import com.cybercom.telep.app.validator.CustomerValidator;

@Controller
@RequestMapping("example/CustomerForm")
public class ExampleFormController {

    private CustomerValidator customerValidator;

    @Autowired
    public ExampleFormController(CustomerValidator customerValidator) {
        this.customerValidator = customerValidator;
    }

    @InitBinder
    public void initBinder(WebDataBinder binder) {
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");

        binder.registerCustomEditor(Date.class, new CustomDateEditor(dateFormat, true));

    }

    @RequestMapping(method = RequestMethod.POST)
    public String processSubmit(
            @ModelAttribute("customer") Customer customer,
            BindingResult result, SessionStatus status) {

        customerValidator.validate(customer, result);

        if (result.hasErrors()) {
            //if validator failed
            return "example/CustomerForm";
        } else {
            status.setComplete();
            //form success
            return "example/CustomerSuccess";
        }
    }

    @RequestMapping(method = RequestMethod.GET)
    public String initForm(ModelMap model) {

        Customer cust = new Customer();

        //initilize a hidden value
        cust.setSecretValue("I'm hidden value");

        //command object
        model.addAttribute("customer", cust);

        //return form view
        return "example/CustomerForm";
    }
}
