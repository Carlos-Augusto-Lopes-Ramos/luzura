package com.compara.luzura.repositories;

import com.compara.luzura.models.ProductsModel;
import jakarta.validation.constraints.Null;
import org.springframework.data.jpa.repository.JpaRepository;
import org.springframework.stereotype.Repository;

import java.util.List;
import java.util.UUID;

@Repository
public interface ProductRepository extends JpaRepository<ProductsModel, UUID> {
    List<ProductsModel> findAllByUrl(String url);

    List<ProductsModel> findAllByDate(String date);
    List<ProductsModel> findAllByDateAndUrl(String date, String url);
}
