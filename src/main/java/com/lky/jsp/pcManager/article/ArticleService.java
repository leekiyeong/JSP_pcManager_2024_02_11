package com.lky.jsp.pcManager.article;

public class ArticleService {
  private ArticleRepository articleRepository;

  public  ArticleService(){
    articleRepository = new ArticleRepository();
  }

  public long write(String title, String body) {
    return articleRepository.write(title, body);
  }
}
