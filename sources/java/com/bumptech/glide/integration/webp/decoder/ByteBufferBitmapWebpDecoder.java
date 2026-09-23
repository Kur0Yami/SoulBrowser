package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.util.ByteBufferUtil;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferBitmapWebpDecoder implements ResourceDecoder<ByteBuffer, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final WebpDownsampler f2125a;

    public ByteBufferBitmapWebpDecoder(WebpDownsampler webpDownsampler) {
        this.f2125a = webpDownsampler;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        this.f2125a.getClass();
        if (((Boolean) options.c(WebpDownsampler.e)).booleanValue() || ((Boolean) options.c(WebpDownsampler.f)).booleanValue()) {
            return false;
        }
        return WebpHeaderParser.d(WebpHeaderParser.c(byteBuffer));
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i, int i2, Options options) {
        return this.f2125a.a(ByteBufferUtil.f((ByteBuffer) obj), i, i2, options);
    }
}
