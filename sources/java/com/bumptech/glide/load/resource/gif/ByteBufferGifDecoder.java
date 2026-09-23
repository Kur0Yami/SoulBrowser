package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.os.SystemClock;
import android.support.v4.media.a;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.gifdecoder.GifHeaderParser;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.ImageHeaderParserUtils;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceDecoder;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.drawable.DrawableResource;
import com.bumptech.glide.load.resource.gif.GifDrawable;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class ByteBufferGifDecoder implements ResourceDecoder<ByteBuffer, GifDrawable> {
    public static final GifDecoderFactory f = new Object();
    public static final GifHeaderParserPool g = new GifHeaderParserPool();

    /* renamed from: a, reason: collision with root package name */
    public final Context f2398a;
    public final ArrayList b;
    public final GifBitmapProvider e;
    public final GifDecoderFactory d = f;

    /* renamed from: c, reason: collision with root package name */
    public final GifHeaderParserPool f2399c = g;

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class GifDecoderFactory {
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class GifHeaderParserPool {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayDeque f2400a;

        public GifHeaderParserPool() {
            char[] cArr = Util.f2497a;
            this.f2400a = new ArrayDeque(0);
        }

        public final synchronized void a(GifHeaderParser gifHeaderParser) {
            gifHeaderParser.b = null;
            gifHeaderParser.f2112c = null;
            this.f2400a.offer(gifHeaderParser);
        }
    }

    public ByteBufferGifDecoder(Context context, ArrayList arrayList, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.f2398a = context.getApplicationContext();
        this.b = arrayList;
        this.e = new GifBitmapProvider(arrayPool, bitmapPool);
    }

    public static int d(GifHeader gifHeader, int i, int i2) {
        int highestOneBit;
        int min = Math.min(gifHeader.g / i2, gifHeader.f / i);
        if (min == 0) {
            highestOneBit = 0;
        } else {
            highestOneBit = Integer.highestOneBit(min);
        }
        int max = Math.max(1, highestOneBit);
        if (Log.isLoggable("BufferGifDecoder", 2) && max > 1) {
            StringBuilder u = a.u("Downsampling GIF, sampleSize: ", max, i, ", target dimens: [", "x");
            u.append(i2);
            u.append("], actual dimens: [");
            u.append(gifHeader.f);
            u.append("x");
            u.append(gifHeader.g);
            u.append("]");
            Log.v("BufferGifDecoder", u.toString());
        }
        return max;
    }

    @Override // com.bumptech.glide.load.ResourceDecoder
    public final boolean a(Object obj, Options options) {
        ByteBuffer byteBuffer = (ByteBuffer) obj;
        if (!((Boolean) options.c(GifOptions.b)).booleanValue() && ImageHeaderParserUtils.g(this.b, byteBuffer) == ImageHeaderParser.ImageType.GIF) {
            return true;
        }
        return false;
    }

    /*  JADX ERROR: JadxRuntimeException in pass: RegionMakerVisitor
        jadx.core.utils.exceptions.JadxRuntimeException: Can't find top splitter block for handler:B:30:0x0059
        	at jadx.core.utils.BlockUtils.getTopSplitterForHandler(BlockUtils.java:1166)
        	at jadx.core.dex.visitors.regions.RegionMaker.processTryCatchBlocks(RegionMaker.java:1022)
        	at jadx.core.dex.visitors.regions.RegionMakerVisitor.visit(RegionMakerVisitor.java:55)
        */
    @Override // com.bumptech.glide.load.ResourceDecoder
    public final com.bumptech.glide.load.engine.Resource b(java.lang.Object r8, int r9, int r10, com.bumptech.glide.load.Options r11) {
        /*
            r7 = this;
            r2 = r8
            java.nio.ByteBuffer r2 = (java.nio.ByteBuffer) r2
            com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder$GifHeaderParserPool r8 = r7.f2399c
            monitor-enter(r8)
            java.util.ArrayDeque r0 = r8.f2400a     // Catch: java.lang.Throwable -> L54
            java.lang.Object r0 = r0.poll()     // Catch: java.lang.Throwable -> L54
            com.bumptech.glide.gifdecoder.GifHeaderParser r0 = (com.bumptech.glide.gifdecoder.GifHeaderParser) r0     // Catch: java.lang.Throwable -> L54
            if (r0 != 0) goto L15
            com.bumptech.glide.gifdecoder.GifHeaderParser r0 = new com.bumptech.glide.gifdecoder.GifHeaderParser     // Catch: java.lang.Throwable -> L17
            r0.<init>()     // Catch: java.lang.Throwable -> L17
        L15:
            r5 = r0
            goto L1b
        L17:
            r0 = move-exception
            r9 = r0
            r1 = r7
            goto L57
        L1b:
            r0 = 0
            r5.b = r0     // Catch: java.lang.Throwable -> L54
            byte[] r0 = r5.f2111a     // Catch: java.lang.Throwable -> L54
            r1 = 0
            java.util.Arrays.fill(r0, r1)     // Catch: java.lang.Throwable -> L54
            com.bumptech.glide.gifdecoder.GifHeader r0 = new com.bumptech.glide.gifdecoder.GifHeader     // Catch: java.lang.Throwable -> L54
            r0.<init>()     // Catch: java.lang.Throwable -> L54
            r5.f2112c = r0     // Catch: java.lang.Throwable -> L54
            r5.d = r1     // Catch: java.lang.Throwable -> L54
            java.nio.ByteBuffer r0 = r2.asReadOnlyBuffer()     // Catch: java.lang.Throwable -> L54
            r5.b = r0     // Catch: java.lang.Throwable -> L54
            r0.position(r1)     // Catch: java.lang.Throwable -> L54
            java.nio.ByteBuffer r0 = r5.b     // Catch: java.lang.Throwable -> L54
            java.nio.ByteOrder r1 = java.nio.ByteOrder.LITTLE_ENDIAN     // Catch: java.lang.Throwable -> L54
            r0.order(r1)     // Catch: java.lang.Throwable -> L54
            monitor-exit(r8)
            r1 = r7
            r3 = r9
            r4 = r10
            r6 = r11
            com.bumptech.glide.load.resource.gif.GifDrawableResource r8 = r1.c(r2, r3, r4, r5, r6)     // Catch: java.lang.Throwable -> L4c
            com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder$GifHeaderParserPool r9 = r1.f2399c
            r9.a(r5)
            return r8
        L4c:
            r0 = move-exception
            r8 = r0
            com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder$GifHeaderParserPool r9 = r1.f2399c
            r9.a(r5)
            throw r8
        L54:
            r0 = move-exception
            r1 = r7
        L56:
            r9 = r0
        L57:
            monitor-exit(r8)     // Catch: java.lang.Throwable -> L59
            throw r9
        L59:
            r0 = move-exception
            goto L56
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.gif.ByteBufferGifDecoder.b(java.lang.Object, int, int, com.bumptech.glide.load.Options):com.bumptech.glide.load.engine.Resource");
    }

    /* JADX WARN: Type inference failed for: r0v9, types: [com.bumptech.glide.load.resource.drawable.DrawableResource, com.bumptech.glide.load.resource.gif.GifDrawableResource] */
    public final GifDrawableResource c(ByteBuffer byteBuffer, int i, int i2, GifHeaderParser gifHeaderParser, Options options) {
        StringBuilder sb;
        Bitmap.Config config;
        int i3 = LogTime.b;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        try {
            GifHeader b = gifHeaderParser.b();
            if (b.f2110c > 0 && b.b == 0) {
                if (options.c(GifOptions.f2408a) == DecodeFormat.f) {
                    config = Bitmap.Config.RGB_565;
                } else {
                    config = Bitmap.Config.ARGB_8888;
                }
                int d = d(b, i, i2);
                GifDecoderFactory gifDecoderFactory = this.d;
                GifBitmapProvider gifBitmapProvider = this.e;
                gifDecoderFactory.getClass();
                StandardGifDecoder standardGifDecoder = new StandardGifDecoder(gifBitmapProvider, b, byteBuffer, d);
                standardGifDecoder.e(config);
                standardGifDecoder.b();
                Bitmap a2 = standardGifDecoder.a();
                if (a2 == null) {
                    if (Log.isLoggable("BufferGifDecoder", 2)) {
                        sb = new StringBuilder("Decoded GIF from stream in ");
                        sb.append(LogTime.a(elapsedRealtimeNanos));
                        Log.v("BufferGifDecoder", sb.toString());
                        return null;
                    }
                    return null;
                }
                ?? drawableResource = new DrawableResource(new GifDrawable(new GifDrawable.GifState(new GifFrameLoader(Glide.a(this.f2398a), standardGifDecoder, i, i2, a2))));
                if (Log.isLoggable("BufferGifDecoder", 2)) {
                    Log.v("BufferGifDecoder", "Decoded GIF from stream in " + LogTime.a(elapsedRealtimeNanos));
                }
                return drawableResource;
            }
            if (Log.isLoggable("BufferGifDecoder", 2)) {
                sb = new StringBuilder("Decoded GIF from stream in ");
                sb.append(LogTime.a(elapsedRealtimeNanos));
                Log.v("BufferGifDecoder", sb.toString());
                return null;
            }
            return null;
        } finally {
        }
    }
}
