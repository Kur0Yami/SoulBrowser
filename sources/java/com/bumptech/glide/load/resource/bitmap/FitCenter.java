package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class FitCenter extends BitmapTransformation {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.FitCenter".getBytes(Key.f2160a);

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public final Bitmap c(BitmapPool bitmapPool, Bitmap bitmap, int i, int i2) {
        return TransformationUtils.b(bitmapPool, bitmap, i, i2);
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        return obj instanceof FitCenter;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return 1572326941;
    }
}
