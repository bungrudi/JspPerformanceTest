package com.adianto.rudi.sandbox;

import java.util.ArrayList;
import java.util.List;

public class Sandbox {
  public static String outputResultOfLongProcess() {
    // do 5 iteration loop, with each loop generate random string 
    StringBuilder sb = new StringBuilder();
    RandomString rs = new RandomString(10);
    for (int i = 0; i < 5; i++) {
      sb.append(rs.nextString());
    }

    //    try {
    //      Thread.sleep(1);
    //    } catch (InterruptedException e) {
    //      e.printStackTrace();
    //    }

    return sb.toString();
  }

  public static List<String> longProcessSeveralTimes() {
    ArrayList<String> ret = new ArrayList<String>();
    for (int i = 0; i < 5; i++) {
      ret.add(outputResultOfLongProcess());
    }
    return ret;
  }

}
