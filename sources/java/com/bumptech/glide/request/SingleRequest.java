package com.bumptech.glide.request;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.SystemClock;
import android.support.v4.media.a;
import android.util.Log;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.DiskCacheStrategy;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.GlideException;
import com.bumptech.glide.load.engine.Resource;
import com.bumptech.glide.load.model.Model;
import com.bumptech.glide.request.target.SizeReadyCallback;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.NoTransition;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Util;
import com.bumptech.glide.util.pool.StateVerifier;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class SingleRequest<R> implements Request, SizeReadyCallback, ResourceCallback {
    public static final boolean C = Log.isLoggable("GlideRequest", 2);
    public boolean A;
    public final RuntimeException B;

    /* renamed from: a, reason: collision with root package name */
    public final String f2461a;
    public final StateVerifier b;

    /* renamed from: c, reason: collision with root package name */
    public final Object f2462c;
    public final RequestListener d;
    public final RequestCoordinator e;
    public final GlideContext f;
    public final Object g;
    public final Class h;
    public final BaseRequestOptions i;
    public final int j;
    public final int k;
    public final Priority l;
    public final Target m;
    public final List n;
    public final NoTransition.NoAnimationFactory o;
    public final Executor p;
    public Resource q;
    public Engine.LoadStatus r;
    public long s;
    public volatile Engine t;
    public Status u;
    public Drawable v;
    public Drawable w;
    public Drawable x;
    public int y;
    public int z;

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Status {

        /* renamed from: c, reason: collision with root package name */
        public static final Status f2463c;
        public static final Status f;
        public static final Status g;
        public static final Status h;
        public static final Status i;
        public static final Status j;
        public static final /* synthetic */ Status[] k;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.request.SingleRequest$Status, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r1v1, types: [com.bumptech.glide.request.SingleRequest$Status, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r3v1, types: [com.bumptech.glide.request.SingleRequest$Status, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r5v1, types: [com.bumptech.glide.request.SingleRequest$Status, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r7v1, types: [com.bumptech.glide.request.SingleRequest$Status, java.lang.Enum] */
        /* JADX WARN: Type inference failed for: r9v1, types: [com.bumptech.glide.request.SingleRequest$Status, java.lang.Enum] */
        static {
            ?? r0 = new Enum("PENDING", 0);
            f2463c = r0;
            ?? r1 = new Enum("RUNNING", 1);
            f = r1;
            ?? r3 = new Enum("WAITING_FOR_SIZE", 2);
            g = r3;
            ?? r5 = new Enum("COMPLETE", 3);
            h = r5;
            ?? r7 = new Enum("FAILED", 4);
            i = r7;
            ?? r9 = new Enum("CLEARED", 5);
            j = r9;
            k = new Status[]{r0, r1, r3, r5, r7, r9};
        }

        public static Status valueOf(String str) {
            return (Status) Enum.valueOf(Status.class, str);
        }

        public static Status[] values() {
            return (Status[]) k.clone();
        }
    }

    public SingleRequest(Context context, GlideContext glideContext, Object obj, Object obj2, Class cls, BaseRequestOptions baseRequestOptions, int i, int i2, Priority priority, Target target, RequestListener requestListener, ArrayList arrayList, RequestCoordinator requestCoordinator, Engine engine, Executor executor) {
        String str;
        NoTransition.NoAnimationFactory noAnimationFactory = NoTransition.b;
        if (C) {
            str = String.valueOf(hashCode());
        } else {
            str = null;
        }
        this.f2461a = str;
        this.b = StateVerifier.a();
        this.f2462c = obj;
        this.f = glideContext;
        this.g = obj2;
        this.h = cls;
        this.i = baseRequestOptions;
        this.j = i;
        this.k = i2;
        this.l = priority;
        this.m = target;
        this.d = requestListener;
        this.n = arrayList;
        this.e = requestCoordinator;
        this.t = engine;
        this.o = noAnimationFactory;
        this.p = executor;
        this.u = Status.f2463c;
        if (this.B == null && glideContext.h.f2082a.containsKey(GlideBuilder.LogRequestOrigins.class)) {
            this.B = new RuntimeException("Glide request origin trace");
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean a() {
        boolean z;
        synchronized (this.f2462c) {
            if (this.u == Status.h) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.bumptech.glide.request.target.SizeReadyCallback
    public final void b(int i, int i2) {
        int round;
        SingleRequest<R> singleRequest = this;
        int i3 = i;
        singleRequest.b.b();
        Object obj = singleRequest.f2462c;
        synchronized (obj) {
            try {
                try {
                    boolean z = C;
                    if (z) {
                        singleRequest.h("Got onSizeReady in " + LogTime.a(singleRequest.s));
                    }
                    if (singleRequest.u == Status.g) {
                        Status status = Status.f;
                        singleRequest.u = status;
                        singleRequest.i.getClass();
                        if (i3 != Integer.MIN_VALUE) {
                            i3 = Math.round(i3 * 1.0f);
                        }
                        singleRequest.y = i3;
                        if (i2 == Integer.MIN_VALUE) {
                            round = i2;
                        } else {
                            round = Math.round(1.0f * i2);
                        }
                        singleRequest.z = round;
                        if (z) {
                            singleRequest.h("finished setup for calling load in " + LogTime.a(singleRequest.s));
                        }
                        Engine engine = singleRequest.t;
                        GlideContext glideContext = singleRequest.f;
                        Object obj2 = singleRequest.g;
                        BaseRequestOptions baseRequestOptions = singleRequest.i;
                        Key key = baseRequestOptions.k;
                        try {
                            int i4 = singleRequest.y;
                            int i5 = singleRequest.z;
                            Class cls = baseRequestOptions.o;
                            try {
                                Class cls2 = singleRequest.h;
                                Priority priority = singleRequest.l;
                                DiskCacheStrategy diskCacheStrategy = baseRequestOptions.f;
                                try {
                                    CachedHashCodeArrayMap cachedHashCodeArrayMap = baseRequestOptions.n;
                                    boolean z2 = baseRequestOptions.l;
                                    boolean z3 = baseRequestOptions.s;
                                    try {
                                        Options options = baseRequestOptions.m;
                                        boolean z4 = baseRequestOptions.h;
                                        boolean z5 = baseRequestOptions.t;
                                        Executor executor = singleRequest.p;
                                        singleRequest = obj;
                                        try {
                                            singleRequest.r = engine.e(glideContext, obj2, key, i4, i5, cls, cls2, priority, diskCacheStrategy, cachedHashCodeArrayMap, z2, z3, options, z4, z5, singleRequest, executor);
                                            if (singleRequest.u != status) {
                                                singleRequest.r = null;
                                            }
                                            if (z) {
                                                singleRequest.h("finished onSizeReady in " + LogTime.a(singleRequest.s));
                                            }
                                        } catch (Throwable th) {
                                            th = th;
                                            throw th;
                                        }
                                    } catch (Throwable th2) {
                                        th = th2;
                                        singleRequest = obj;
                                    }
                                } catch (Throwable th3) {
                                    th = th3;
                                    singleRequest = obj;
                                }
                            } catch (Throwable th4) {
                                th = th4;
                                singleRequest = obj;
                            }
                        } catch (Throwable th5) {
                            th = th5;
                            singleRequest = obj;
                        }
                    }
                } catch (Throwable th6) {
                    th = th6;
                }
            } catch (Throwable th7) {
                th = th7;
                singleRequest = obj;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean c(Request request) {
        int i;
        int i2;
        Object obj;
        Class cls;
        BaseRequestOptions baseRequestOptions;
        Priority priority;
        int i3;
        int i4;
        int i5;
        Object obj2;
        Class cls2;
        BaseRequestOptions baseRequestOptions2;
        Priority priority2;
        int i6;
        boolean equals;
        boolean g;
        if (!(request instanceof SingleRequest)) {
            return false;
        }
        synchronized (this.f2462c) {
            try {
                i = this.j;
                i2 = this.k;
                obj = this.g;
                cls = this.h;
                baseRequestOptions = this.i;
                priority = this.l;
                List list = this.n;
                if (list != null) {
                    i3 = list.size();
                } else {
                    i3 = 0;
                }
            } finally {
            }
        }
        SingleRequest singleRequest = (SingleRequest) request;
        synchronized (singleRequest.f2462c) {
            try {
                i4 = singleRequest.j;
                i5 = singleRequest.k;
                obj2 = singleRequest.g;
                cls2 = singleRequest.h;
                baseRequestOptions2 = singleRequest.i;
                priority2 = singleRequest.l;
                List list2 = singleRequest.n;
                if (list2 != null) {
                    i6 = list2.size();
                } else {
                    i6 = 0;
                }
            } finally {
            }
        }
        if (i != i4 || i2 != i5) {
            return false;
        }
        char[] cArr = Util.f2497a;
        if (obj == null) {
            if (obj2 == null) {
                equals = true;
            } else {
                equals = false;
            }
        } else if (obj instanceof Model) {
            equals = ((Model) obj).a();
        } else {
            equals = obj.equals(obj2);
        }
        if (!equals || !cls.equals(cls2)) {
            return false;
        }
        if (baseRequestOptions == null) {
            if (baseRequestOptions2 == null) {
                g = true;
            } else {
                g = false;
            }
        } else {
            g = baseRequestOptions.g(baseRequestOptions2);
        }
        if (!g || priority != priority2 || i3 != i6) {
            return false;
        }
        return true;
    }

    @Override // com.bumptech.glide.request.Request
    public final void clear() {
        synchronized (this.f2462c) {
            try {
                if (!this.A) {
                    this.b.b();
                    Status status = this.u;
                    Status status2 = Status.j;
                    if (status == status2) {
                        return;
                    }
                    if (!this.A) {
                        this.b.b();
                        this.m.c(this);
                        Engine.LoadStatus loadStatus = this.r;
                        Resource resource = null;
                        if (loadStatus != null) {
                            loadStatus.a();
                            this.r = null;
                        }
                        Resource resource2 = this.q;
                        if (resource2 != null) {
                            this.q = null;
                            resource = resource2;
                        }
                        RequestCoordinator requestCoordinator = this.e;
                        if (requestCoordinator == null || requestCoordinator.i(this)) {
                            this.m.l(f());
                        }
                        this.u = status2;
                        if (resource != null) {
                            this.t.getClass();
                            Engine.i(resource);
                            return;
                        }
                        return;
                    }
                    throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
                }
                throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean d() {
        boolean z;
        synchronized (this.f2462c) {
            if (this.u == Status.j) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    public final Object e() {
        this.b.b();
        return this.f2462c;
    }

    public final Drawable f() {
        if (this.w == null) {
            this.i.getClass();
            this.w = null;
        }
        return this.w;
    }

    @Override // com.bumptech.glide.request.Request
    public final void g() {
        int i;
        synchronized (this.f2462c) {
            try {
                if (!this.A) {
                    this.b.b();
                    int i2 = LogTime.b;
                    this.s = SystemClock.elapsedRealtimeNanos();
                    if (this.g == null) {
                        if (Util.j(this.j, this.k)) {
                            this.y = this.j;
                            this.z = this.k;
                        }
                        if (this.x == null) {
                            this.i.getClass();
                            this.x = null;
                        }
                        if (this.x == null) {
                            i = 5;
                        } else {
                            i = 3;
                        }
                        i(new GlideException("Received null model"), i);
                        return;
                    }
                    Status status = this.u;
                    if (status != Status.f) {
                        boolean z = false;
                        if (status == Status.h) {
                            j(this.q, DataSource.i, false);
                            return;
                        }
                        List<RequestListener> list = this.n;
                        if (list != null) {
                            for (RequestListener requestListener : list) {
                            }
                        }
                        Status status2 = Status.g;
                        this.u = status2;
                        if (Util.j(this.j, this.k)) {
                            b(this.j, this.k);
                        } else {
                            this.m.f(this);
                        }
                        Status status3 = this.u;
                        if (status3 == Status.f || status3 == status2) {
                            RequestCoordinator requestCoordinator = this.e;
                            if (requestCoordinator == null || requestCoordinator.e(this)) {
                                z = true;
                            }
                            if (z) {
                                this.m.i(f());
                            }
                        }
                        if (C) {
                            h("finished run method in " + LogTime.a(this.s));
                        }
                        return;
                    }
                    throw new IllegalArgumentException("Cannot restart a running request");
                }
                throw new IllegalStateException("You can't start or clear loads in RequestListener or Target callbacks. If you're trying to start a fallback request when a load fails, use RequestBuilder#error(RequestBuilder). Otherwise consider posting your into() or clear() calls to the main thread using a Handler instead.");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(String str) {
        StringBuilder v = a.v(str, " this: ");
        v.append(this.f2461a);
        Log.v("GlideRequest", v.toString());
    }

    /* JADX WARN: Removed duplicated region for block: B:37:0x00a1 A[Catch: all -> 0x0082, TryCatch #0 {all -> 0x0082, blocks: (B:15:0x005b, B:17:0x005f, B:18:0x0064, B:20:0x006a, B:22:0x0074, B:24:0x007c, B:27:0x0085, B:29:0x0089, B:31:0x008d, B:32:0x0095, B:35:0x009e, B:37:0x00a1, B:39:0x00a5, B:45:0x00b0, B:47:0x00b4, B:49:0x00b8, B:50:0x00bf, B:52:0x00c5, B:54:0x00c9, B:55:0x00d0, B:57:0x00d4, B:58:0x00d8), top: B:14:0x005b, outer: #1 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void i(com.bumptech.glide.load.engine.GlideException r8, int r9) {
        /*
            Method dump skipped, instructions count: 230
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.request.SingleRequest.i(com.bumptech.glide.load.engine.GlideException, int):void");
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean isComplete() {
        boolean z;
        synchronized (this.f2462c) {
            if (this.u == Status.h) {
                z = true;
            } else {
                z = false;
            }
        }
        return z;
    }

    @Override // com.bumptech.glide.request.Request
    public final boolean isRunning() {
        boolean z;
        synchronized (this.f2462c) {
            try {
                Status status = this.u;
                if (status != Status.f && status != Status.g) {
                    z = false;
                }
                z = true;
            } finally {
            }
        }
        return z;
    }

    public final void j(Resource resource, DataSource dataSource, boolean z) {
        Object obj;
        String str;
        this.b.b();
        Resource resource2 = null;
        try {
            synchronized (this.f2462c) {
                try {
                    this.r = null;
                    if (resource == null) {
                        i(new GlideException("Expected to receive a Resource<R> with an object of " + this.h + " inside, but instead got null."), 5);
                        return;
                    }
                    Object obj2 = resource.get();
                    try {
                        if (obj2 != null && this.h.isAssignableFrom(obj2.getClass())) {
                            RequestCoordinator requestCoordinator = this.e;
                            if (requestCoordinator != null && !requestCoordinator.f(this)) {
                                this.q = null;
                                this.u = Status.h;
                                this.t.getClass();
                                Engine.i(resource);
                            }
                            k(resource, obj2, dataSource, z);
                            return;
                        }
                        this.q = null;
                        StringBuilder sb = new StringBuilder("Expected to receive an object of ");
                        sb.append(this.h);
                        sb.append(" but instead got ");
                        if (obj2 != null) {
                            obj = obj2.getClass();
                        } else {
                            obj = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        }
                        sb.append(obj);
                        sb.append("{");
                        sb.append(obj2);
                        sb.append("} inside Resource{");
                        sb.append(resource);
                        sb.append("}.");
                        if (obj2 != null) {
                            str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                        } else {
                            str = " To indicate failure return a null Resource object, rather than a Resource object containing null data.";
                        }
                        sb.append(str);
                        i(new GlideException(sb.toString()), 5);
                        this.t.getClass();
                        Engine.i(resource);
                    } catch (Throwable th) {
                        resource2 = resource;
                        th = th;
                        throw th;
                    }
                } catch (Throwable th2) {
                    th = th2;
                }
            }
        } catch (Throwable th3) {
            if (resource2 != null) {
                this.t.getClass();
                Engine.i(resource2);
            }
            throw th3;
        }
    }

    public final void k(Resource resource, Object obj, DataSource dataSource, boolean z) {
        boolean z2;
        RequestCoordinator requestCoordinator = this.e;
        if (requestCoordinator != null) {
            requestCoordinator.getRoot().a();
        }
        this.u = Status.h;
        this.q = resource;
        if (this.f.i <= 3) {
            Log.d("Glide", "Finished loading " + obj.getClass().getSimpleName() + " from " + dataSource + " for " + this.g + " with size [" + this.y + "x" + this.z + "] in " + LogTime.a(this.s) + " ms");
        }
        if (requestCoordinator != null) {
            requestCoordinator.h(this);
        }
        this.A = true;
        try {
            List<RequestListener> list = this.n;
            if (list != null) {
                z2 = false;
                for (RequestListener requestListener : list) {
                    requestListener.d(obj);
                    if (requestListener instanceof ExperimentalRequestListener) {
                        z2 |= ((ExperimentalRequestListener) requestListener).a();
                    }
                }
            } else {
                z2 = false;
            }
            RequestListener requestListener2 = this.d;
            if (requestListener2 != null) {
                requestListener2.d(obj);
            }
            if (!z2) {
                this.o.getClass();
                this.m.a(obj, NoTransition.f2479a);
            }
            this.A = false;
        } catch (Throwable th) {
            this.A = false;
            throw th;
        }
    }

    @Override // com.bumptech.glide.request.Request
    public final void pause() {
        synchronized (this.f2462c) {
            try {
                if (isRunning()) {
                    clear();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final String toString() {
        Object obj;
        Class cls;
        synchronized (this.f2462c) {
            obj = this.g;
            cls = this.h;
        }
        return super.toString() + "[model=" + obj + ", transcodeClass=" + cls + "]";
    }
}
