package com.mycompany.app.view;

import android.widget.FrameLayout;
import com.mycompany.app.image.ImageSizeListener;

/* loaded from: classes3.dex */
public class MySizeFrame extends FrameLayout {

    /* renamed from: c, reason: collision with root package name */
    public ImageSizeListener f18961c;

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ImageSizeListener imageSizeListener = this.f18961c;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
    }

    public void setListener(ImageSizeListener imageSizeListener) {
        this.f18961c = imageSizeListener;
    }
}
