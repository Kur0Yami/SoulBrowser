package com.mycompany.app.image;

import android.database.DataSetObserver;
import android.view.MotionEvent;
import androidx.viewpager.widget.PagerAdapter;
import androidx.viewpager.widget.ViewPager;

/* loaded from: classes3.dex */
public class ImageViewPager extends ViewPager {
    public ImageSizeListener g0;
    public boolean h0;

    @Override // androidx.viewpager.widget.ViewPager, android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (this.h0) {
            return false;
        }
        try {
            return super.onInterceptTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ImageSizeListener imageSizeListener = this.g0;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
    }

    @Override // androidx.viewpager.widget.ViewPager, android.view.View
    public final boolean onTouchEvent(MotionEvent motionEvent) {
        if (this.h0) {
            return false;
        }
        try {
            return super.onTouchEvent(motionEvent);
        } catch (Exception unused) {
            return false;
        }
    }

    public void setBlockTouch(boolean z) {
        this.h0 = z;
    }

    public void setListener(ImageSizeListener imageSizeListener) {
        this.g0 = imageSizeListener;
    }

    public final void w() {
        PagerAdapter adapter = getAdapter();
        if (adapter != null) {
            synchronized (adapter) {
                try {
                    DataSetObserver dataSetObserver = adapter.b;
                    if (dataSetObserver != null) {
                        dataSetObserver.onChanged();
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
            adapter.f1756a.notifyChanged();
        }
    }
}
