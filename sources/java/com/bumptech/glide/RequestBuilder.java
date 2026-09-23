package com.bumptech.glide;

import android.content.Context;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.net.Uri;
import android.util.Log;
import android.widget.ImageView;
import androidx.collection.ArrayMap;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.ErrorRequestCoordinator;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestCoordinator;
import com.bumptech.glide.request.RequestFutureTarget;
import com.bumptech.glide.request.RequestListener;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.request.ThumbnailRequestCoordinator;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.signature.AndroidResourceSignature;
import com.bumptech.glide.signature.ApplicationVersionSignature;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.Executors;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.Util;
import j$.util.Objects;
import j$.util.concurrent.ConcurrentHashMap;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.Map;
import java.util.UUID;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public class RequestBuilder<TranscodeType> extends BaseRequestOptions<RequestBuilder<TranscodeType>> implements Cloneable, ModelTypes<RequestBuilder<TranscodeType>> {
    public ArrayList A;
    public RequestBuilder B;
    public RequestBuilder C;
    public final boolean D = true;
    public boolean E;
    public boolean F;
    public final Context u;
    public final RequestManager v;
    public final Class w;
    public final GlideContext x;
    public TransitionOptions y;
    public Object z;

    /* renamed from: com.bumptech.glide.RequestBuilder$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2093a;
        public static final /* synthetic */ int[] b;

        static {
            int[] iArr = new int[Priority.values().length];
            b = iArr;
            try {
                iArr[3] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                b[2] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            try {
                b[1] = 3;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[0] = 4;
            } catch (NoSuchFieldError unused4) {
            }
            int[] iArr2 = new int[ImageView.ScaleType.values().length];
            f2093a = iArr2;
            try {
                iArr2[ImageView.ScaleType.CENTER_CROP.ordinal()] = 1;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                f2093a[ImageView.ScaleType.CENTER_INSIDE.ordinal()] = 2;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                f2093a[ImageView.ScaleType.FIT_CENTER.ordinal()] = 3;
            } catch (NoSuchFieldError unused7) {
            }
            try {
                f2093a[ImageView.ScaleType.FIT_START.ordinal()] = 4;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2093a[ImageView.ScaleType.FIT_END.ordinal()] = 5;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2093a[ImageView.ScaleType.FIT_XY.ordinal()] = 6;
            } catch (NoSuchFieldError unused10) {
            }
            try {
                f2093a[ImageView.ScaleType.CENTER.ordinal()] = 7;
            } catch (NoSuchFieldError unused11) {
            }
            try {
                f2093a[ImageView.ScaleType.MATRIX.ordinal()] = 8;
            } catch (NoSuchFieldError unused12) {
            }
        }
    }

    static {
    }

    public RequestBuilder(Glide glide, RequestManager requestManager, Class cls, Context context) {
        RequestOptions requestOptions;
        this.v = requestManager;
        this.w = cls;
        this.u = context;
        ArrayMap arrayMap = requestManager.f2094c.h.f;
        TransitionOptions transitionOptions = (TransitionOptions) arrayMap.get(cls);
        if (transitionOptions == null) {
            for (Map.Entry entry : arrayMap.entrySet()) {
                if (((Class) entry.getKey()).isAssignableFrom(cls)) {
                    transitionOptions = (TransitionOptions) entry.getValue();
                }
            }
        }
        this.y = transitionOptions == null ? GlideContext.k : transitionOptions;
        this.x = glide.h;
        Iterator it = requestManager.m.iterator();
        while (it.hasNext()) {
            y((RequestListener) it.next());
        }
        synchronized (requestManager) {
            requestOptions = requestManager.n;
        }
        a(requestOptions);
    }

    public final RequestBuilder A(RequestBuilder requestBuilder) {
        PackageInfo packageInfo;
        String uuid;
        Context context = this.u;
        RequestBuilder requestBuilder2 = (RequestBuilder) requestBuilder.u(context.getTheme());
        ConcurrentHashMap concurrentHashMap = ApplicationVersionSignature.f2481a;
        String packageName = context.getPackageName();
        ConcurrentHashMap concurrentHashMap2 = ApplicationVersionSignature.f2481a;
        Key key = (Key) concurrentHashMap2.get(packageName);
        if (key == null) {
            try {
                packageInfo = context.getPackageManager().getPackageInfo(context.getPackageName(), 0);
            } catch (PackageManager.NameNotFoundException e) {
                Log.e("AppVersionSignature", "Cannot resolve info for" + context.getPackageName(), e);
                packageInfo = null;
            }
            if (packageInfo != null) {
                uuid = String.valueOf(packageInfo.versionCode);
            } else {
                uuid = UUID.randomUUID().toString();
            }
            ObjectKey objectKey = new ObjectKey(uuid);
            Key key2 = (Key) concurrentHashMap2.putIfAbsent(packageName, objectKey);
            if (key2 == null) {
                key = objectKey;
            } else {
                key = key2;
            }
        }
        return (RequestBuilder) requestBuilder2.s(new AndroidResourceSignature(context.getResources().getConfiguration().uiMode & 48, key));
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final Request C(Object obj, Target target, RequestListener requestListener, RequestCoordinator requestCoordinator, TransitionOptions transitionOptions, Priority priority, int i, int i2, BaseRequestOptions baseRequestOptions, Executor executor) {
        RequestCoordinator requestCoordinator2;
        RequestCoordinator requestCoordinator3;
        BaseRequestOptions baseRequestOptions2;
        SingleRequest singleRequest;
        TransitionOptions transitionOptions2;
        Priority priority2;
        if (this.C != null) {
            requestCoordinator3 = new ErrorRequestCoordinator(obj, requestCoordinator);
            requestCoordinator2 = requestCoordinator3;
        } else {
            requestCoordinator2 = null;
            requestCoordinator3 = requestCoordinator;
        }
        RequestBuilder requestBuilder = this.B;
        if (requestBuilder != null) {
            if (!this.F) {
                TransitionOptions transitionOptions3 = requestBuilder.y;
                if (requestBuilder.D) {
                    transitionOptions2 = transitionOptions;
                } else {
                    transitionOptions2 = transitionOptions3;
                }
                if (BaseRequestOptions.h(requestBuilder.f2456c, 8)) {
                    priority2 = this.B.g;
                } else {
                    int ordinal = priority.ordinal();
                    if (ordinal != 0 && ordinal != 1) {
                        if (ordinal != 2) {
                            if (ordinal == 3) {
                                priority2 = Priority.g;
                            } else {
                                throw new IllegalArgumentException("unknown priority: " + this.g);
                            }
                        } else {
                            priority2 = Priority.f;
                        }
                    } else {
                        priority2 = Priority.f2088c;
                    }
                }
                Priority priority3 = priority2;
                RequestBuilder requestBuilder2 = this.B;
                int i3 = requestBuilder2.j;
                int i4 = requestBuilder2.i;
                if (Util.j(i, i2)) {
                    RequestBuilder requestBuilder3 = this.B;
                    if (!Util.j(requestBuilder3.j, requestBuilder3.i)) {
                        i3 = baseRequestOptions.j;
                        i4 = baseRequestOptions.i;
                    }
                }
                int i5 = i4;
                ThumbnailRequestCoordinator thumbnailRequestCoordinator = new ThumbnailRequestCoordinator(obj, requestCoordinator3);
                Context context = this.u;
                GlideContext glideContext = this.x;
                ThumbnailRequestCoordinator thumbnailRequestCoordinator2 = thumbnailRequestCoordinator;
                Object obj2 = this.z;
                Class cls = this.w;
                ArrayList arrayList = this.A;
                Engine engine = glideContext.g;
                transitionOptions.getClass();
                SingleRequest singleRequest2 = new SingleRequest(context, glideContext, obj, obj2, cls, baseRequestOptions, i, i2, priority, target, requestListener, arrayList, thumbnailRequestCoordinator2, engine, executor);
                this.F = true;
                RequestBuilder requestBuilder4 = this.B;
                Request C = requestBuilder4.C(obj, target, requestListener, thumbnailRequestCoordinator2, transitionOptions2, priority3, i3, i5, requestBuilder4, executor);
                this.F = false;
                thumbnailRequestCoordinator2.f2465c = singleRequest2;
                thumbnailRequestCoordinator2.d = C;
                baseRequestOptions2 = baseRequestOptions;
                singleRequest = thumbnailRequestCoordinator2;
            } else {
                throw new IllegalStateException("You cannot use a request as both the main request and a thumbnail, consider using clone() on the request(s) passed to thumbnail()");
            }
        } else {
            Context context2 = this.u;
            GlideContext glideContext2 = this.x;
            Object obj3 = this.z;
            Class cls2 = this.w;
            ArrayList arrayList2 = this.A;
            Engine engine2 = glideContext2.g;
            transitionOptions.getClass();
            baseRequestOptions2 = baseRequestOptions;
            singleRequest = new SingleRequest(context2, glideContext2, obj, obj3, cls2, baseRequestOptions2, i, i2, priority, target, requestListener, arrayList2, requestCoordinator3, engine2, executor);
        }
        if (requestCoordinator2 == null) {
            return singleRequest;
        }
        RequestBuilder requestBuilder5 = this.C;
        int i6 = requestBuilder5.j;
        int i7 = requestBuilder5.i;
        if (Util.j(i, i2)) {
            RequestBuilder requestBuilder6 = this.C;
            if (!Util.j(requestBuilder6.j, requestBuilder6.i)) {
                i6 = baseRequestOptions2.j;
                i7 = baseRequestOptions2.i;
            }
        }
        int i8 = i7;
        RequestBuilder requestBuilder7 = this.C;
        ErrorRequestCoordinator errorRequestCoordinator = requestCoordinator2;
        Request C2 = requestBuilder7.C(obj, target, requestListener, errorRequestCoordinator, requestBuilder7.y, requestBuilder7.g, i6, i8, requestBuilder7, executor);
        errorRequestCoordinator.f2458c = singleRequest;
        errorRequestCoordinator.d = C2;
        return errorRequestCoordinator;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: D, reason: merged with bridge method [inline-methods] */
    public RequestBuilder clone() {
        RequestBuilder requestBuilder = (RequestBuilder) super.clone();
        requestBuilder.y = requestBuilder.y.clone();
        if (requestBuilder.A != null) {
            requestBuilder.A = new ArrayList(requestBuilder.A);
        }
        RequestBuilder requestBuilder2 = requestBuilder.B;
        if (requestBuilder2 != null) {
            requestBuilder.B = requestBuilder2.clone();
        }
        RequestBuilder requestBuilder3 = requestBuilder.C;
        if (requestBuilder3 != null) {
            requestBuilder.C = requestBuilder3.clone();
        }
        return requestBuilder;
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x005c  */
    /* JADX WARN: Removed duplicated region for block: B:14:0x0062  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void E(android.widget.ImageView r4) {
        /*
            r3 = this;
            com.bumptech.glide.util.Util.a()
            com.bumptech.glide.util.Preconditions.b(r4)
            r0 = 2048(0x800, float:2.87E-42)
            int r1 = r3.f2456c
            boolean r0 = com.bumptech.glide.request.BaseRequestOptions.h(r1, r0)
            if (r0 != 0) goto L4a
            android.widget.ImageView$ScaleType r0 = r4.getScaleType()
            if (r0 == 0) goto L4a
            int[] r0 = com.bumptech.glide.RequestBuilder.AnonymousClass1.f2093a
            android.widget.ImageView$ScaleType r1 = r4.getScaleType()
            int r1 = r1.ordinal()
            r0 = r0[r1]
            switch(r0) {
                case 1: goto L41;
                case 2: goto L38;
                case 3: goto L2f;
                case 4: goto L2f;
                case 5: goto L2f;
                case 6: goto L26;
                default: goto L25;
            }
        L25:
            goto L4a
        L26:
            com.bumptech.glide.request.BaseRequestOptions r0 = r3.clone()
            com.bumptech.glide.request.BaseRequestOptions r0 = r0.k()
            goto L4b
        L2f:
            com.bumptech.glide.request.BaseRequestOptions r0 = r3.clone()
            com.bumptech.glide.request.BaseRequestOptions r0 = r0.l()
            goto L4b
        L38:
            com.bumptech.glide.request.BaseRequestOptions r0 = r3.clone()
            com.bumptech.glide.request.BaseRequestOptions r0 = r0.k()
            goto L4b
        L41:
            com.bumptech.glide.request.BaseRequestOptions r0 = r3.clone()
            com.bumptech.glide.request.BaseRequestOptions r0 = r0.j()
            goto L4b
        L4a:
            r0 = r3
        L4b:
            com.bumptech.glide.GlideContext r1 = r3.x
            com.bumptech.glide.request.target.ImageViewTargetFactory r1 = r1.f2081c
            r1.getClass()
            java.lang.Class<android.graphics.Bitmap> r1 = android.graphics.Bitmap.class
            java.lang.Class r2 = r3.w
            boolean r1 = r1.equals(r2)
            if (r1 == 0) goto L62
            com.bumptech.glide.request.target.BitmapImageViewTarget r1 = new com.bumptech.glide.request.target.BitmapImageViewTarget
            r1.<init>(r4)
            goto L6f
        L62:
            java.lang.Class<android.graphics.drawable.Drawable> r1 = android.graphics.drawable.Drawable.class
            boolean r1 = r1.isAssignableFrom(r2)
            if (r1 == 0) goto L76
            com.bumptech.glide.request.target.DrawableImageViewTarget r1 = new com.bumptech.glide.request.target.DrawableImageViewTarget
            r1.<init>(r4)
        L6f:
            r4 = 0
            java.util.concurrent.Executor r2 = com.bumptech.glide.util.Executors.f2488a
            r3.H(r1, r4, r0, r2)
            return
        L76:
            java.lang.IllegalArgumentException r4 = new java.lang.IllegalArgumentException
            java.lang.StringBuilder r0 = new java.lang.StringBuilder
            java.lang.String r1 = "Unhandled class: "
            r0.<init>(r1)
            r0.append(r2)
            java.lang.String r1 = ", try .as*(Class).transcode(ResourceTranscoder)"
            r0.append(r1)
            java.lang.String r0 = r0.toString()
            r4.<init>(r0)
            throw r4
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.RequestBuilder.E(android.widget.ImageView):void");
    }

    public final void F(Target target) {
        H(target, null, this, Executors.f2488a);
    }

    public final void H(Target target, RequestFutureTarget requestFutureTarget, BaseRequestOptions baseRequestOptions, Executor executor) {
        Preconditions.b(target);
        if (this.E) {
            Request C = C(new Object(), target, requestFutureTarget, null, this.y, baseRequestOptions.g, baseRequestOptions.j, baseRequestOptions.i, baseRequestOptions, executor);
            Request j = target.j();
            if (C.c(j) && (baseRequestOptions.h || !j.isComplete())) {
                Preconditions.c(j, "Argument must not be null");
                if (!j.isRunning()) {
                    j.g();
                    return;
                }
                return;
            }
            this.v.p(target);
            target.e(C);
            RequestManager requestManager = this.v;
            synchronized (requestManager) {
                requestManager.j.f2444c.add(target);
                RequestTracker requestTracker = requestManager.h;
                requestTracker.f2427a.add(C);
                if (!requestTracker.f2428c) {
                    C.g();
                } else {
                    C.clear();
                    if (Log.isLoggable("RequestTracker", 2)) {
                        Log.v("RequestTracker", "Paused, delaying request");
                    }
                    requestTracker.b.add(C);
                }
            }
            return;
        }
        throw new IllegalArgumentException("You must call #load() before calling #into()");
    }

    public RequestBuilder I(RequestListener requestListener) {
        if (this.r) {
            return clone().I(requestListener);
        }
        this.A = null;
        return y(requestListener);
    }

    public RequestBuilder J(Drawable drawable) {
        return O(drawable).a((RequestOptions) new BaseRequestOptions().e(DiskCacheStrategy.f2204a));
    }

    public RequestBuilder K(Uri uri) {
        RequestBuilder O = O(uri);
        if (uri != null && "android.resource".equals(uri.getScheme())) {
            return A(O);
        }
        return O;
    }

    public RequestBuilder L(Integer num) {
        return A(O(num));
    }

    public RequestBuilder M(Object obj) {
        return O(obj);
    }

    public RequestBuilder N(String str) {
        return O(str);
    }

    public final RequestBuilder O(Object obj) {
        if (this.r) {
            return clone().O(obj);
        }
        this.z = obj;
        this.E = true;
        q();
        return this;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final boolean equals(Object obj) {
        if (obj instanceof RequestBuilder) {
            RequestBuilder requestBuilder = (RequestBuilder) obj;
            if (super.equals(requestBuilder) && Objects.equals(this.w, requestBuilder.w) && this.y.equals(requestBuilder.y) && Objects.equals(this.z, requestBuilder.z) && Objects.equals(this.A, requestBuilder.A) && Objects.equals(this.B, requestBuilder.B) && Objects.equals(this.C, requestBuilder.C) && this.D == requestBuilder.D && this.E == requestBuilder.E) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    public final int hashCode() {
        return Util.h(this.E ? 1 : 0, Util.h(this.D ? 1 : 0, Util.i(Util.i(Util.i(Util.i(Util.i(Util.i(Util.i(super.hashCode(), this.w), this.y), this.z), this.A), this.B), this.C), null)));
    }

    public RequestBuilder y(RequestListener requestListener) {
        if (this.r) {
            return clone().y(requestListener);
        }
        if (requestListener != null) {
            if (this.A == null) {
                this.A = new ArrayList();
            }
            this.A.add(requestListener);
        }
        q();
        return this;
    }

    @Override // com.bumptech.glide.request.BaseRequestOptions
    /* renamed from: z, reason: merged with bridge method [inline-methods] */
    public RequestBuilder a(BaseRequestOptions baseRequestOptions) {
        Preconditions.b(baseRequestOptions);
        return (RequestBuilder) super.a(baseRequestOptions);
    }
}
