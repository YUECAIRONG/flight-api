package com.example.flightapi.controller.dto;


import java.math.BigDecimal;
import lombok.Getter;
import lombok.Setter;

@Getter
@Setter
public class BookRequestDto {
 
    private Long user_id;
 
    private Long flight_id;
 
//    private String reference;
 
//    private String status;
 
    private BigDecimal total_price;
 
    private String contact_phone;
 
//    private LocalDateTime booking_time;
}
