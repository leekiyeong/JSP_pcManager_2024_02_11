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
    ArticleDto articleDto = articleService.fineById(id);

    rq.setAttr("article",articleDto);
    rq.view("usr/article/detail");
  }
}
