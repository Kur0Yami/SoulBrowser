package com.bumptech.glide.load.engine.bitmap_recycle;

import android.graphics.Bitmap;

/* loaded from: classes.dex */
public interface BitmapPool {
    void a(int i);

    void b();

    Bitmap c(int i, int i2, Bitmap.Config config);

    void d(Bitmap bitmap);

    Bitmap e(int i, int i2, Bitmap.Config config);
}
