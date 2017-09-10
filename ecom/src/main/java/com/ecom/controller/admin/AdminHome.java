package com.ecom.controller.admin;


import com.ecom.model.Customer;

import com.ecom.model.Product;

import com.ecom.service.CustomerService;

import com.ecom.service.ProductService;

import org.springframework.beans.factory.annotation.Autowired;

import org.springframework.stereotype.Controller;

import org.springframework.ui.Model;

import org.springframework.web.bind.annotation.RequestMapping;


import java.util.List;


@Controller
@RequestMapping("/admin")

public class AdminHome {


    @Autowired
    private ProductService productService;


    @Autowired
    private CustomerService customerService;


    @RequestMapping
    public String adminPage()
{
        return "admin";

    }

 
   @RequestMapping("/productInventory")
  
  public String productInventory(Model model)
{
      
  List<Product> products = productService.getAllProducts();

        model.addAttribute("products", products);


        return "redirect:/prolist";

    }


    @RequestMapping("/customer")

    public String customerManagerment(Model model)
{

        
List<Customer> customerList = customerService.getAllCustomers();

        model.addAttribute("customerList", customerList);


        return "customerManagement";

    }



} // The End of Class;
