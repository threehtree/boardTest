package org.zerock.boardtest.mapper;

import org.apache.ibatis.annotations.Param;
import org.zerock.boardtest.domain.Board;

import java.util.List;

public interface GenericMapper <E,K> {

    void insert(E board);

    List<Board> selectList(@Param("skip") int skip, @Param("size") int size);

    void delete(K bno);

    Board selectOne(K bno);

    void update(E board);


}


