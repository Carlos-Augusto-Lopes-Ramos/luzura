package com.compara.luzura.services;

import com.compara.luzura.dtos.ProductRecordDto;
import com.compara.luzura.models.ProductsModel;
import com.compara.luzura.repositories.ProductRepository;
import org.jsoup.Jsoup;
import org.jsoup.nodes.Document;
import org.jsoup.nodes.Element;
import org.springframework.http.HttpStatus;
import org.springframework.http.ResponseEntity;
import org.springframework.stereotype.Service;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;
import java.util.List;

import static java.lang.Float.parseFloat;

@Service
public class ProductService {

    final ProductRepository productRepository;

    public ProductService(ProductRepository productRepository) {
        this.productRepository = productRepository;
    }

    public ResponseEntity<List<ProductsModel>> getProductList(ProductRecordDto link) {
        Document documento;
        ProductsModel product = new ProductsModel();
        SimpleDateFormat formatDate= new SimpleDateFormat("dd/MM/yyyy");
        Date date = new Date();
        String dateFormated = formatDate.format(date);
        try{
            if(productRepository.findAllByDateAndUrl(dateFormated, link.url()).isEmpty()){
                documento = Jsoup.connect(link.url()).get();
                Element elemento = documento.getElementsByClass("ui-pdp-price__second-line").first();
                Element reais = elemento.getElementsByClass("andes-money-amount__fraction").first();
                System.out.println(reais.html());
                int centavo;
                try {
                    Element centavos = elemento.getElementsByClass("andes-money-amount__cents andes-money-amount__cents--superscript-36").first();
                    System.out.println(elemento.html());
                    centavo = Integer.parseInt(centavos.html());
                }catch (NullPointerException e) {
                    centavo = 0;
                }
                String nome = documento.getElementsByClass("ui-pdp-title").first().html();
                float preco = parseFloat(reais.html().replace(".", "") + "." + centavo);
                product.setName(nome);
                product.setUrl(link.url());
                product.setPrice(preco);
                product.setDate(dateFormated);
                productRepository.save(product);
            }
        } catch (IOException e) {
            throw new RuntimeException(e);
        }catch (NullPointerException e) {
            System.out.println("Valores nulos nos métodos getElement.");
        }
        List<ProductsModel> productsList = productRepository.findAllByUrl(link.url());
        return ResponseEntity.status(HttpStatus.OK).body(productsList);
    }
}
