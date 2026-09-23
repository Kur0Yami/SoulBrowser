package com.mycompany.app.setting;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import java.util.ArrayList;
import java.util.List;
public class SettingListAdapter extends RecyclerView.Adapter<SettingListAdapter.ViewHolder> {
  public interface SettingListener {
    void a(ViewHolder viewHolder, int id, boolean checked, int unused);
  }
  public static class ViewHolder extends RecyclerView.ViewHolder {
    public ViewHolder() { super(null); }
  }
  public static class SettingItem {
    public int f17931a;
    public int b;
    public int f17932c;
    public String d;
    public int e;
    public int f;
    public String g;
    public int h;
    public String i;
    public boolean k;
    public boolean l;
    public boolean m;
    public boolean s;
    public final boolean t;
    public int u;
    public SettingItem(int i, boolean z) {
      this.f17931a = z ? 1 : 2;
      this.b = i;
      this.t = false;
    }
    public SettingItem(int i, int i2, String str, boolean z, int i3) {
      this.f17931a = 4;
      this.b = i;
      if (z) this.h = i2; else this.i = str;
      this.u = i3;
      this.t = false;
    }
    public SettingItem(int i, int i2, String str, int i3, int i4) {
      this.f17931a = 0;
      this.b = i;
      this.f17932c = i2;
      this.g = str;
      this.h = i3;
      this.u = i4;
      this.t = false;
    }
    public SettingItem(int i, int i2, int i3, boolean z, boolean z2, boolean z3, int i4) {
      this.f17931a = 6;
      this.b = i;
      this.f17932c = i2;
      this.h = i3;
      this.k = z;
      this.s = z2;
      this.t = z3;
      this.u = i4;
    }
    public SettingItem(String str, int i, int i2, boolean z) {
      this.f17931a = 6;
      this.b = i;
      this.f17932c = i2;
      this.i = str;
      this.k = z;
      this.u = 1;
      this.t = false;
    }
  }
  public SettingListAdapter(ArrayList list, boolean z, LinearLayoutManager lm, SettingListener l) {}
  public void A(int id, boolean checked) {}
  public void B(boolean busy) {}
  public void D(SettingItem item) {}
  public void E(List list) {}
  public void G(int id, String subtitle) {}
  public int v(int id) { return -1; }
  public ViewHolder x(int pos) { return null; }
  @Override public int getItemCount() { return 0; }
}
