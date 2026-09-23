package com.bumptech.glide.integration.webp.decoder;

import android.graphics.Bitmap;
import android.graphics.Canvas;
import android.graphics.Paint;
import android.graphics.PorterDuff;
import android.graphics.PorterDuffXfermode;
import android.os.Build;
import android.support.v4.media.a;
import android.util.DisplayMetrics;
import android.util.Log;
import android.util.LruCache;
import com.bumptech.glide.gifdecoder.GifDecoder;
import com.bumptech.glide.gifdecoder.GifHeader;
import com.bumptech.glide.integration.webp.WebpFrame;
import com.bumptech.glide.integration.webp.WebpFrameInfo;
import com.bumptech.glide.integration.webp.WebpImage;
import com.bumptech.glide.integration.webp.decoder.WebpFrameCacheStrategy;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class WebpDecoder implements GifDecoder {

    /* renamed from: a, reason: collision with root package name */
    public ByteBuffer f2132a;
    public WebpImage b;

    /* renamed from: c, reason: collision with root package name */
    public final GifDecoder.BitmapProvider f2133c;
    public final int[] e;
    public final WebpFrameInfo[] f;
    public final int g;
    public final int h;
    public final int i;
    public final Paint j;
    public final WebpFrameCacheStrategy k;
    public final LruCache m;
    public int d = -1;
    public final Bitmap.Config l = Bitmap.Config.ARGB_8888;

    public WebpDecoder(GifDecoder.BitmapProvider bitmapProvider, WebpImage webpImage, ByteBuffer byteBuffer, int i, WebpFrameCacheStrategy webpFrameCacheStrategy) {
        int max;
        this.f2133c = bitmapProvider;
        this.b = webpImage;
        this.e = webpImage.getFrameDurations();
        this.f = new WebpFrameInfo[webpImage.getFrameCount()];
        for (int i2 = 0; i2 < this.b.getFrameCount(); i2++) {
            this.f[i2] = this.b.getFrameInfo(i2);
            if (Log.isLoggable("WebpDecoder", 3)) {
                Log.d("WebpDecoder", "mFrameInfos: " + this.f[i2].toString());
            }
        }
        this.k = webpFrameCacheStrategy;
        Paint paint = new Paint();
        this.j = paint;
        paint.setColor(0);
        paint.setStyle(Paint.Style.FILL);
        paint.setXfermode(new PorterDuffXfermode(PorterDuff.Mode.SRC));
        if (webpFrameCacheStrategy.f2140a == WebpFrameCacheStrategy.CacheControl.g) {
            max = webpImage.getFrameCount();
        } else {
            max = Math.max(5, 0);
        }
        this.m = new LruCache<Integer, Bitmap>(max) { // from class: com.bumptech.glide.integration.webp.decoder.WebpDecoder.1
            @Override // android.util.LruCache
            public final void entryRemoved(boolean z, Integer num, Bitmap bitmap, Bitmap bitmap2) {
                Bitmap bitmap3 = bitmap;
                if (bitmap3 != null) {
                    WebpDecoder.this.f2133c.c(bitmap3);
                }
            }
        };
        new GifHeader();
        if (i > 0) {
            int highestOneBit = Integer.highestOneBit(i);
            ByteBuffer asReadOnlyBuffer = byteBuffer.asReadOnlyBuffer();
            this.f2132a = asReadOnlyBuffer;
            asReadOnlyBuffer.position(0);
            this.g = highestOneBit;
            this.i = this.b.getWidth() / highestOneBit;
            this.h = this.b.getHeight() / highestOneBit;
            return;
        }
        throw new IllegalArgumentException(a.e(i, "Sample size must be >=0, not: "));
    }

    @Override // com.bumptech.glide.gifdecoder.GifDecoder
    public final Bitmap a() {
        int i;
        Bitmap bitmap;
        int i2 = this.d;
        int i3 = this.h;
        Bitmap.Config config = Bitmap.Config.ARGB_8888;
        GifDecoder.BitmapProvider bitmapProvider = this.f2133c;
        Bitmap a2 = bitmapProvider.a(this.i, i3, config);
        a2.eraseColor(0);
        if (Build.VERSION.SDK_INT >= 24) {
            a2.setDensity(DisplayMetrics.DENSITY_DEVICE_STABLE);
        }
        Canvas canvas = new Canvas(a2);
        canvas.drawColor(0, PorterDuff.Mode.SRC);
        WebpFrameCacheStrategy.CacheControl cacheControl = this.k.f2140a;
        WebpFrameCacheStrategy.CacheControl cacheControl2 = WebpFrameCacheStrategy.CacheControl.f2141c;
        LruCache lruCache = this.m;
        if (cacheControl != cacheControl2 && (bitmap = (Bitmap) lruCache.get(Integer.valueOf(i2))) != null) {
            if (Log.isLoggable("WebpDecoder", 3)) {
                Log.d("WebpDecoder", "hit frame bitmap from memory cache, frameNumber=" + i2);
            }
            bitmap.setDensity(canvas.getDensity());
            canvas.drawBitmap(bitmap, 0.0f, 0.0f, (Paint) null);
            return a2;
        }
        boolean f = f(i2);
        WebpFrameInfo[] webpFrameInfoArr = this.f;
        if (!f) {
            i = i2 - 1;
            while (true) {
                if (i >= 0) {
                    WebpFrameInfo webpFrameInfo = webpFrameInfoArr[i];
                    if (webpFrameInfo.h && e(webpFrameInfo)) {
                        break;
                    }
                    Bitmap bitmap2 = (Bitmap) lruCache.get(Integer.valueOf(i));
                    if (bitmap2 != null && !bitmap2.isRecycled()) {
                        bitmap2.setDensity(canvas.getDensity());
                        canvas.drawBitmap(bitmap2, 0.0f, 0.0f, (Paint) null);
                        if (webpFrameInfo.h) {
                            d(canvas, webpFrameInfo);
                        }
                    } else {
                        if (f(i)) {
                            break;
                        }
                        i--;
                    }
                } else {
                    i = 0;
                    break;
                }
            }
            i++;
        } else {
            i = i2;
        }
        if (Log.isLoggable("WebpDecoder", 3)) {
            Log.d("WebpDecoder", "frameNumber=" + i2 + ", nextIndex=" + i);
        }
        while (i < i2) {
            WebpFrameInfo webpFrameInfo2 = webpFrameInfoArr[i];
            boolean z = webpFrameInfo2.g;
            boolean z2 = webpFrameInfo2.h;
            if (!z) {
                d(canvas, webpFrameInfo2);
            }
            g(i, canvas);
            if (Log.isLoggable("WebpDecoder", 3)) {
                StringBuilder s = a.s(i, "renderFrame, index=", ", blend=");
                s.append(webpFrameInfo2.g);
                s.append(", dispose=");
                s.append(z2);
                Log.d("WebpDecoder", s.toString());
            }
            if (z2) {
                d(canvas, webpFrameInfo2);
            }
            i++;
        }
        WebpFrameInfo webpFrameInfo3 = webpFrameInfoArr[i2];
        if (!webpFrameInfo3.g) {
            d(canvas, webpFrameInfo3);
        }
        g(i2, canvas);
        if (Log.isLoggable("WebpDecoder", 3)) {
            StringBuilder s2 = a.s(i2, "renderFrame, index=", ", blend=");
            s2.append(webpFrameInfo3.g);
            s2.append(", dispose=");
            s2.append(webpFrameInfo3.h);
            Log.d("WebpDecoder", s2.toString());
        }
        lruCache.remove(Integer.valueOf(i2));
        Bitmap a3 = bitmapProvider.a(a2.getWidth(), a2.getHeight(), a2.getConfig());
        a3.eraseColor(0);
        a3.setDensity(a2.getDensity());
        Canvas canvas2 = new Canvas(a3);
        canvas2.drawColor(0, PorterDuff.Mode.SRC);
        canvas2.drawBitmap(a2, 0.0f, 0.0f, (Paint) null);
        lruCache.put(Integer.valueOf(i2), a3);
        return a2;
    }

    public final void b() {
        this.d = (this.d + 1) % this.b.getFrameCount();
    }

    public final void c() {
        this.b.dispose();
        this.b = null;
        this.m.evictAll();
        this.f2132a = null;
    }

    public final void d(Canvas canvas, WebpFrameInfo webpFrameInfo) {
        int i = webpFrameInfo.b;
        int i2 = this.g;
        int i3 = webpFrameInfo.f2116c;
        canvas.drawRect(i / i2, i3 / i2, (i + webpFrameInfo.d) / i2, (i3 + webpFrameInfo.e) / i2, this.j);
    }

    public final boolean e(WebpFrameInfo webpFrameInfo) {
        if (webpFrameInfo.b == 0 && webpFrameInfo.f2116c == 0 && webpFrameInfo.d == this.b.getWidth() && webpFrameInfo.e == this.b.getHeight()) {
            return true;
        }
        return false;
    }

    public final boolean f(int i) {
        if (i == 0) {
            return true;
        }
        WebpFrameInfo[] webpFrameInfoArr = this.f;
        WebpFrameInfo webpFrameInfo = webpFrameInfoArr[i];
        WebpFrameInfo webpFrameInfo2 = webpFrameInfoArr[i - 1];
        if (!webpFrameInfo.g && e(webpFrameInfo)) {
            return true;
        }
        if (webpFrameInfo2.h && e(webpFrameInfo2)) {
            return true;
        }
        return false;
    }

    public final void g(int i, Canvas canvas) {
        GifDecoder.BitmapProvider bitmapProvider = this.f2133c;
        WebpFrameInfo webpFrameInfo = this.f[i];
        int i2 = webpFrameInfo.d;
        int i3 = this.g;
        int i4 = i2 / i3;
        int i5 = webpFrameInfo.e / i3;
        int i6 = webpFrameInfo.b / i3;
        int i7 = webpFrameInfo.f2116c / i3;
        if (i4 != 0 && i5 != 0) {
            WebpFrame frame = this.b.getFrame(i);
            try {
                Bitmap a2 = bitmapProvider.a(i4, i5, this.l);
                a2.eraseColor(0);
                a2.setDensity(canvas.getDensity());
                frame.renderFrame(i4, i5, a2);
                canvas.drawBitmap(a2, i6, i7, (Paint) null);
                bitmapProvider.c(a2);
            } catch (IllegalArgumentException | IllegalStateException unused) {
                Log.e("WebpDecoder", "Rendering of frame failed. Frame number: " + i);
            } finally {
                frame.dispose();
            }
        }
    }
}
