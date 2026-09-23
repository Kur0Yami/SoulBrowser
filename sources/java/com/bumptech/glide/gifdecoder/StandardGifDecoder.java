package com.bumptech.glide.gifdecoder;

import android.graphics.Bitmap;
import com.bumptech.glide.gifdecoder.GifDecoder;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class StandardGifDecoder implements GifDecoder {

    /* renamed from: a, reason: collision with root package name */
    public int[] f2113a;

    /* renamed from: c, reason: collision with root package name */
    public final GifDecoder.BitmapProvider f2114c;
    public ByteBuffer d;
    public byte[] e;
    public short[] f;
    public byte[] g;
    public byte[] h;
    public byte[] i;
    public final int[] j;
    public int k;
    public GifHeader l;
    public Bitmap m;
    public final boolean n;
    public int o;
    public final int p;
    public final int q;
    public final int r;
    public Boolean s;
    public final int[] b = new int[256];
    public Bitmap.Config t = Bitmap.Config.ARGB_8888;

    public StandardGifDecoder(GifDecoder.BitmapProvider bitmapProvider, GifHeader gifHeader, ByteBuffer byteBuffer, int i) {
        this.f2114c = bitmapProvider;
        this.l = new GifHeader();
        synchronized (this) {
            try {
                if (i > 0) {
                    int highestOneBit = Integer.highestOneBit(i);
                    int i2 = 0;
                    this.o = 0;
                    this.l = gifHeader;
                    this.k = -1;
                    ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
                    this.d = asReadOnlyBuffer;
                    asReadOnlyBuffer.position(0);
                    this.d.order(ByteOrder.LITTLE_ENDIAN);
                    this.n = false;
                    ArrayList arrayList = gifHeader.e;
                    int size = arrayList.size();
                    while (true) {
                        if (i2 >= size) {
                            break;
                        }
                        Object obj = arrayList.get(i2);
                        i2++;
                        if (((GifFrame) obj).g == 3) {
                            this.n = true;
                            break;
                        }
                    }
                    this.p = highestOneBit;
                    int i3 = gifHeader.f;
                    this.r = i3 / highestOneBit;
                    int i4 = gifHeader.g;
                    this.q = i4 / highestOneBit;
                    this.i = this.f2114c.e(i3 * i4);
                    this.j = this.f2114c.b(this.r * this.q);
                } else {
                    throw new IllegalArgumentException("Sample size must be >=0, not: " + i);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:16:0x0051 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005b, B:19:0x006c, B:20:0x0078, B:23:0x0081, B:25:0x0085, B:27:0x008d, B:28:0x00a0, B:32:0x00a4, B:34:0x00a8, B:36:0x00ba, B:38:0x00be, B:39:0x00c2, B:42:0x007d, B:44:0x00c8, B:46:0x00d0, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x006c A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005b, B:19:0x006c, B:20:0x0078, B:23:0x0081, B:25:0x0085, B:27:0x008d, B:28:0x00a0, B:32:0x00a4, B:34:0x00a8, B:36:0x00ba, B:38:0x00be, B:39:0x00c2, B:42:0x007d, B:44:0x00c8, B:46:0x00d0, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:22:0x007c  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x0085 A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005b, B:19:0x006c, B:20:0x0078, B:23:0x0081, B:25:0x0085, B:27:0x008d, B:28:0x00a0, B:32:0x00a4, B:34:0x00a8, B:36:0x00ba, B:38:0x00be, B:39:0x00c2, B:42:0x007d, B:44:0x00c8, B:46:0x00d0, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00a4 A[Catch: all -> 0x0014, TRY_ENTER, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005b, B:19:0x006c, B:20:0x0078, B:23:0x0081, B:25:0x0085, B:27:0x008d, B:28:0x00a0, B:32:0x00a4, B:34:0x00a8, B:36:0x00ba, B:38:0x00be, B:39:0x00c2, B:42:0x007d, B:44:0x00c8, B:46:0x00d0, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:42:0x007d A[Catch: all -> 0x0014, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005b, B:19:0x006c, B:20:0x0078, B:23:0x0081, B:25:0x0085, B:27:0x008d, B:28:0x00a0, B:32:0x00a4, B:34:0x00a8, B:36:0x00ba, B:38:0x00be, B:39:0x00c2, B:42:0x007d, B:44:0x00c8, B:46:0x00d0, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    /* JADX WARN: Removed duplicated region for block: B:43:0x0077  */
    /* JADX WARN: Removed duplicated region for block: B:46:0x00d0 A[Catch: all -> 0x0014, TRY_LEAVE, TryCatch #0 {all -> 0x0014, blocks: (B:4:0x0007, B:6:0x000f, B:9:0x0040, B:14:0x004a, B:16:0x0051, B:17:0x005b, B:19:0x006c, B:20:0x0078, B:23:0x0081, B:25:0x0085, B:27:0x008d, B:28:0x00a0, B:32:0x00a4, B:34:0x00a8, B:36:0x00ba, B:38:0x00be, B:39:0x00c2, B:42:0x007d, B:44:0x00c8, B:46:0x00d0, B:49:0x0017, B:51:0x001f, B:52:0x003e), top: B:3:0x0007 }] */
    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final synchronized android.graphics.Bitmap a() {
        /*
            Method dump skipped, instructions count: 231
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.StandardGifDecoder.a():android.graphics.Bitmap");
    }

    public final void b() {
        this.k = (this.k + 1) % this.l.f2110c;
    }

    public final Bitmap c() {
        Bitmap.Config config;
        Boolean bool = this.s;
        if (bool != null && !bool.booleanValue()) {
            config = this.t;
        } else {
            config = Bitmap.Config.ARGB_8888;
        }
        Bitmap a2 = this.f2114c.a(this.r, this.q, config);
        a2.setHasAlpha(true);
        return a2;
    }

    public final int d() {
        int i;
        GifHeader gifHeader = this.l;
        int i2 = gifHeader.f2110c;
        if (i2 > 0 && (i = this.k) >= 0) {
            if (i >= 0 && i < i2) {
                return ((GifFrame) gifHeader.e.get(i)).i;
            }
            return -1;
        }
        return 0;
    }

    public final void e(Bitmap.Config config) {
        Bitmap.Config config2;
        Bitmap.Config config3 = Bitmap.Config.ARGB_8888;
        if (config != config3 && config != (config2 = Bitmap.Config.RGB_565)) {
            throw new IllegalArgumentException("Unsupported format: " + config + ", must be one of " + config3 + " or " + config2);
        }
        this.t = config;
    }

    /* JADX WARN: Code restructure failed: missing block: B:24:0x0041, code lost:
    
        if (r5.j == r36.h) goto L26;
     */
    /* JADX WARN: Removed duplicated region for block: B:27:0x005a  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final android.graphics.Bitmap f(com.bumptech.glide.gifdecoder.GifFrame r36, com.bumptech.glide.gifdecoder.GifFrame r37) {
        /*
            Method dump skipped, instructions count: 1025
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.gifdecoder.StandardGifDecoder.f(com.bumptech.glide.gifdecoder.GifFrame, com.bumptech.glide.gifdecoder.GifFrame):android.graphics.Bitmap");
    }
}
