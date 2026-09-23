package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.util.Preconditions;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class GifDrawableTransformation implements Transformation<GifDrawable> {
    public final Transformation b;

    public GifDrawableTransformation(Transformation transformation) {
        Preconditions.c(transformation, "Argument must not be null");
        this.b = transformation;
    }

    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        this.b.a(messageDigest);
    }

    @Override // com.bumptech.glide.load.Transformation
    public final Resource b(Context context, Resource resource, int i, int i2) {
        GifDrawable gifDrawable = (GifDrawable) resource.get();
        Resource bitmapResource = new BitmapResource(gifDrawable.c(), Glide.a(context).f);
        Transformation transformation = this.b;
        Resource b = transformation.b(context, bitmapResource, i, i2);
        if (!bitmapResource.equals(b)) {
            bitmapResource.a();
        }
        gifDrawable.f2402c.f2403a.c(transformation, (Bitmap) b.get());
        return resource;
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (obj instanceof GifDrawableTransformation) {
            return this.b.equals(((GifDrawableTransformation) obj).b);
        }
        return false;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        return this.b.hashCode();
    }
}
