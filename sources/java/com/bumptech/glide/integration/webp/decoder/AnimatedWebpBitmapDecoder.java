package com.bumptech.glide.integration.webp.decoder;

import com.bumptech.glide.integration.webp.WebpImage;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.gif.GifBitmapProvider;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class AnimatedWebpBitmapDecoder {
    public static final Option d = Option.a(Boolean.FALSE, "com.bumptech.glide.integration.webp.decoder.AnimatedWebpBitmapDecoder.DisableBitmap");

    /* renamed from: a, reason: collision with root package name */
    public final ArrayPool f2122a;
    public final BitmapPool b;

    /* renamed from: c, reason: collision with root package name */
    public final GifBitmapProvider f2123c;

    public AnimatedWebpBitmapDecoder(ArrayPool arrayPool, BitmapPool bitmapPool) {
        this.f2122a = arrayPool;
        this.b = bitmapPool;
        this.f2123c = new GifBitmapProvider(arrayPool, bitmapPool);
    }

    public final BitmapResource a(ByteBuffer byteBuffer, int i, int i2) {
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.get(bArr, 0, remaining);
        WebpImage create = WebpImage.create(bArr);
        WebpDecoder webpDecoder = new WebpDecoder(this.f2123c, create, byteBuffer, Utils.a(create.getWidth(), create.getHeight(), i, i2), WebpFrameCacheStrategy.b);
        try {
            webpDecoder.b();
            return BitmapResource.b(webpDecoder.a(), this.b);
        } finally {
            webpDecoder.c();
        }
    }
}
