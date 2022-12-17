package com.project.board.domain.board.search;

import lombok.Data;

@Data
public class BoardSearchCondition {
    private String name;
    private String title;
    private String all;
    private String price;
    private String tag;
}
