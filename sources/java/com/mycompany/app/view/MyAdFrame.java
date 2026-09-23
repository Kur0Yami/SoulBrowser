package com.mycompany.app.view;

import android.os.Handler;
import android.os.Looper;
import android.view.View;
import android.view.ViewParent;
import android.widget.FrameLayout;
import com.mycompany.app.image.ImageSizeListener;
import com.mycompany.app.main.MainUtil;

/* loaded from: classes3.dex */
public class MyAdFrame extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public int f18490c;
    public ImageSizeListener f;
    public MyAdNative g;
    public boolean h;

    public final void a(MyAdNative myAdNative, boolean z, Handler handler) {
        if (this.g == null && myAdNative != null) {
            try {
                ViewParent parent = myAdNative.getParent();
                if (parent != null && parent.equals(this)) {
                    return;
                }
                MainUtil.V6(myAdNative);
                removeAllViewsInLayout();
                this.g = myAdNative;
                this.h = z;
                if (handler == null) {
                    handler = new Handler(Looper.getMainLooper());
                }
                handler.post(new Runnable() { // from class: com.mycompany.app.view.MyAdFrame.1
                    @Override // java.lang.Runnable
                    public final void run() {
                        MyAdFrame myAdFrame = MyAdFrame.this;
                        MyAdNative myAdNative2 = myAdFrame.g;
                        boolean z2 = myAdFrame.h;
                        myAdFrame.g = null;
                        if (myAdNative2 != null) {
                            try {
                                FrameLayout.LayoutParams layoutParams = new FrameLayout.LayoutParams(-1, -2);
                                if (z2) {
                                    layoutParams.gravity = 16;
                                }
                                myAdFrame.addView(myAdNative2, layoutParams);
                            } catch (Exception unused) {
                            }
                        }
                    }
                });
            } catch (Exception unused) {
                this.g = null;
            }
        }
    }

    @Override // android.widget.FrameLayout, android.view.View
    public final void onMeasure(int i, int i2) {
        int i3 = this.f18490c;
        if (i3 > 0) {
            super.onMeasure(i, View.MeasureSpec.makeMeasureSpec(i3, 1073741824));
        } else {
            super.onMeasure(i, i2);
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ImageSizeListener imageSizeListener = this.f;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
    }

    public void setFixedHeight(int i) {
        this.f18490c = i;
    }

    public void setListener(ImageSizeListener imageSizeListener) {
        this.f = imageSizeListener;
    }
}
