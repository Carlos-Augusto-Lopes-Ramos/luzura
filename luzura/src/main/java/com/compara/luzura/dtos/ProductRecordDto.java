package com.compara.luzura.dtos;

import jakarta.validation.constraints.NotBlank;

public record ProductRecordDto(@NotBlank String url) {
}
