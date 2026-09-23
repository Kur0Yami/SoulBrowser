package androidx.viewpager2.widget;

import android.view.View;
import androidx.core.view.OnApplyWindowInsetsListener;
import androidx.core.view.ViewCompat;
import androidx.core.view.WindowInsetsCompat;
import androidx.recyclerview.widget.RecyclerView;

/* loaded from: classes.dex */
public final class WindowInsetsApplier implements OnApplyWindowInsetsListener {
    @Override // androidx.core.view.OnApplyWindowInsetsListener
    public final WindowInsetsCompat a(View view, WindowInsetsCompat windowInsetsCompat) {
        ViewPager2 viewPager2 = (ViewPager2) view;
        WindowInsetsCompat t = ViewCompat.t(viewPager2, windowInsetsCompat);
        if (t.l()) {
            return t;
        }
        RecyclerView recyclerView = viewPager2.n;
        int childCount = recyclerView.getChildCount();
        for (int i = 0; i < childCount; i++) {
            ViewCompat.c(recyclerView.getChildAt(i), new WindowInsetsCompat(t));
        }
        WindowInsetsCompat windowInsetsCompat2 = WindowInsetsCompat.b;
        if (windowInsetsCompat2.n() != null) {
            return windowInsetsCompat2;
        }
        return t.c().b();
    }
}
