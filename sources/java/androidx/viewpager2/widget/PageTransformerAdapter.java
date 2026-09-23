package androidx.viewpager2.widget;

import android.view.View;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import java.util.Locale;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class PageTransformerAdapter extends ViewPager2.OnPageChangeCallback {

    /* renamed from: a, reason: collision with root package name */
    public final LinearLayoutManager f1772a;
    public ViewPager2.PageTransformer b;

    public PageTransformerAdapter(LinearLayoutManager linearLayoutManager) {
        this.f1772a = linearLayoutManager;
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void a(int i) {
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void b(float f, int i, int i2) {
        if (this.b != null) {
            float f2 = -f;
            int i3 = 0;
            while (true) {
                LinearLayoutManager linearLayoutManager = this.f1772a;
                if (i3 < linearLayoutManager.x()) {
                    View w = linearLayoutManager.w(i3);
                    if (w != null) {
                        this.b.a(w, (RecyclerView.LayoutManager.N(w) - i) + f2);
                        i3++;
                    } else {
                        Locale locale = Locale.US;
                        throw new IllegalStateException("LayoutManager returned a null child at pos " + i3 + "/" + linearLayoutManager.x() + " while transforming pages");
                    }
                } else {
                    return;
                }
            }
        }
    }

    @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
    public final void c(int i) {
    }
}
