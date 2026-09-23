package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.resource.bitmap.ImageReader;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferBitmapDecoder implements ResourceDecoder<ByteBuffer, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final Downsampler f2350a;

    public ByteBufferBitmapDecoder(Downsampler downsampler) {
        this.f2350a = downsampler;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        this.f2350a.getClass();
        return true;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i, int i2, Options options) {
        Downsampler downsampler = this.f2350a;
        return downsampler.a(new ImageReader.ByteBufferReader((ByteBuffer) obj, downsampler.d, downsampler.f2361c), i, i2, options, Downsampler.l);
    }
}
