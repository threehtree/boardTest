package org.zerock.boardtest.service;

import org.zerock.boardtest.dto.BoardDTO;
import org.zerock.boardtest.dto.ListDTO;

import java.util.List;

public interface BoardService {

    List<BoardDTO> getList(ListDTO listDTO);

}
