package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import android.graphics.BitmapFactory;
import android.os.Build;
import android.util.DisplayMetrics;
import com.bumptech.glide.load.DecodeFormat;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.PreferredColorSpace;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import j$.util.DesugarCollections;
import java.util.ArrayDeque;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.EnumSet;
import java.util.HashSet;
import java.util.Set;

/* loaded from: classes.dex */
public final class Downsampler {
    public static final Option f = Option.a(DecodeFormat.g, "com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeFormat");
    public static final Option g = new Option("com.bumptech.glide.load.resource.bitmap.Downsampler.PreferredColorSpace", null, Option.e);
    public static final Option h = DownsampleStrategy.f;
    public static final Option i;
    public static final Option j;
    public static final Set k;
    public static final DecodeCallbacks l;
    public static final ArrayDeque m;

    /* renamed from: a, reason: collision with root package name */
    public final BitmapPool f2360a;
    public final DisplayMetrics b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayPool f2361c;
    public final ArrayList d;
    public final HardwareConfigState e = HardwareConfigState.a();

    /* loaded from: classes.dex */
    public interface DecodeCallbacks {
        void a(Bitmap bitmap, BitmapPool bitmapPool);

        void b();
    }

    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.Object, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks] */
    static {
        Boolean bool = Boolean.FALSE;
        i = Option.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.FixBitmapSize");
        j = Option.a(bool, "com.bumptech.glide.load.resource.bitmap.Downsampler.AllowHardwareDecode");
        k = DesugarCollections.unmodifiableSet(new HashSet(Arrays.asList("image/vnd.wap.wbmp", "image/x-ico")));
        l = new Object();
        DesugarCollections.unmodifiableSet(EnumSet.of(ImageHeaderParser.ImageType.JPEG, ImageHeaderParser.ImageType.PNG_A, ImageHeaderParser.ImageType.PNG));
        char[] cArr = Util.f2497a;
        m = new ArrayDeque(0);
    }

    public Downsampler(ArrayList arrayList, DisplayMetrics displayMetrics, BitmapPool bitmapPool, ArrayPool arrayPool) {
        this.d = arrayList;
        Preconditions.c(displayMetrics, "Argument must not be null");
        this.b = displayMetrics;
        Preconditions.c(bitmapPool, "Argument must not be null");
        this.f2360a = bitmapPool;
        Preconditions.c(arrayPool, "Argument must not be null");
        this.f2361c = arrayPool;
    }

    /* JADX WARN: Code restructure failed: missing block: B:23:?, code lost:
    
        throw r5;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static android.graphics.Bitmap c(com.bumptech.glide.load.resource.bitmap.ImageReader r9, android.graphics.BitmapFactory.Options r10, com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks r11, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool r12) {
        /*
            java.lang.String r0 = "Downsampler"
            boolean r1 = r10.inJustDecodeBounds
            if (r1 != 0) goto Lc
            r11.b()
            r9.d()
        Lc:
            int r1 = r10.outWidth
            int r2 = r10.outHeight
            java.lang.String r3 = r10.outMimeType
            java.util.concurrent.locks.Lock r4 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.d
            r4.lock()
            android.graphics.Bitmap r9 = r9.b(r10)     // Catch: java.lang.IllegalArgumentException -> L1f java.lang.Throwable -> L66
            r4.unlock()
            return r9
        L1f:
            r4 = move-exception
            java.io.IOException r5 = new java.io.IOException     // Catch: java.lang.Throwable -> L66
            java.lang.String r6 = "Exception decoding bitmap, outWidth: "
            java.lang.String r7 = ", outHeight: "
            java.lang.String r8 = ", outMimeType: "
            java.lang.StringBuilder r1 = android.support.v4.media.a.u(r6, r1, r2, r7, r8)     // Catch: java.lang.Throwable -> L66
            r1.append(r3)     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = ", inBitmap: "
            r1.append(r2)     // Catch: java.lang.Throwable -> L66
            android.graphics.Bitmap r2 = r10.inBitmap     // Catch: java.lang.Throwable -> L66
            java.lang.String r2 = d(r2)     // Catch: java.lang.Throwable -> L66
            r1.append(r2)     // Catch: java.lang.Throwable -> L66
            java.lang.String r1 = r1.toString()     // Catch: java.lang.Throwable -> L66
            r5.<init>(r1, r4)     // Catch: java.lang.Throwable -> L66
            r1 = 3
            boolean r1 = android.util.Log.isLoggable(r0, r1)     // Catch: java.lang.Throwable -> L66
            if (r1 == 0) goto L50
            java.lang.String r1 = "Failed to decode with inBitmap, trying again without Bitmap re-use"
            android.util.Log.d(r0, r1, r5)     // Catch: java.lang.Throwable -> L66
        L50:
            android.graphics.Bitmap r0 = r10.inBitmap     // Catch: java.lang.Throwable -> L66
            if (r0 == 0) goto L65
            r12.d(r0)     // Catch: java.io.IOException -> L64 java.lang.Throwable -> L66
            r0 = 0
            r10.inBitmap = r0     // Catch: java.io.IOException -> L64 java.lang.Throwable -> L66
            android.graphics.Bitmap r9 = c(r9, r10, r11, r12)     // Catch: java.io.IOException -> L64 java.lang.Throwable -> L66
            java.util.concurrent.locks.Lock r10 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.d
            r10.unlock()
            return r9
        L64:
            throw r5     // Catch: java.lang.Throwable -> L66
        L65:
            throw r5     // Catch: java.lang.Throwable -> L66
        L66:
            r9 = move-exception
            java.util.concurrent.locks.Lock r10 = com.bumptech.glide.load.resource.bitmap.TransformationUtils.d
            r10.unlock()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.Downsampler.c(com.bumptech.glide.load.resource.bitmap.ImageReader, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool):android.graphics.Bitmap");
    }

    public static String d(Bitmap bitmap) {
        if (bitmap == null) {
            return null;
        }
        return "[" + bitmap.getWidth() + "x" + bitmap.getHeight() + "] " + bitmap.getConfig() + (" (" + bitmap.getAllocationByteCount() + ")");
    }

    public static void e(BitmapFactory.Options options) {
        f(options);
        ArrayDeque arrayDeque = m;
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
        if (Build.VERSION.SDK_INT >= 26) {
            options.inPreferredColorSpace = null;
            options.outColorSpace = null;
            options.outConfig = null;
        }
        options.outWidth = 0;
        options.outHeight = 0;
        options.outMimeType = null;
        options.inBitmap = null;
        options.inMutable = true;
    }

    public final BitmapResource a(ImageReader imageReader, int i2, int i3, Options options, DecodeCallbacks decodeCallbacks) {
        BitmapFactory.Options options2;
        BitmapFactory.Options options3;
        boolean z;
        byte[] bArr = (byte[]) this.f2361c.d(65536, byte[].class);
        synchronized (Downsampler.class) {
            ArrayDeque arrayDeque = m;
            synchronized (arrayDeque) {
                options2 = (BitmapFactory.Options) arrayDeque.poll();
            }
            if (options2 == null) {
                options2 = new BitmapFactory.Options();
                f(options2);
            }
            options3 = options2;
        }
        options3.inTempStorage = bArr;
        DecodeFormat decodeFormat = (DecodeFormat) options.c(f);
        PreferredColorSpace preferredColorSpace = (PreferredColorSpace) options.c(g);
        DownsampleStrategy downsampleStrategy = (DownsampleStrategy) options.c(DownsampleStrategy.f);
        boolean booleanValue = ((Boolean) options.c(i)).booleanValue();
        Option option = j;
        if (options.c(option) != null && ((Boolean) options.c(option)).booleanValue()) {
            z = true;
        } else {
            z = false;
        }
        try {
            return BitmapResource.b(b(imageReader, options3, downsampleStrategy, decodeFormat, preferredColorSpace, z, i2, i3, booleanValue, decodeCallbacks), this.f2360a);
        } finally {
            e(options3);
            this.f2361c.c(bArr);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:108:0x044e  */
    /* JADX WARN: Removed duplicated region for block: B:110:0x04d3  */
    /* JADX WARN: Removed duplicated region for block: B:115:0x03f4  */
    /* JADX WARN: Removed duplicated region for block: B:124:0x036b  */
    /* JADX WARN: Removed duplicated region for block: B:127:0x039c  */
    /* JADX WARN: Removed duplicated region for block: B:128:0x03db  */
    /* JADX WARN: Removed duplicated region for block: B:148:0x0279  */
    /* JADX WARN: Removed duplicated region for block: B:150:0x01ef  */
    /* JADX WARN: Removed duplicated region for block: B:151:0x01c7  */
    /* JADX WARN: Removed duplicated region for block: B:152:0x014f  */
    /* JADX WARN: Removed duplicated region for block: B:49:0x0130  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x01c4  */
    /* JADX WARN: Removed duplicated region for block: B:57:0x01ec  */
    /* JADX WARN: Removed duplicated region for block: B:66:0x0213  */
    /* JADX WARN: Removed duplicated region for block: B:82:0x03e8  */
    /* JADX WARN: Removed duplicated region for block: B:86:0x03f7  */
    /* JADX WARN: Removed duplicated region for block: B:89:0x0406  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap b(com.bumptech.glide.load.resource.bitmap.ImageReader r39, android.graphics.BitmapFactory.Options r40, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy r41, com.bumptech.glide.load.DecodeFormat r42, com.bumptech.glide.load.PreferredColorSpace r43, boolean r44, int r45, int r46, boolean r47, com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks r48) {
        /*
            Method dump skipped, instructions count: 1292
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.Downsampler.b(com.bumptech.glide.load.resource.bitmap.ImageReader, android.graphics.BitmapFactory$Options, com.bumptech.glide.load.resource.bitmap.DownsampleStrategy, com.bumptech.glide.load.DecodeFormat, com.bumptech.glide.load.PreferredColorSpace, boolean, int, int, boolean, com.bumptech.glide.load.resource.bitmap.Downsampler$DecodeCallbacks):android.graphics.Bitmap");
    }

    /* renamed from: com.bumptech.glide.load.resource.bitmap.Downsampler$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements DecodeCallbacks {
        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public final void b() {
        }

        @Override // com.bumptech.glide.load.resource.bitmap.Downsampler.DecodeCallbacks
        public final void a(Bitmap bitmap, BitmapPool bitmapPool) {
        }
    }
}
