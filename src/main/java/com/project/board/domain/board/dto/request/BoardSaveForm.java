package com.project.board.domain.board.dto.request;

import lombok.Data;
import lombok.NoArgsConstructor;
import org.springframework.web.multipart.MultipartFile;

import java.util.List;

@Data
@NoArgsConstructor
public class BoardSaveForm {
    private String title;
    private String content;
    private MultipartFile thumbNail;
    private String representativeArea;
    private String detailArea;
    private List <MultipartFile> attachFiles;
}
