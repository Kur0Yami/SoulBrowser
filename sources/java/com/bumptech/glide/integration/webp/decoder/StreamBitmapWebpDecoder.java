package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import java.io.InputStream;

/* loaded from: classes.dex */
public class StreamBitmapWebpDecoder implements ResourceDecoder<InputStream, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final WebpDownsampler f2129a;
    public final ArrayPool b;

    public StreamBitmapWebpDecoder(WebpDownsampler webpDownsampler, ArrayPool arrayPool) {
        this.f2129a = webpDownsampler;
        this.b = arrayPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        InputStream inputStream = (InputStream) obj;
        WebpDownsampler webpDownsampler = this.f2129a;
        webpDownsampler.getClass();
        if (((Boolean) options.c(WebpDownsampler.e)).booleanValue() || ((Boolean) options.c(WebpDownsampler.f)).booleanValue()) {
            return false;
        }
        return WebpHeaderParser.d(WebpHeaderParser.b(inputStream, webpDownsampler.f2136c));
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i, int i2, Options options) {
        return this.f2129a.a((InputStream) obj, i, i2, options);
    }
}
