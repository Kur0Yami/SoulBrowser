package com.nostra13.universalimageloader.core.imageaware;

import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import android.view.ViewGroup;
import com.nostra13.universalimageloader.core.assist.ViewScaleType;
import com.nostra13.universalimageloader.utils.L;
import java.lang.ref.WeakReference;

/* loaded from: classes3.dex */
public abstract class ViewAware implements ImageAware {

    /* renamed from: a, reason: collision with root package name */
    public WeakReference f21010a;
    public boolean b;

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public View a() {
        return (View) this.f21010a.get();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final boolean b() {
        if (this.f21010a.get() == null) {
            return true;
        }
        return false;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public ViewScaleType c() {
        return ViewScaleType.f;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final boolean d(Bitmap bitmap) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            View view = (View) this.f21010a.get();
            if (view == null) {
                return false;
            }
            e(bitmap, view);
            return true;
        }
        L.b(5, null, "Can't set a bitmap into view. You should call ImageLoader on UI thread for it.", new Object[0]);
        return false;
    }

    public abstract void e(Bitmap bitmap, View view);

    public final boolean f(Drawable drawable) {
        if (Looper.myLooper() == Looper.getMainLooper()) {
            View view = (View) this.f21010a.get();
            if (view == null) {
                return false;
            }
            g(drawable, view);
            return true;
        }
        L.b(5, null, "Can't set a drawable into view. You should call ImageLoader on UI thread for it.", new Object[0]);
        return false;
    }

    public abstract void g(Drawable drawable, View view);

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final int getHeight() {
        View view = (View) this.f21010a.get();
        int i = 0;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (this.b && layoutParams != null && layoutParams.height != -2) {
                i = view.getHeight();
            }
            if (i <= 0 && layoutParams != null) {
                return layoutParams.height;
            }
        }
        return i;
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final int getId() {
        View view = (View) this.f21010a.get();
        if (view == null) {
            return super.hashCode();
        }
        return view.hashCode();
    }

    @Override // com.nostra13.universalimageloader.core.imageaware.ImageAware
    public final int getWidth() {
        View view = (View) this.f21010a.get();
        int i = 0;
        if (view != null) {
            ViewGroup.LayoutParams layoutParams = view.getLayoutParams();
            if (this.b && layoutParams != null && layoutParams.width != -2) {
                i = view.getWidth();
            }
            if (i <= 0 && layoutParams != null) {
                return layoutParams.width;
            }
        }
        return i;
    }
}
