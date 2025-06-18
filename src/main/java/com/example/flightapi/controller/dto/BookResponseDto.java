package com.example.flightapi.controller.dto;


import java.math.BigDecimal;
import java.time.LocalDateTime;

import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookResponseDto {
	  
	  private Long book_id;
	  private String flight_number;
	  private String departureAirportName;
	  private String destinationAirportName;
	  private LocalDateTime departure_time;
	  private LocalDateTime destination_time;
	  private LocalDateTime booking_time;
	  private BigDecimal total_price;
	  private String status;

}
