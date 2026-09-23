package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes.dex */
public interface GifDecoder {

    /* loaded from: classes.dex */
    public interface BitmapProvider {
        Bitmap a(int i, int i2, Bitmap.Config config);

        int[] b(int i);

        void c(Bitmap bitmap);

        void d(byte[] bArr);

        byte[] e(int i);

        void f(int[] iArr);
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface GifDecodeStatus {
    }

    Bitmap a();
}
