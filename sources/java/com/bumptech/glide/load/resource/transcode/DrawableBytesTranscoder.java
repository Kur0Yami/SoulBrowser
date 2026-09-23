package com.bumptech.glide.load.resource.transcode;

import android.graphics.drawable.BitmapDrawable;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.gif.GifDrawable;

/* loaded from: classes.dex */
public final class DrawableBytesTranscoder implements ResourceTranscoder<Drawable, byte[]> {

    /* renamed from: a, reason: collision with root package name */
    public final BitmapPool f2413a;
    public final BitmapBytesTranscoder b;

    /* renamed from: c, reason: collision with root package name */
    public final GifDrawableBytesTranscoder f2414c;

    public DrawableBytesTranscoder(BitmapPool bitmapPool, BitmapBytesTranscoder bitmapBytesTranscoder, GifDrawableBytesTranscoder gifDrawableBytesTranscoder) {
        this.f2413a = bitmapPool;
        this.b = bitmapBytesTranscoder;
        this.f2414c = gifDrawableBytesTranscoder;
    }

    @Override // com.bumptech.glide.load.resource.transcode.ResourceTranscoder
    public final Resource a(Resource resource, Options options) {
        Drawable drawable = (Drawable) resource.get();
        if (drawable instanceof BitmapDrawable) {
            return this.b.a(BitmapResource.b(((BitmapDrawable) drawable).getBitmap(), this.f2413a), options);
        }
        if (drawable instanceof GifDrawable) {
            return this.f2414c.a(resource, options);
        }
        return null;
    }
}
