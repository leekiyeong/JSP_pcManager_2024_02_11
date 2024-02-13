package com.lky.jsp.pcManager.main;

import com.lky.jsp.pcManager.Rq;

public class MainController {
  public void showMain(Rq rq) {
    rq.view("usr/main/home");
  }
}
