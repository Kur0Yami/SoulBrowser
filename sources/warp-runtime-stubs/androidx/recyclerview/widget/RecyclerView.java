package androidx.recyclerview.widget;
import android.content.Context;
import android.util.AttributeSet;
import android.widget.FrameLayout;
public class RecyclerView extends FrameLayout {
  public RecyclerView(Context c) { super(c); }
  public RecyclerView(Context c, AttributeSet a) { super(c, a); }
  public void setAdapter(Adapter a) {}
  public abstract static class Adapter<VH extends ViewHolder> {
    public abstract int getItemCount();
  }
  public abstract static class ViewHolder {
    public android.view.View itemView;
    public ViewHolder(android.view.View itemView) { this.itemView = itemView; }
  }
  public abstract static class LayoutManager {}
}
