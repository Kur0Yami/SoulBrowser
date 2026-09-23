package com.mycompany.app.view;

import android.graphics.Canvas;
import android.widget.ImageView;
import com.mycompany.app.image.ImageSizeListener;

/* loaded from: classes3.dex */
public class MySizeImage extends ImageView {

    /* renamed from: c, reason: collision with root package name */
    public ImageSizeListener f18962c;

    @Override // android.widget.ImageView, android.view.View
    public final void onDraw(Canvas canvas) {
        try {
            super.onDraw(canvas);
        } catch (Exception unused) {
        }
    }

    @Override // android.view.View
    public final void onSizeChanged(int i, int i2, int i3, int i4) {
        super.onSizeChanged(i, i2, i3, i4);
        ImageSizeListener imageSizeListener = this.f18962c;
        if (imageSizeListener != null) {
            imageSizeListener.a(this, i, i2);
        }
    }

    public void setListener(ImageSizeListener imageSizeListener) {
        this.f18962c = imageSizeListener;
    }
}
