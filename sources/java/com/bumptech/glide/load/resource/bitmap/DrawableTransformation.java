package com.bumptech.glide.load.resource.bitmap;

import android.content.Context;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class DrawableTransformation implements Transformation<Drawable> {
    public final Transformation b;

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2363c;

    public DrawableTransformation(Transformation transformation, boolean z) {
        this.b = transformation;
        this.f2363c = z;
    }

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
    }

    @Override // com.bumptech.glide.load.Transformation
    public final Resource b(Context context, Resource resource, int i, int i2) {
        BitmapPool bitmapPool = Glide.a(context).f;
        Drawable drawable = (Drawable) resource.get();
        BitmapResource a2 = DrawableToBitmapConverter.a(bitmapPool, drawable, i, i2);
        if (a2 == null) {
            if (!this.f2363c) {
                return resource;
            }
            throw new IllegalArgumentException("Unable to convert " + drawable + " to a Bitmap");
        }
        Resource b = this.b.b(context, a2, i, i2);
        if (b.equals(a2)) {
            b.a();
            return resource;
        }
        return new LazyBitmapDrawableResource(context.getResources(), b);
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof DrawableTransformation) {
            return this.b.equals(((DrawableTransformation) obj).b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.b.hashCode();
    }
}
