package com.bumptech.glide.load.resource.gif;

import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Handler;
import android.os.Looper;
import android.os.Message;
import android.os.SystemClock;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.RequestBuilder;
import com.bumptech.glide.RequestManager;
import com.bumptech.glide.gifdecoder.StandardGifDecoder;
import com.bumptech.glide.load.Transformation;
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
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class GifFrameLoader {

    /* renamed from: a, reason: collision with root package name */
    public final StandardGifDecoder f2404a;
    public final Handler b;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f2405c;
    public final RequestManager d;
    public final BitmapPool e;
    public boolean f;
    public boolean g;
    public RequestBuilder h;
    public DelayTarget i;
    public boolean j;
    public DelayTarget k;
    public Bitmap l;
    public Transformation m;
    public DelayTarget n;
    public int o;
    public int p;
    public int q;

    @VisibleForTesting
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
            GifFrameLoader gifFrameLoader = GifFrameLoader.this;
            if (i == 1) {
                gifFrameLoader.b((DelayTarget) message.obj);
                return true;
            }
            if (i == 2) {
                gifFrameLoader.d.p((DelayTarget) message.obj);
                return false;
            }
            return false;
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public interface OnEveryFrameListener {
    }

    public GifFrameLoader(Glide glide, StandardGifDecoder standardGifDecoder, int i, int i2, Bitmap bitmap) {
        BitmapPool bitmapPool = glide.f;
        GlideContext glideContext = glide.h;
        Context baseContext = glideContext.getBaseContext();
        Preconditions.c(baseContext, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        RequestManager c2 = Glide.a(baseContext).j.c(baseContext);
        Context baseContext2 = glideContext.getBaseContext();
        Preconditions.c(baseContext2, "You cannot start a load on a not yet attached View or a Fragment where getActivity() returns null (which usually occurs when getActivity() is called before the Fragment is attached or after the Fragment is destroyed).");
        RequestBuilder a2 = Glide.a(baseContext2).j.c(baseContext2).d().a(((RequestOptions) ((RequestOptions) ((RequestOptions) new BaseRequestOptions().e(DiskCacheStrategy.f2204a)).x()).t(true)).n(i, i2));
        this.f2405c = new ArrayList();
        this.d = c2;
        Handler handler = new Handler(Looper.getMainLooper(), new FrameLoaderCallback());
        this.e = bitmapPool;
        this.b = handler;
        this.h = a2;
        this.f2404a = standardGifDecoder;
        c(UnitTransformation.b, bitmap);
    }

    public final void a() {
        if (this.f && !this.g) {
            DelayTarget delayTarget = this.n;
            if (delayTarget != null) {
                this.n = null;
                b(delayTarget);
                return;
            }
            this.g = true;
            StandardGifDecoder standardGifDecoder = this.f2404a;
            long uptimeMillis = SystemClock.uptimeMillis() + standardGifDecoder.d();
            standardGifDecoder.b();
            this.k = new DelayTarget(this.b, standardGifDecoder.k, uptimeMillis);
            this.h.a((RequestOptions) new BaseRequestOptions().s(new ObjectKey(Double.valueOf(Math.random())))).M(standardGifDecoder).F(this.k);
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
            this.n = delayTarget;
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
            ArrayList arrayList = this.f2405c;
            for (int size = arrayList.size() - 1; size >= 0; size--) {
                ((FrameCallback) arrayList.get(size)).a();
            }
            if (delayTarget2 != null) {
                handler.obtainMessage(2, delayTarget2).sendToTarget();
            }
        }
        a();
    }

    public final void c(Transformation transformation, Bitmap bitmap) {
        Preconditions.c(transformation, "Argument must not be null");
        this.m = transformation;
        Preconditions.c(bitmap, "Argument must not be null");
        this.l = bitmap;
        this.h = this.h.a(new BaseRequestOptions().v(transformation, true));
        this.o = Util.c(bitmap);
        this.p = bitmap.getWidth();
        this.q = bitmap.getHeight();
    }
}
