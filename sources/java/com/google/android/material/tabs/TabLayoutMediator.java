package com.google.android.material.tabs;

import androidx.recyclerview.widget.RecyclerView;
import androidx.viewpager2.widget.ViewPager2;
import com.google.android.material.tabs.TabLayout;
import java.lang.ref.WeakReference;
import java.util.ArrayList;

/* loaded from: classes3.dex */
public final class TabLayoutMediator {

    /* renamed from: a, reason: collision with root package name */
    public final TabLayout f11953a;
    public final ViewPager2 b;

    /* renamed from: c, reason: collision with root package name */
    public final TabConfigurationStrategy f11954c;
    public RecyclerView.Adapter d;
    public boolean e;
    public TabLayout.OnTabSelectedListener f;

    /* loaded from: classes3.dex */
    public class PagerAdapterObserver extends RecyclerView.AdapterDataObserver {
        public PagerAdapterObserver() {
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void a() {
            TabLayoutMediator.this.b();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void b() {
            TabLayoutMediator.this.b();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void c(int i, int i2) {
            TabLayoutMediator.this.b();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void d(int i) {
            TabLayoutMediator.this.b();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void e(int i, int i2) {
            TabLayoutMediator.this.b();
        }

        @Override // androidx.recyclerview.widget.RecyclerView.AdapterDataObserver
        public final void f(int i) {
            TabLayoutMediator.this.b();
        }
    }

    /* loaded from: classes3.dex */
    public interface TabConfigurationStrategy {
    }

    /* loaded from: classes3.dex */
    public static class TabLayoutOnPageChangeCallback extends ViewPager2.OnPageChangeCallback {

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f11956a;

        /* renamed from: c, reason: collision with root package name */
        public int f11957c = 0;
        public int b = 0;

        public TabLayoutOnPageChangeCallback(TabLayout tabLayout) {
            this.f11956a = new WeakReference(tabLayout);
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public final void a(int i) {
            this.b = this.f11957c;
            this.f11957c = i;
            TabLayout tabLayout = (TabLayout) this.f11956a.get();
            if (tabLayout != null) {
                tabLayout.b0 = this.f11957c;
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public final void b(float f, int i, int i2) {
            boolean z;
            TabLayout tabLayout = (TabLayout) this.f11956a.get();
            if (tabLayout != null) {
                int i3 = this.f11957c;
                boolean z2 = true;
                if (i3 == 2 && this.b != 1) {
                    z = true;
                    z2 = false;
                } else {
                    z = true;
                }
                if (i3 == 2 && this.b == 0) {
                    z = false;
                }
                tabLayout.m(i, f, z2, z, false);
            }
        }

        @Override // androidx.viewpager2.widget.ViewPager2.OnPageChangeCallback
        public final void c(int i) {
            boolean z;
            TabLayout tabLayout = (TabLayout) this.f11956a.get();
            if (tabLayout != null && tabLayout.getSelectedTabPosition() != i && i < tabLayout.getTabCount()) {
                int i2 = this.f11957c;
                if (i2 != 0 && (i2 != 2 || this.b != 0)) {
                    z = false;
                } else {
                    z = true;
                }
                tabLayout.k(tabLayout.g(i), z);
            }
        }
    }

    /* loaded from: classes3.dex */
    public static class ViewPagerOnTabSelectedListener implements TabLayout.OnTabSelectedListener {

        /* renamed from: a, reason: collision with root package name */
        public final ViewPager2 f11958a;

        public ViewPagerOnTabSelectedListener(ViewPager2 viewPager2) {
            this.f11958a = viewPager2;
        }

        @Override // com.google.android.material.tabs.TabLayout.BaseOnTabSelectedListener
        public final void a(TabLayout.Tab tab) {
            this.f11958a.d(tab.b, true);
        }
    }

    public TabLayoutMediator(TabLayout tabLayout, ViewPager2 viewPager2, TabConfigurationStrategy tabConfigurationStrategy) {
        this.f11953a = tabLayout;
        this.b = viewPager2;
        this.f11954c = tabConfigurationStrategy;
    }

    public final void a() {
        if (!this.e) {
            ViewPager2 viewPager2 = this.b;
            RecyclerView.Adapter adapter = viewPager2.getAdapter();
            this.d = adapter;
            if (adapter != null) {
                this.e = true;
                TabLayout tabLayout = this.f11953a;
                viewPager2.b(new TabLayoutOnPageChangeCallback(tabLayout));
                ViewPagerOnTabSelectedListener viewPagerOnTabSelectedListener = new ViewPagerOnTabSelectedListener(viewPager2);
                this.f = viewPagerOnTabSelectedListener;
                ArrayList arrayList = tabLayout.P;
                if (!arrayList.contains(viewPagerOnTabSelectedListener)) {
                    arrayList.add(viewPagerOnTabSelectedListener);
                }
                this.d.f1560a.registerObserver(new PagerAdapterObserver());
                b();
                tabLayout.m(viewPager2.getCurrentItem(), 0.0f, true, true, true);
                return;
            }
            throw new IllegalStateException("TabLayoutMediator attached before ViewPager2 has an adapter");
        }
        throw new IllegalStateException("TabLayoutMediator is already attached");
    }

    public final void b() {
        TabLayout tabLayout = this.f11953a;
        tabLayout.j();
        RecyclerView.Adapter adapter = this.d;
        if (adapter != null) {
            int d = adapter.d();
            for (int i = 0; i < d; i++) {
                tabLayout.a(tabLayout.h(), false);
            }
            if (d > 0) {
                int min = Math.min(this.b.getCurrentItem(), tabLayout.getTabCount() - 1);
                if (min != tabLayout.getSelectedTabPosition()) {
                    tabLayout.k(tabLayout.g(min), true);
                }
            }
        }
    }
}
