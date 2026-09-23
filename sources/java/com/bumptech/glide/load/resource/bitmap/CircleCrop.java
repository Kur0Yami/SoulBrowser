package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.Rect;
import android.graphics.RectF;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;
import java.util.concurrent.locks.Lock;

/* loaded from: classes.dex */
public class CircleCrop extends BitmapTransformation {
    public static final byte[] b = "com.bumptech.glide.load.resource.bitmap.CircleCrop.1".getBytes(Key.f2160a);

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        messageDigest.update(b);
    }

    @Override // com.bumptech.glide.load.resource.bitmap.BitmapTransformation
    public final Bitmap c(BitmapPool bitmapPool, Bitmap bitmap, int i, int i2) {
        Paint paint = TransformationUtils.f2381a;
        int min = Math.min(i, i2);
        float f = min;
        float f2 = f / 2.0f;
        float width = bitmap.getWidth();
        float height = bitmap.getHeight();
        float max = Math.max(f / width, f / height);
        float f3 = width * max;
        float f4 = max * height;
        float f5 = (f - f3) / 2.0f;
        float f6 = (f - f4) / 2.0f;
        RectF rectF = new RectF(f5, f6, f3 + f5, f4 + f6);
        Bitmap c2 = TransformationUtils.c(bitmap, bitmapPool);
        Bitmap e = bitmapPool.e(min, min, TransformationUtils.d(bitmap));
        e.setHasAlpha(true);
        Lock lock = TransformationUtils.d;
        lock.lock();
        try {
            Canvas canvas = new Canvas(e);
            canvas.drawCircle(f2, f2, f2, TransformationUtils.b);
            canvas.drawBitmap(c2, (Rect) null, rectF, TransformationUtils.f2382c);
            canvas.setBitmap(null);
            lock.unlock();
            if (!c2.equals(bitmap)) {
                bitmapPool.d(c2);
            }
            return e;
        } catch (Throwable th) {
            lock.unlock();
            throw th;
        }
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        return obj instanceof CircleCrop;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return 1101716364;
    }
}
