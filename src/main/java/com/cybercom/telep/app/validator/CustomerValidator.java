package com.cybercom.telep.app.validator;

import org.springframework.stereotype.Component;
import org.springframework.validation.Errors;
import org.springframework.validation.ValidationUtils;
import org.springframework.validation.Validator;

import com.cybercom.telep.app.form.Customer;

@Component
public class CustomerValidator
        implements Validator {

    @Override
    public boolean supports(Class clazz) {
        //just validate the Customer instances
        return Customer.class.isAssignableFrom(clazz);
    }

    @Override
    public void validate(Object target, Errors errors) {

        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "userName",
                "required.userName", "Field name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "address",
                "required.address", "Field name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "password",
                "required.password", "Field name is required.");
        ValidationUtils.rejectIfEmptyOrWhitespace(errors, "confirmPassword",
                "required.confirmPassword", "Field name is required.");

        Customer cust = (Customer) target;

        if (!(cust.getPassword().equals(cust.getConfirmPassword()))) {
            errors.rejectValue("password", "notmatch.password");
        }
    }
}
