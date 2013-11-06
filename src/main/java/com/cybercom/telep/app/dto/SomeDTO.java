package com.cybercom.telep.app.dto;

import java.math.BigDecimal;
import java.math.BigInteger;
import java.util.Currency;
import java.util.Random;
import java.util.UUID;

import org.joda.time.DateTime;

public class SomeDTO {

    private UUID uuid;
    private String string;
    private Integer integer;
    private Currency currency;
    private DateTime dateTime;
    private boolean bool;
    private BigDecimal bigDecimal;

    public SomeDTO() {
        this.uuid = UUID.randomUUID();
        this.string = "example string data";
        this.integer = new Random(19580427 ).nextInt();
        this.currency = Currency.getInstance("SEK");
        this.dateTime = DateTime.now();
        this.bool = true;
        this.bigDecimal = new BigDecimal(BigInteger.ZERO, 2);
    }

    public UUID getUuid() {
        return uuid;
    }

    public void setUuid(UUID uuid) {
        this.uuid = uuid;
    }

    public String getString() {
        return string;
    }

    public void setString(String string) {
        this.string = string;
    }

    public Integer getInteger() {
        return integer;
    }

    public void setInteger(Integer integer) {
        this.integer = integer;
    }

    public Currency getCurrency() {
        return currency;
    }

    public void setCurrency(Currency currency) {
        this.currency = currency;
    }

    public DateTime getDateTime() {
        return dateTime;
    }

    public void setDateTime(DateTime dateTime) {
        this.dateTime = dateTime;
    }

    public boolean isBool() {
        return bool;
    }

    public void setBool(boolean bool) {
        this.bool = bool;
    }

    public BigDecimal getBigDecimal() {
        return bigDecimal;
    }

    public void setBigDecimal(BigDecimal bigDecimal) {
        this.bigDecimal = bigDecimal;
    }
}
