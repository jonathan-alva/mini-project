package org.training.core.data.beans;

import javax.print.attribute.standard.Media;
import java.io.Serializable;

public class TestimonyData implements Serializable {

    private String name;

    private Double rate;

    private String title;

    private String textArea;

    private String dateTestimony;

    public TestimonyData() {
        // default constructor
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public Double getRate() {
        return rate;
    }

    public void setRate(Double rate) {
        this.rate = rate;
    }

    public String getTitle() {
        return title;
    }

    public void setTitle(String title) {
        this.title = title;
    }

    public String getTextArea() {
        return textArea;
    }

    public void setTextArea(String textArea) {
        this.textArea = textArea;
    }

    public String getDateTestimony() {
        return dateTestimony;
    }

    public void setDateTestimony(String dateTestimony) {
        this.dateTestimony = dateTestimony;
    }

}
