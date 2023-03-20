/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package com.ce041;

import java.util.HashMap;

/**
 *
 * @author jaini
 */
public class Product {
    int price,stock;
    String Pdesc,Pname,Pid,image;
    
    public static HashMap<Integer,Product> getProducts(){
        //Product p[] = new Product[5];
        HashMap<Integer,Product> p = new HashMap<>();
        p.put(0, new Product(700, 5, "Samsung Galaxy s5 - 2015" , "0" , "img/product-1.jpg"));
        p.put(1, new Product(899, 5, "Nokia Lumia 1320" , "1" , "img/product-2.jpg"));
        p.put(2, new Product(500, 5, "LG Leon 2015" , "2" , "img/product-3.jpg"));
        p.put(3, new Product(200, 5, "Sony Microsoft" , "3" , "img/product-4.jpg"));
        p.put(4, new Product(1200, 5, "Iphone 6" , "4" , "img/product-5.jpg"));
        return p;
    }
    
    public Product() {
    }

    public Product(int price, String Pname, String Pid) {
        this.price = price;
        this.Pname = Pname;
        this.Pid = Pid;
    }

    public Product(int price, int stock, String Pname, String Pid, String image) {
        this.price = price;
        this.stock = stock;
        this.Pname = Pname;
        this.Pid = Pid;
        this.image = image;
    }

    public int getPrice() {
        return price;
    }

    public void setPrice(int price) {
        this.price = price;
    }

    public int getStock() {
        return stock;
    }

    public void setStock(int stock) {
        this.stock = stock;
    }

    public String getPdesc() {
        return Pdesc;
    }

    public void setPdesc(String Pdesc) {
        this.Pdesc = Pdesc;
    }

    public String getPname() {
        return Pname;
    }

    public void setPname(String Pname) {
        this.Pname = Pname;
    }

    public String getPid() {
        return Pid;
    }

    public void setPid(String Pid) {
        this.Pid = Pid;
    }

    public String getImage() {
        return image;
    }

    public void setImage(String image) {
        this.image = image;
    }
    
}
