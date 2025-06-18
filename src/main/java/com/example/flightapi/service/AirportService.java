package com.example.flightapi.service;

import java.util.List;

import com.example.flightapi.controller.dto.AirportResponseDto;

public interface AirportService {
  List<AirportResponseDto> getAllAirports() throws Exception;
  List<AirportResponseDto> getAirportsByCity(String city) throws Exception;
}
