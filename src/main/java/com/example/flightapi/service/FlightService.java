package com.example.flightapi.service;

import java.util.List;

import com.example.flightapi.controller.dto.FlightResponseDto;
import com.example.flightapi.controller.dto.FlightRequestDto;

public interface FlightService {
  List<FlightResponseDto> getAllFlights() throws Exception;  
  List<FlightResponseDto> searchFlights(FlightRequestDto flightRequestDto) throws Exception;
}
