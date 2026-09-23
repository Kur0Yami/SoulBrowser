package com.bumptech.glide.integration.webp.decoder;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import java.security.MessageDigest;

/* loaded from: classes.dex */
public class WebpDrawableTransformation implements Transformation<WebpDrawable> {
    @Override // com.bumptech.glide.load.Key
    public final void a(MessageDigest messageDigest) {
        throw null;
    }

    @Override // com.bumptech.glide.load.Transformation
    public final Resource b(Context context, Resource resource, int i, int i2) {
        WebpDrawable webpDrawable = (WebpDrawable) resource.get();
        new BitmapResource(webpDrawable.f2137c.b.l, Glide.a(context).f);
        throw null;
    }

    @Override // com.bumptech.glide.load.Key
    public final boolean equals(Object obj) {
        if (!(obj instanceof WebpDrawableTransformation)) {
            return false;
        }
        throw null;
    }

    @Override // com.bumptech.glide.load.Key
    public final int hashCode() {
        throw null;
    }
}
