package com.codegym.model.dto;

public class MobileDto {
    private int id;
    private String brand;
    private Float price;
    private Float ram;
    private String detail;

    public MobileDto() {
    }

    public MobileDto(int id, String brand, Float price, Float ram, String detail) {
        this.id = id;
        this.brand = brand;
        this.price = price;
        this.ram = ram;
        this.detail = detail;
    }

    public MobileDto(String brand, Float price, Float ram, String detail) {
        this.brand = brand;
        this.price = price;
        this.ram = ram;
        this.detail = detail;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
    }

    public String getBrand() {
        return brand;
    }

    public void setBrand(String brand) {
        this.brand = brand;
    }

    public Float getPrice() {
        return price;
    }

    public void setPrice(Float price) {
        this.price = price;
    }

    public Float getRam() {
        return ram;
    }

    public void setRam(Float ram) {
        this.ram = ram;
    }

    public String getDetail() {
        return detail;
    }

    public void setDetail(String detail) {
        this.detail = detail;
    }

}
