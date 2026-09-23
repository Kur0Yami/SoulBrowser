package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Util;

/* loaded from: classes.dex */
public abstract class BitmapTransformation implements Transformation<Bitmap> {
    @Override // com.bumptech.glide.load.Transformation
    public final Resource b(Context context, Resource resource, int i, int i2) {
        if (Util.j(i, i2)) {
            BitmapPool bitmapPool = Glide.a(context).f;
            Bitmap bitmap = (Bitmap) resource.get();
            if (i == Integer.MIN_VALUE) {
                i = bitmap.getWidth();
            }
            if (i2 == Integer.MIN_VALUE) {
                i2 = bitmap.getHeight();
            }
            Bitmap c2 = c(bitmapPool, bitmap, i, i2);
            if (bitmap.equals(c2)) {
                return resource;
            }
            return BitmapResource.b(c2, bitmapPool);
        }
        throw new IllegalArgumentException("Cannot apply transformation on width: " + i + " or height: " + i2 + " less than or equal to zero and not Target.SIZE_ORIGINAL");
    }

    public abstract Bitmap c(BitmapPool bitmapPool, Bitmap bitmap, int i, int i2);
}
