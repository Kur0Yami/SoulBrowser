package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.engine.Initializable;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;

/* loaded from: classes.dex */
public class BitmapResource implements Resource<Bitmap>, Initializable {

    /* renamed from: c, reason: collision with root package name */
    public final Bitmap f2349c;
    public final BitmapPool f;

    public BitmapResource(Bitmap bitmap, BitmapPool bitmapPool) {
        Preconditions.c(bitmap, "Bitmap must not be null");
        this.f2349c = bitmap;
        Preconditions.c(bitmapPool, "BitmapPool must not be null");
        this.f = bitmapPool;
    }

    public static BitmapResource b(Bitmap bitmap, BitmapPool bitmapPool) {
        if (bitmap == null) {
            return null;
        }
        return new BitmapResource(bitmap, bitmapPool);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final void a() {
        this.f.d(this.f2349c);
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Class c() {
        return Bitmap.class;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final Object get() {
        return this.f2349c;
    }

    @Override // com.bumptech.glide.load.engine.Resource
    public final int getSize() {
        return Util.c(this.f2349c);
    }

    @Override // com.bumptech.glide.load.engine.Initializable
    public final void s() {
        this.f2349c.prepareToDraw();
    }
}
