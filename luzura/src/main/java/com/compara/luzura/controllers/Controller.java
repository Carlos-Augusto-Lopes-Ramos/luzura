package com.compara.luzura.controllers;

import com.compara.luzura.dtos.ProductRecordDto;
import com.compara.luzura.models.ProductsModel;
import com.compara.luzura.repositories.ProductRepository;
import com.compara.luzura.services.ProductService;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.http.ResponseEntity;
import org.springframework.web.bind.annotation.*;

import java.util.List;

@CrossOrigin(origins = "*")
@RestController
@RequestMapping("/api")
public class Controller {

    @Autowired
    ProductRepository productRepository;

    @PostMapping("/luzura")
    public ResponseEntity<List<ProductsModel>> setProductToList(@RequestBody ProductRecordDto link) {
        var productService = new ProductService(productRepository);
        return productService.getProductList(link);
    }
}
