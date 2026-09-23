package androidx.fragment.app;

import android.os.Parcelable;
import android.view.View;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;

@Deprecated
/* loaded from: classes.dex */
public abstract class FragmentPagerAdapter extends PagerAdapter {

    /* renamed from: c, reason: collision with root package name */
    public Fragment f1116c;

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void a(Object obj) {
        throw null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Object d(ViewPager viewPager, int i) {
        throw null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final boolean e(View view, Object obj) {
        if (((Fragment) obj).getView() == view) {
            return true;
        }
        return false;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void f(Parcelable parcelable, ClassLoader classLoader) {
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final Parcelable g() {
        return null;
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void h(Object obj) {
        Fragment fragment = (Fragment) obj;
        Fragment fragment2 = this.f1116c;
        if (fragment != fragment2) {
            if (fragment2 != null) {
                fragment2.setMenuVisibility(false);
                this.f1116c.setUserVisibleHint(false);
            }
            fragment.setMenuVisibility(true);
            fragment.setUserVisibleHint(true);
            this.f1116c = fragment;
        }
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void j(ViewPager viewPager) {
        if (viewPager.getId() != -1) {
            return;
        }
        throw new IllegalStateException("ViewPager with adapter " + this + " requires a view id");
    }

    @Override // androidx.viewpager.widget.PagerAdapter
    public final void b() {
    }
}
