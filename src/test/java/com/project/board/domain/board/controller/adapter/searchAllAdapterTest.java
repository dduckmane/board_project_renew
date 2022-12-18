package com.project.board.domain.board.controller.adapter;

import org.junit.jupiter.api.Test;
import org.springframework.beans.factory.annotation.Autowired;
import org.springframework.boot.test.context.SpringBootTest;

import static org.junit.jupiter.api.Assertions.*;


class searchAllAdapterTest {

    @Test
    public void test(){
        boolean supports = supports("d");
        System.out.println("supports = " + supports);
    }

    public boolean supports(Object param) {
        return param instanceof Integer;
    }
}
