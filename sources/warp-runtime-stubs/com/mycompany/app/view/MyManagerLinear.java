package com.mycompany.app.view;
import android.content.Context;
import android.util.AttributeSet;
import androidx.recyclerview.widget.LinearLayoutManager;
public class MyManagerLinear extends LinearLayoutManager {
  public MyManagerLinear(int orientation) { super(orientation); }
  public MyManagerLinear(Context c, AttributeSet a, int i, int j) { super(c, a, i, j); }
}
