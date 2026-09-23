package androidx.viewpager.widget;

import android.database.DataSetObservable;
import android.database.DataSetObserver;
import android.os.Parcelable;
import android.view.View;

/* loaded from: classes.dex */
public abstract class PagerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final DataSetObservable f1756a = new DataSetObservable();
    public DataSetObserver b;

    public void a(Object obj) {
        throw new UnsupportedOperationException("Required method destroyItem was not overridden");
    }

    public int c() {
        return -1;
    }

    public Object d(ViewPager viewPager, int i) {
        throw new UnsupportedOperationException("Required method instantiateItem was not overridden");
    }

    public abstract boolean e(View view, Object obj);

    public void f(Parcelable parcelable, ClassLoader classLoader) {
    }

    public Parcelable g() {
        return null;
    }

    public final void i(DataSetObserver dataSetObserver) {
        synchronized (this) {
            this.b = dataSetObserver;
        }
    }

    public void b() {
    }

    public void h(Object obj) {
    }

    public void j(ViewPager viewPager) {
    }
}
