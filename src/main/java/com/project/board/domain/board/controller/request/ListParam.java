package com.project.board.domain.board.controller.request;

import lombok.AllArgsConstructor;
import lombok.Data;
import lombok.NoArgsConstructor;

@Data
@AllArgsConstructor
@NoArgsConstructor
public class ListParam {
    private Integer groupId;
    private String param;

    public Object getParam(){
        if(groupId!=null)return groupId;
        if(param!=null)return param;
        throw new IllegalArgumentException("No Search Param");
    }

    public String getRequest(){
        if(groupId!=null)return "groupId";
        if(param!=null)return "param";
        throw new IllegalArgumentException("No Search RequestParam");
    }
}
