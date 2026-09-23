package androidx.fragment.app;
import android.app.Activity;
import android.os.Bundle;
public class FragmentActivity extends Activity {
  @Override protected void onCreate(Bundle b) { super.onCreate(b); }
  @Override protected void onResume() { super.onResume(); }
  @Override protected void onPause() { super.onPause(); }
}
