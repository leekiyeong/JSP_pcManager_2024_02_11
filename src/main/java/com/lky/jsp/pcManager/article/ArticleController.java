package com.lky.jsp.pcManager.article;

import com.lky.jsp.pcManager.Rq;
import com.lky.jsp.pcManager.article.dto.ArticleDto;

import java.util.ArrayList;
import java.util.List;

public class ArticleController {
  private ArticleService articleService;

  public ArticleController(){
    articleService = new ArticleService();
  }
  public void showList(Rq rq) {
    List<ArticleDto> articleDtos = articleService.findAll();

    rq.setAttr("articles", articleDtos);
    rq.view("usr/article/list");
  }

  public void showWrite(Rq rq) {
    rq.view("usr/article/write");
  }

  public void doWrite(Rq rq) {
    String title = rq.getParam("title", "");
    String body = rq.getParam("body","");

    long id = articleService.write(title,body);

    rq.appendBody("<div>%d번 게시물이 생성되었습니다.</div>".formatted(id));
  }

  public void showDetail(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    if(id==0) {
      rq.appendBody("번호를 입력해주세요.");
      return;
    }

    ArticleDto articleDto = articleService.fineById(id);

    if(articleDto == null) {
      rq.appendBody("해당 글은 존재하지 않습니다.");
      return;
    }
    rq.setAttr("article",articleDto);
    rq.view("usr/article/detail");
  }

  public void doDelete(Rq rq) {
    long id = rq.getLongPathValueByIndex(1, 0);

    if(id == 0) {
      rq.appendBody("번호를 입력해주세요.");
      return;
    }

    ArticleDto articleDto = articleService.fineById(id);

    if (articleDto == null) {
      rq.appendBody("해당 글은 존재하지 않습니다.");
      return;
    }
    articleService.delete(id);

    rq.appendBody("%d번 게시물이 삭제되었습니다.".formatted(id));
  }
}
