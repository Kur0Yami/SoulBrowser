package com.mycompany.app.setting;
import android.os.Bundle;
import android.os.Handler;
import com.mycompany.app.view.MyManagerLinear;
import com.mycompany.app.view.MyRecyclerView;
import java.util.List;
public class SettingActivity extends CastActivity {
  public Handler O0;
  public MyRecyclerView L1;
  public MyManagerLinear M1;
  public SettingListAdapter N1;
  public int O1;
  public List D0() { return null; }
  public void F0(int titleRes, boolean showReset, boolean showHelp) {}
  public void M0() {}
  @Override public void onCreate(Bundle b) { super.onCreate(b); this.O0 = new Handler(); }
  @Override public void onResume() { super.onResume(); }
  @Override public void onPause() { super.onPause(); }
}
