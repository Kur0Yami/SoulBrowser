package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.load.resource.bitmap.ImageReader;
import com.bumptech.glide.util.ExceptionPassthroughInputStream;
import com.bumptech.glide.util.MarkEnforcingInputStream;
import java.io.IOException;
import java.io.InputStream;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public class StreamBitmapDecoder implements ResourceDecoder<InputStream, Bitmap> {

    /* renamed from: a, reason: collision with root package name */
    public final Downsampler f2379a;
    public final ArrayPool b;

    /* loaded from: classes.dex */
    public static class UntrustedCallbacks implements Downsampler.DecodeCallbacks {

        /* renamed from: a, reason: collision with root package name */
        public final RecyclableBufferedInputStream f2380a;
        public final ExceptionPassthroughInputStream b;

        public UntrustedCallbacks(RecyclableBufferedInputStream recyclableBufferedInputStream, ExceptionPassthroughInputStream exceptionPassthroughInputStream) {
            this.f2380a = recyclableBufferedInputStream;
            this.b = exceptionPassthroughInputStream;
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public final void a(Bitmap bitmap, BitmapPool bitmapPool) {
            IOException iOException = this.b.f;
            if (iOException != null) {
                if (bitmap != null) {
                    bitmapPool.d(bitmap);
                    throw iOException;
                }
                throw iOException;
            }
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public final void b() {
            RecyclableBufferedInputStream recyclableBufferedInputStream = this.f2380a;
            synchronized (recyclableBufferedInputStream) {
                recyclableBufferedInputStream.g = recyclableBufferedInputStream.f2377c.length;
            }
        }
    }

    public StreamBitmapDecoder(Downsampler downsampler, ArrayPool arrayPool) {
        this.f2379a = downsampler;
        this.b = arrayPool;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        this.f2379a.getClass();
        return true;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.io.InputStream] */
    @Override // com.bumptech.glide.load.ResourceDecoder
    public final Resource b(Object obj, int i, int i2, Options options) {
        boolean z;
        RecyclableBufferedInputStream recyclableBufferedInputStream;
        ExceptionPassthroughInputStream exceptionPassthroughInputStream;
        ExceptionPassthroughInputStream exceptionPassthroughInputStream2;
        InputStream inputStream = (InputStream) obj;
        if (inputStream instanceof RecyclableBufferedInputStream) {
            recyclableBufferedInputStream = (RecyclableBufferedInputStream) inputStream;
            z = false;
        } else {
            z = true;
            recyclableBufferedInputStream = new RecyclableBufferedInputStream(inputStream, this.b);
        }
        ArrayDeque arrayDeque = ExceptionPassthroughInputStream.g;
        synchronized (arrayDeque) {
            exceptionPassthroughInputStream = (ExceptionPassthroughInputStream) arrayDeque.poll();
            exceptionPassthroughInputStream2 = exceptionPassthroughInputStream;
        }
        if (exceptionPassthroughInputStream == null) {
            exceptionPassthroughInputStream2 = new InputStream();
        }
        ExceptionPassthroughInputStream exceptionPassthroughInputStream3 = exceptionPassthroughInputStream2;
        exceptionPassthroughInputStream3.f2487c = recyclableBufferedInputStream;
        MarkEnforcingInputStream markEnforcingInputStream = new MarkEnforcingInputStream(exceptionPassthroughInputStream3);
        UntrustedCallbacks untrustedCallbacks = new UntrustedCallbacks(recyclableBufferedInputStream, exceptionPassthroughInputStream3);
        try {
            Downsampler downsampler = this.f2379a;
            BitmapResource a2 = downsampler.a(new ImageReader.InputStreamImageReader(markEnforcingInputStream, downsampler.d, downsampler.f2361c), i, i2, options, untrustedCallbacks);
            exceptionPassthroughInputStream3.release();
            if (z) {
                recyclableBufferedInputStream.release();
            }
            return a2;
        } finally {
        }
    }
}
