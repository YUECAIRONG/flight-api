package com.example.flightapi.controller.dto;


import java.time.LocalDate;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class FlightRequestDto {
  private String departureAirportCode;
  private String destinationAirportCode;
  private LocalDate date;
}
