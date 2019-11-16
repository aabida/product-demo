package com.presentation.productdemo.resource;

import com.presentation.productdemo.model.Product;
import org.springframework.data.repository.PagingAndSortingRepository;
import org.springframework.data.rest.core.annotation.RepositoryRestResource;

@RepositoryRestResource(collectionResourceRel = "product", path = "product")
public interface ProductResource extends PagingAndSortingRepository<Product, Integer> {
}
