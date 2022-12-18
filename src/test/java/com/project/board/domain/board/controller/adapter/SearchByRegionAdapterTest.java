package com.project.board.domain.board.controller.adapter;

import org.junit.jupiter.api.Test;

import static org.junit.jupiter.api.Assertions.*;

class SearchByRegionAdapterTest {

    @Test
    void supports() {
        if("Seoul" instanceof String){
            String regions="Seoul gyeonggiDo incheon gangwonDo jeollaBukDo jeollaNamDo gyeongsangBukDo gyeongsangNamDo chungcheongDo";
            boolean contains = regions.contains("l gyeonggiDo");
            System.out.println("contains = " + contains);
        }
    }
}