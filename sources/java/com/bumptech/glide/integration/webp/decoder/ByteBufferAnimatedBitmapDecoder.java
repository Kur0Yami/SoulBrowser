package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import com.bumptech.glide.integration.webp.WebpHeaderParser;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferAnimatedBitmapDecoder implements ResourceDecoder<ByteBuffer, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final AnimatedWebpBitmapDecoder f2124a;

    public ByteBufferAnimatedBitmapDecoder(AnimatedWebpBitmapDecoder animatedWebpBitmapDecoder) {
        this.f2124a = animatedWebpBitmapDecoder;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        if (((Boolean) options.c(AnimatedWebpBitmapDecoder.d)).booleanValue() || WebpHeaderParser.c(byteBuffer) != WebpHeaderParser.WebpImageType.j) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i, int i2, Options options) {
        return this.f2124a.a((ByteBuffer) obj, i, i2);
    }
}
