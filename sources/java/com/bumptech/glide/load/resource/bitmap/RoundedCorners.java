package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Paint;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public final class RoundedCorners extends BitmapTransformation {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.RoundedCorners".getBytes(Key.f2160a);

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(b);
        messageDigest.update(ByteBuffer.allocate(4).putInt(0).array());
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.bumptech.glide.load.resource.bitmap.TransformationUtils$DrawRoundedCornerFn, java.lang.Object] */
    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public final Bitmap c(BitmapPool bitmapPool, Bitmap bitmap, int i, int i2) {
        Paint paint = TransformationUtils.f2381a;
        Preconditions.a("roundingRadius must be greater than 0.", false);
        return TransformationUtils.f(bitmapPool, bitmap, new Object());
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof RoundedCorners) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return Util.h(-569625254, Util.h(0, 17));
    }
}
