package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class StreamAnimatedBitmapDecoder implements ResourceDecoder<InputStream, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final AnimatedWebpBitmapDecoder f2128a;

    public StreamAnimatedBitmapDecoder(AnimatedWebpBitmapDecoder animatedWebpBitmapDecoder) {
        this.f2128a = animatedWebpBitmapDecoder;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        InputStream inputStream = (InputStream) obj;
        if (((Boolean) options.c(AnimatedWebpBitmapDecoder.d)).booleanValue() || WebpHeaderParser.b(inputStream, this.f2128a.f2122a) != WebpHeaderParser.WebpImageType.j) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i, int i2, Options options) {
        byte[] b = Utils.b((InputStream) obj);
        if (b == null) {
            return null;
        }
        return this.f2128a.a(ByteBuffer.wrap(b), i, i2);
    }
}
