package org.zerock.boardtest.dto;

import lombok.ToString;

@ToString
public class ListDTO {

    private int page;
    private int size;

    public ListDTO(int page, int size) {
        this.page = 1;
        this.size = 10;
    }

    public void setPage(int page) {
        this.page = page;
    }

    public void setSize(int size) {
        this.size = size;
    }
}
