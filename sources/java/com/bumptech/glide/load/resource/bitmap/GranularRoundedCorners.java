package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class GranularRoundedCorners extends BitmapTransformation {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.GranularRoundedCorners".getBytes(Key.f2160a);

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(b);
        messageDigest.update(ByteBuffer.allocate(16).putFloat(0.0f).putFloat(0.0f).putFloat(0.0f).putFloat(0.0f).array());
    }

    /* JADX WARN: Type inference failed for: r3v1, types: [com.bumptech.glide.load.resource.bitmap.TransformationUtils$DrawRoundedCornerFn, java.lang.Object] */
    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public final Bitmap c(BitmapPool bitmapPool, Bitmap bitmap, int i, int i2) {
        return TransformationUtils.f(bitmapPool, bitmap, new Object());
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof GranularRoundedCorners) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return Util.g(0.0f, Util.g(0.0f, Util.g(0.0f, Util.h(-2013597734, Util.g(0.0f, 17)))));
    }
}
