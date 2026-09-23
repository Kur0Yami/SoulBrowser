package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.util.DisplayMetrics;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.bitmap.BitmapResource;
import com.bumptech.glide.load.resource.bitmap.DownsampleStrategy;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.io.InputStream;
import java.util.ArrayDeque;
import java.util.ArrayList;

/* loaded from: classes.dex */
public final class WebpDownsampler {
    public static final Option e = Option.a(Boolean.FALSE, "com.bumptech.glide.integration.webp.decoder.WebpDownsampler.DisableDecoder");
    public static final Option f = Option.a(Boolean.TRUE, "com.bumptech.glide.integration.webp.decoder.WebpDownsampler.SystemDecoder");
    public static final Downsampler.DecodeCallbacks g = new Object();
    public static final ArrayDeque h;

    /* renamed from: a, reason: collision with root package name */
    public final BitmapPool f2135a;
    public final DisplayMetrics b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayPool f2136c;
    public final ArrayList d;

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks] */
    static {
        char[] cArr = Util.f2497a;
        h = new ArrayDeque(0);
    }

    public WebpDownsampler(ArrayList arrayList, DisplayMetrics displayMetrics, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.d = arrayList;
        Preconditions.c(displayMetrics, "Argument must not be null");
        this.b = displayMetrics;
        Preconditions.c(bitmapPool, "Argument must not be null");
        this.f2135a = bitmapPool;
        Preconditions.c(arrayPool, "Argument must not be null");
        this.f2136c = arrayPool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:28:?, code lost:
    
        throw r6;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap c(java.io.InputStream r10, android.graphics.BitmapFactory.Options r11, com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks r12, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool r13) {
        /*
            java.lang.String r0 = "WebpDownsampler"
            boolean r1 = r11.inJustDecodeBounds
            if (r1 == 0) goto Lc
            r1 = 10485760(0xa00000, float:1.469368E-38)
            r10.mark(r1)
            goto Lf
        Lc:
            r12.b()
        Lf:
            int r1 = r11.outWidth
            int r2 = r11.outHeight
            java.lang.String r3 = r11.outMimeType
            java.util.concurrent.locks.Lock r4 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.d
            r4.lock()
            r5 = 0
            android.graphics.Bitmap r12 = com.bumptech.glide.integration.webp.WebpBitmapFactory.decodeStream(r10, r5, r11)     // Catch: java.lang.IllegalArgumentException -> L2a java.lang.Throwable -> L75
            r4.unlock()
            boolean r11 = r11.inJustDecodeBounds
            if (r11 == 0) goto L29
            r10.reset()
        L29:
            return r12
        L2a:
            r4 = move-exception
            java.io.IOException r6 = new java.io.IOException     // Catch: java.lang.Throwable -> L75
            java.lang.String r7 = "Exception decoding bitmap, outWidth: "
            java.lang.String r8 = ", outHeight: "
            java.lang.String r9 = ", outMimeType: "
            java.lang.StringBuilder r1 = android.support.v4.media.a.u(r7, r1, r2, r8, r9)     // Catch: java.lang.Throwable -> L75
            r1.append(r3)     // Catch: java.lang.Throwable -> L75
            java.lang.String r2 = ", inBitmap: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L75
            android.graphics.Bitmap r2 = r11.inBitmap     // Catch: java.lang.Throwable -> L75
            java.lang.String r2 = d(r2)     // Catch: java.lang.Throwable -> L75
            r1.append(r2)     // Catch: java.lang.Throwable -> L75
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L75
            r6.<init>(r1, r4)     // Catch: java.lang.Throwable -> L75
            r1 = 3
            boolean r1 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L75
            if (r1 == 0) goto L5b
            java.lang.String r1 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r1, r6)     // Catch: java.lang.Throwable -> L75
        L5b:
            android.graphics.Bitmap r0 = r11.inBitmap     // Catch: java.lang.Throwable -> L75
            if (r0 == 0) goto L74
            r10.reset()     // Catch: java.io.IOException -> L73 java.lang.Throwable -> L75
            android.graphics.Bitmap r0 = r11.inBitmap     // Catch: java.io.IOException -> L73 java.lang.Throwable -> L75
            r13.d(r0)     // Catch: java.io.IOException -> L73 java.lang.Throwable -> L75
            r11.inBitmap = r5     // Catch: java.io.IOException -> L73 java.lang.Throwable -> L75
            android.graphics.Bitmap r10 = c(r10, r11, r12, r13)     // Catch: java.io.IOException -> L73 java.lang.Throwable -> L75
            java.util.concurrent.locks.Lock r11 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.d
            r11.unlock()
            return r10
        L73:
            throw r6     // Catch: java.lang.Throwable -> L75
        L74:
            throw r6     // Catch: java.lang.Throwable -> L75
        L75:
            r10 = move-exception
            java.util.concurrent.locks.Lock r11 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.d
            r11.unlock()
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.integration.webp.decoder.WebpDownsampler.c(java.io.InputStream, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool):android.graphics.Bitmap");
    }

    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static void e(BitmapFactory.Options options) {
        f(options);
        ArrayDeque arrayDeque = h;
        synchronized (arrayDeque) {
            arrayDeque.offer(options);
        }
    }

    public static void f(BitmapFactory.Options options) {
        options.inTempStorage = null;
        options.inDither = false;
        options.inScaled = false;
        options.inSampleSize = 1;
        options.inPreferredConfig = null;
        options.inJustDecodeBounds = false;
        options.inDensity = 0;
        options.inTargetDensity = 0;
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final BitmapResource a(InputStream inputStream, int i, int i2, Options options) {
        Throwable th;
        BitmapFactory.Options options2;
        WebpDownsampler webpDownsampler;
        Downsampler.DecodeCallbacks decodeCallbacks = g;
        Preconditions.a("You must provide an InputStream that supports mark()", inputStream.markSupported());
        byte[] bArr = (byte[]) this.f2136c.d(65536, byte[].class);
        synchronized (WebpDownsampler.class) {
            try {
                ArrayDeque arrayDeque = h;
                synchronized (arrayDeque) {
                    try {
                        try {
                            options2 = (BitmapFactory.Options) arrayDeque.poll();
                        } catch (Throwable th2) {
                            th = th2;
                            while (true) {
                                try {
                                    break;
                                } catch (Throwable th3) {
                                    th = th3;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th4) {
                        th = th4;
                        th = th;
                        throw th;
                    }
                }
                if (options2 == null) {
                    try {
                        options2 = new BitmapFactory.Options();
                        f(options2);
                    } catch (Throwable th5) {
                        th = th5;
                        throw th;
                    }
                }
                BitmapFactory.Options options3 = options2;
                options3.inTempStorage = bArr;
                DecodeFormat decodeFormat = (DecodeFormat) options.c(Downsampler.f);
                DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.c(Downsampler.h);
                boolean booleanValue = ((Boolean) options.c(Downsampler.i)).booleanValue();
                Option option = Downsampler.j;
                if (options.c(option) != null) {
                    ((Boolean) options.c(option)).booleanValue();
                }
                try {
                    Bitmap b = b(inputStream, options3, downsampleStrategy, decodeFormat, i, i2, booleanValue, decodeCallbacks);
                    webpDownsampler = this;
                    try {
                        BitmapResource b2 = BitmapResource.b(b, webpDownsampler.f2135a);
                        e(options3);
                        webpDownsampler.f2136c.put(bArr);
                        return b2;
                    } catch (Throwable th6) {
                        th = th6;
                        Throwable th7 = th;
                        e(options3);
                        webpDownsampler.f2136c.put(bArr);
                        throw th7;
                    }
                } catch (Throwable th8) {
                    th = th8;
                    webpDownsampler = this;
                }
            } catch (Throwable th9) {
                th = th9;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:101:0x0212  */
    /* JADX WARN: Removed duplicated region for block: B:43:0x01bb  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap b(java.io.InputStream r36, android.graphics.BitmapFactory.Options r37, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r38, com.bumptech.glide.load.DecodeFormat r39, int r40, int r41, boolean r42, com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks r43) {
        /*
            Method dump skipped, instructions count: 1024
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.integration.webp.decoder.WebpDownsampler.b(java.io.InputStream, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy, com.bumptech.glide.load.DecodeFormat, int, int, boolean, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks):android.graphics.Bitmap");
    }

    /* renamed from: com.bumptech.glide.integration.webp.decoder.WebpDownsampler$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static class AnonymousClass1 implements Downsampler.DecodeCallbacks {
        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public final void b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public final void a(Bitmap bitmap, BitmapPool bitmapPool) {
        }
    }
}
