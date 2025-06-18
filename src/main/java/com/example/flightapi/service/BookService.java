package com.example.flightapi.service;

import java.util.List;

import com.example.flightapi.controller.dto.BookResponseDto;
import com.example.flightapi.controller.dto.BookRequestDto;

public interface BookService {
  List<BookResponseDto> getAllBooks() throws Exception;  
  List<BookResponseDto> getUserBooks(BookRequestDto bookRequestDto) throws Exception;  
  void insertNew(List<BookRequestDto> bookRequestDtoL) throws Exception;

}
