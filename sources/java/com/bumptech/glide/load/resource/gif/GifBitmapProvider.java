package com.bumptech.glide.load.resource.gif;

import android.graphics.Bitmap;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;

/* loaded from: classes.dex */
public final class GifBitmapProvider implements GifDecoder.BitmapProvider {

    /* renamed from: a, reason: collision with root package name */
    public final BitmapPool f2401a;
    public final ArrayPool b;

    public GifBitmapProvider(ArrayPool arrayPool, BitmapPool bitmapPool) {
        this.f2401a = bitmapPool;
        this.b = arrayPool;
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final Bitmap a(int i, int i2, Bitmap.Config config) {
        return this.f2401a.c(i, i2, config);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final int[] b(int i) {
        ArrayPool arrayPool = this.b;
        if (arrayPool == null) {
            return new int[i];
        }
        return (int[]) arrayPool.d(i, int[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final void c(Bitmap bitmap) {
        this.f2401a.d(bitmap);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final void d(byte[] bArr) {
        ArrayPool arrayPool = this.b;
        if (arrayPool == null) {
            return;
        }
        arrayPool.c(bArr);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final byte[] e(int i) {
        ArrayPool arrayPool = this.b;
        if (arrayPool == null) {
            return new byte[i];
        }
        return (byte[]) arrayPool.d(i, byte[].class);
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder.BitmapProvider
    public final void f(int[] iArr) {
        ArrayPool arrayPool = this.b;
        if (arrayPool == null) {
            return;
        }
        arrayPool.c(iArr);
    }
}
