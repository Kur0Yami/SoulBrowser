package com.bumptech.glide.integration.webp.decoder;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.integration.webp.decoder.WebpFrameCacheStrategy;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.resource.UnitTransformation;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.CustomTarget;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import java.nio.ByteBuffer;
import java.security.MessageDigest;
import java.util.ArrayList;

/* loaded from: classes.dex */
public class WebpFrameLoader {
    public static final Option q = Option.a(WebpFrameCacheStrategy.f2139c, "com.bumptech.glide.integration.webp.decoder.WebpFrameLoader.CacheStrategy");

    /* renamed from: a, reason: collision with root package name */
    public final WebpDecoder f2142a;
    public final Handler b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2143c;
    public final RequestManager d;
    public final BitmapPool e;
    public boolean f;
    public boolean g;
    public final RequestBuilder h;
    public DelayTarget i;
    public boolean j;
    public DelayTarget k;
    public Bitmap l;
    public DelayTarget m;
    public final int n;
    public final int o;
    public final int p;

    /* loaded from: classes.dex */
    public static class DelayTarget extends CustomTarget<Bitmap> {
        public final Handler h;
        public final int i;
        public final long j;
        public Bitmap k;

        public DelayTarget(Handler handler, int i, long j) {
            this.h = handler;
            this.i = i;
            this.j = j;
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void a(Object obj, Transition transition) {
            this.k = (Bitmap) obj;
            Handler handler = this.h;
            handler.sendMessageAtTime(handler.obtainMessage(1, this), this.j);
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void l(Drawable drawable) {
            this.k = null;
        }
    }

    /* loaded from: classes.dex */
    public interface FrameCallback {
        void a();
    }

    /* loaded from: classes.dex */
    public class FrameLoaderCallback implements Handler.Callback {
        public FrameLoaderCallback() {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            WebpFrameLoader webpFrameLoader = WebpFrameLoader.this;
            if (i == 1) {
                webpFrameLoader.b((DelayTarget) message.obj);
                return true;
            }
            if (i == 2) {
                webpFrameLoader.d.p((DelayTarget) message.obj);
                return false;
            }
            return false;
        }
    }

    /* loaded from: classes.dex */
    public interface OnEveryFrameListener {
    }

    /* loaded from: classes.dex */
    public static class WebpFrameCacheKey implements Key {
        public final ObjectKey b;

        /* renamed from: c, reason: collision with root package name */
        public final int f2145c;

        public WebpFrameCacheKey(ObjectKey objectKey, int i) {
            this.b = objectKey;
            this.f2145c = i;
        }

        @Override // com.bumptech.glide.load.Key
        public final void a(MessageDigest messageDigest) {
            messageDigest.update(ByteBuffer.allocate(12).putInt(this.f2145c).array());
            this.b.a(messageDigest);
        }

        @Override // com.bumptech.glide.load.Key
        public final boolean equals(Object obj) {
            if (obj instanceof WebpFrameCacheKey) {
                WebpFrameCacheKey webpFrameCacheKey = (WebpFrameCacheKey) obj;
                if (this.b.equals(webpFrameCacheKey.b) && this.f2145c == webpFrameCacheKey.f2145c) {
                    return true;
                }
                return false;
            }
            return false;
        }

        @Override // com.bumptech.glide.load.Key
        public final int hashCode() {
            return (this.b.b.hashCode() * 31) + this.f2145c;
        }
    }

    public WebpFrameLoader(Glide glide, WebpDecoder webpDecoder, int i, int i2, Bitmap bitmap) {
        BitmapPool bitmapPool = glide.f;
        GlideContext glideContext = glide.h;
        Context baseContext = glideContext.getBaseContext();
        Preconditions.c(baseContext, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        RequestManager c2 = Glide.a(baseContext).j.c(baseContext);
        Context baseContext2 = glideContext.getBaseContext();
        Preconditions.c(baseContext2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        RequestBuilder a2 = Glide.a(baseContext2).j.c(baseContext2).d().a(((RequestOptions) ((RequestOptions) ((RequestOptions) new BaseRequestOptions().e(DiskCacheStrategy.f2204a)).x()).t(true)).n(i, i2));
        this.f2143c = new ArrayList();
        this.f = false;
        this.g = false;
        this.d = c2;
        Handler handler = new Handler(Looper.getMainLooper(), new FrameLoaderCallback());
        this.e = bitmapPool;
        this.b = handler;
        this.h = a2;
        this.f2142a = webpDecoder;
        this.l = bitmap;
        this.h = a2.a(new BaseRequestOptions().v(UnitTransformation.b, true));
        this.n = Util.c(bitmap);
        this.o = bitmap.getWidth();
        this.p = bitmap.getHeight();
    }

    public final void a() {
        int i;
        int i2;
        if (this.f && !this.g) {
            DelayTarget delayTarget = this.m;
            if (delayTarget != null) {
                this.m = null;
                b(delayTarget);
                return;
            }
            boolean z = true;
            this.g = true;
            WebpDecoder webpDecoder = this.f2142a;
            int[] iArr = webpDecoder.e;
            if (iArr.length != 0 && (i2 = webpDecoder.d) >= 0) {
                if (i2 >= 0 && i2 < iArr.length) {
                    i = iArr[i2];
                } else {
                    i = -1;
                }
            } else {
                i = 0;
            }
            long uptimeMillis = SystemClock.uptimeMillis() + i;
            webpDecoder.b();
            int i3 = webpDecoder.d;
            this.k = new DelayTarget(this.b, i3, uptimeMillis);
            WebpFrameCacheStrategy webpFrameCacheStrategy = webpDecoder.k;
            RequestOptions requestOptions = (RequestOptions) new BaseRequestOptions().s(new WebpFrameCacheKey(new ObjectKey(webpDecoder), i3));
            if (webpFrameCacheStrategy.f2140a != WebpFrameCacheStrategy.CacheControl.f2141c) {
                z = false;
            }
            this.h.a((RequestOptions) requestOptions.t(z)).M(webpDecoder).F(this.k);
        }
    }

    public final void b(DelayTarget delayTarget) {
        this.g = false;
        boolean z = this.j;
        Handler handler = this.b;
        if (z) {
            handler.obtainMessage(2, delayTarget).sendToTarget();
            return;
        }
        if (!this.f) {
            this.m = delayTarget;
            return;
        }
        if (delayTarget.k != null) {
            Bitmap bitmap = this.l;
            if (bitmap != null) {
                this.e.d(bitmap);
                this.l = null;
            }
            DelayTarget delayTarget2 = this.i;
            this.i = delayTarget;
            ArrayList arrayList = this.f2143c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                try {
                    FrameCallback frameCallback = (FrameCallback) arrayList.get(size);
                    if (frameCallback != null) {
                        frameCallback.a();
                    }
                } catch (IndexOutOfBoundsException e) {
                    e.printStackTrace();
                }
            }
            if (delayTarget2 != null) {
                handler.obtainMessage(2, delayTarget2).sendToTarget();
            }
        }
        a();
    }
}
