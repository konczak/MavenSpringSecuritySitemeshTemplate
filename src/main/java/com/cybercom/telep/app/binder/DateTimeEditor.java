package com.cybercom.telep.app.binder;

import java.beans.PropertyEditorSupport;
import java.text.DateFormat;
import java.text.ParseException;
import java.util.Date;

import org.joda.time.DateTime;
import org.springframework.util.StringUtils;

public class DateTimeEditor
        extends PropertyEditorSupport {

    private final DateFormat dateFormat;
    private final boolean allowEmpty;

    public DateTimeEditor(DateFormat dateFormat, boolean allowEmpty) {
        this.dateFormat = dateFormat;
        this.allowEmpty = allowEmpty;
    }

    /**
     * Parse the Date from the given text, using the specified DateFormat.
     */
    @Override
    public void setAsText(String text)
            throws IllegalArgumentException {
        if (this.allowEmpty && !StringUtils.hasText(text)) {
            // Treat empty String as null value.
            setValue(null);
        } else {
            try {
                Date date = this.dateFormat.parse(text);
                setValue(new DateTime(date.getTime()));
            } catch (ParseException ex) {
                throw new IllegalArgumentException("Could not parse date: " + ex.getMessage(), ex);
            }
        }
    }

    /**
     * Format the Date as String, using the specified DateFormat.
     */
    @Override
    public String getAsText() {
        DateTime value = (DateTime) getValue();
        return (value != null ? this.dateFormat.format(value.toDate()) : "");
    }
}
