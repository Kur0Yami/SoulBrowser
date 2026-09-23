package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.res.Configuration;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Looper;
import android.view.View;
import com.bumptech.glide.manager.ConnectivityMonitor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.Lifecycle;
import com.bumptech.glide.manager.LifecycleListener;
import com.bumptech.glide.manager.RequestManagerTreeNode;
import com.bumptech.glide.manager.RequestTracker;
import com.bumptech.glide.manager.TargetTracker;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.Request;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.request.target.CustomViewTarget;
import com.bumptech.glide.request.target.Target;
import com.bumptech.glide.request.transition.Transition;
import com.bumptech.glide.util.Util;
import java.io.File;
import java.util.ArrayList;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public class RequestManager implements ComponentCallbacks2, LifecycleListener, ModelTypes<RequestBuilder<Drawable>> {
    public static final RequestOptions o = (RequestOptions) ((RequestOptions) new BaseRequestOptions().d(Bitmap.class)).i();

    /* renamed from: c, reason: collision with root package name */
    public final Glide f2094c;
    public final Context f;
    public final Lifecycle g;
    public final RequestTracker h;
    public final RequestManagerTreeNode i;
    public final TargetTracker j;
    public final Runnable k;
    public final ConnectivityMonitor l;
    public final CopyOnWriteArrayList m;
    public RequestOptions n;

    /* loaded from: classes.dex */
    public static class ClearTarget extends CustomViewTarget<View, Object> {
        @Override // com.bumptech.glide.request.target.Target
        public final void a(Object obj, Transition transition) {
        }

        @Override // com.bumptech.glide.request.target.Target
        public final void g(Drawable drawable) {
        }
    }

    /* loaded from: classes.dex */
    public class RequestManagerConnectivityListener implements ConnectivityMonitor.ConnectivityListener {

        /* renamed from: a, reason: collision with root package name */
        public final RequestTracker f2096a;

        public RequestManagerConnectivityListener(RequestTracker requestTracker) {
            this.f2096a = requestTracker;
        }

        @Override // com.bumptech.glide.manager.ConnectivityMonitor.ConnectivityListener
        public final void a(boolean z) {
            if (z) {
                synchronized (RequestManager.this) {
                    RequestTracker requestTracker = this.f2096a;
                    ArrayList e = Util.e(requestTracker.f2427a);
                    int size = e.size();
                    int i = 0;
                    while (i < size) {
                        Object obj = e.get(i);
                        i++;
                        Request request = (Request) obj;
                        if (!request.isComplete() && !request.d()) {
                            request.clear();
                            if (!requestTracker.f2428c) {
                                request.g();
                            } else {
                                requestTracker.b.add(request);
                            }
                        }
                    }
                }
            }
        }
    }

    static {
    }

    public RequestManager(Glide glide, Lifecycle lifecycle, RequestManagerTreeNode requestManagerTreeNode, Context context) {
        boolean z;
        RequestTracker requestTracker = new RequestTracker();
        ConnectivityMonitorFactory connectivityMonitorFactory = glide.k;
        this.j = new TargetTracker();
        Runnable runnable = new Runnable() { // from class: com.bumptech.glide.RequestManager.1
            @Override // java.lang.Runnable
            public final void run() {
                RequestManager requestManager = RequestManager.this;
                requestManager.g.c(requestManager);
            }
        };
        this.k = runnable;
        this.f2094c = glide;
        this.g = lifecycle;
        this.i = requestManagerTreeNode;
        this.h = requestTracker;
        this.f = context;
        ConnectivityMonitor a2 = connectivityMonitorFactory.a(context.getApplicationContext(), new RequestManagerConnectivityListener(requestTracker));
        this.l = a2;
        synchronized (glide.l) {
            if (!glide.l.contains(this)) {
                glide.l.add(this);
            } else {
                throw new IllegalStateException("Cannot register already registered manager");
            }
        }
        char[] cArr = Util.f2497a;
        if (Looper.myLooper() == Looper.getMainLooper()) {
            z = true;
        } else {
            z = false;
        }
        if (!z) {
            Util.f().post(runnable);
        } else {
            lifecycle.c(this);
        }
        lifecycle.c(a2);
        this.m = new CopyOnWriteArrayList(glide.h.e);
        x(glide.h.a());
    }

    public RequestBuilder b(Class cls) {
        return new RequestBuilder(this.f2094c, this, cls, this.f);
    }

    public RequestBuilder d() {
        return b(Bitmap.class).a(o);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final synchronized void h() {
        this.j.h();
        v();
    }

    public RequestBuilder k() {
        return b(Drawable.class);
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final synchronized void m() {
        w();
        this.j.m();
    }

    public RequestBuilder n() {
        RequestBuilder b = b(File.class);
        if (RequestOptions.u == null) {
            RequestOptions.u = (RequestOptions) ((RequestOptions) new BaseRequestOptions().t(true)).b();
        }
        return b.a(RequestOptions.u);
    }

    public final void o(View view) {
        p(new CustomViewTarget(view));
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // com.bumptech.glide.manager.LifecycleListener
    public final synchronized void onDestroy() {
        this.j.onDestroy();
        q();
        RequestTracker requestTracker = this.h;
        ArrayList e = Util.e(requestTracker.f2427a);
        int size = e.size();
        int i = 0;
        while (i < size) {
            Object obj = e.get(i);
            i++;
            requestTracker.a((Request) obj);
        }
        requestTracker.b.clear();
        this.g.e(this);
        this.g.e(this.l);
        Util.f().removeCallbacks(this.k);
        this.f2094c.c(this);
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
    }

    public final void p(Target target) {
        if (target != null) {
            boolean y = y(target);
            Request j = target.j();
            if (!y) {
                Glide glide = this.f2094c;
                synchronized (glide.l) {
                    try {
                        ArrayList arrayList = glide.l;
                        int size = arrayList.size();
                        int i = 0;
                        while (i < size) {
                            Object obj = arrayList.get(i);
                            i++;
                            if (((RequestManager) obj).y(target)) {
                                return;
                            }
                        }
                        if (j != null) {
                            target.e(null);
                            j.clear();
                        }
                    } catch (Throwable th) {
                        throw th;
                    }
                }
            }
        }
    }

    public final synchronized void q() {
        try {
            ArrayList e = Util.e(this.j.f2444c);
            int size = e.size();
            int i = 0;
            while (i < size) {
                Object obj = e.get(i);
                i++;
                p((Target) obj);
            }
            this.j.f2444c.clear();
        } catch (Throwable th) {
            throw th;
        }
    }

    public RequestBuilder r(Drawable drawable) {
        return k().J(drawable);
    }

    public RequestBuilder s(Integer num) {
        return k().L(num);
    }

    public RequestBuilder t(Object obj) {
        return k().M(obj);
    }

    public final synchronized String toString() {
        return super.toString() + "{tracker=" + this.h + ", treeNode=" + this.i + "}";
    }

    public RequestBuilder u(String str) {
        return k().N(str);
    }

    public final synchronized void v() {
        RequestTracker requestTracker = this.h;
        requestTracker.f2428c = true;
        ArrayList e = Util.e(requestTracker.f2427a);
        int size = e.size();
        int i = 0;
        while (i < size) {
            Object obj = e.get(i);
            i++;
            Request request = (Request) obj;
            if (request.isRunning()) {
                request.pause();
                requestTracker.b.add(request);
            }
        }
    }

    public final synchronized void w() {
        RequestTracker requestTracker = this.h;
        int i = 0;
        requestTracker.f2428c = false;
        ArrayList e = Util.e(requestTracker.f2427a);
        int size = e.size();
        while (i < size) {
            Object obj = e.get(i);
            i++;
            Request request = (Request) obj;
            if (!request.isComplete() && !request.isRunning()) {
                request.g();
            }
        }
        requestTracker.b.clear();
    }

    public synchronized void x(RequestOptions requestOptions) {
        this.n = (RequestOptions) ((RequestOptions) requestOptions.clone()).b();
    }

    public final synchronized boolean y(Target target) {
        Request j = target.j();
        if (j == null) {
            return true;
        }
        if (this.h.a(j)) {
            this.j.f2444c.remove(target);
            target.e(null);
            return true;
        }
        return false;
    }
}
