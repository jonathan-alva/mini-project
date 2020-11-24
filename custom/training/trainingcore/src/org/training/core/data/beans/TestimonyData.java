package org.training.core.data.beans;

import java.io.Serializable;

public class TestimonyData implements Serializable {

    private String name;

    private Double rate;

    private String title;

    private String textArea;

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
}
