package com.bumptech.glide.integration.webp.decoder;

import android.content.Context;
import com.bumptech.glide.Glide;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.integration.webp.WebpImage;
import com.bumptech.glide.integration.webp.decoder.WebpDrawable;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.DrawableResource;
import com.bumptech.glide.load.resource.gif.GifBitmapProvider;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferWebpDecoder implements ResourceDecoder<ByteBuffer, WebpDrawable> {
    public static final Option d = Option.a(Boolean.FALSE, "com.bumptech.glide.integration.webp.decoder.ByteBufferWebpDecoder.DisableAnimation");

    /* renamed from: a, reason: collision with root package name */
    public final Context f2126a;
    public final BitmapPool b;

    /* renamed from: c, reason: collision with root package name */
    public final GifBitmapProvider f2127c;

    public ByteBufferWebpDecoder(Context context, ArrayPool arrayPool, BitmapPool bitmapPool) {
        this.f2126a = context.getApplicationContext();
        this.b = bitmapPool;
        this.f2127c = new GifBitmapProvider(arrayPool, bitmapPool);
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        if (((Boolean) options.c(d)).booleanValue() || WebpHeaderParser.c(byteBuffer) != WebpHeaderParser.WebpImageType.j) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i, int i2, Options options) {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        int remaining = byteBuffer.remaining();
        byte[] bArr = new byte[remaining];
        byteBuffer.get(bArr, 0, remaining);
        WebpImage create = WebpImage.create(bArr);
        WebpDecoder webpDecoder = new WebpDecoder(this.f2127c, create, byteBuffer, Utils.a(create.getWidth(), create.getHeight(), i, i2), (WebpFrameCacheStrategy) options.c(WebpFrameLoader.q));
        webpDecoder.b();
        return new DrawableResource(new WebpDrawable(new WebpDrawable.WebpState(this.b, new WebpFrameLoader(Glide.a(this.f2126a), webpDecoder, i, i2, webpDecoder.a()))));
    }
}
