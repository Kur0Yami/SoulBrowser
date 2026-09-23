package com.bumptech.glide.load.engine;

import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.Executors;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
import java.util.ArrayList;
import java.util.Iterator;
import java.util.concurrent.Executor;
import java.util.concurrent.atomic.AtomicInteger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class EngineJob<R> implements DecodeJob.Callback<R>, FactoryPools.Poolable {
    public static final EngineResourceFactory A = new Object();
    public final EngineResource.ResourceListener g;
    public final Pools.Pool h;
    public final EngineJobListener j;
    public final GlideExecutor k;
    public final GlideExecutor l;
    public final GlideExecutor m;
    public Key o;
    public boolean p;
    public boolean q;
    public Resource r;
    public DataSource s;
    public boolean t;
    public GlideException u;
    public boolean v;
    public EngineResource w;
    public DecodeJob x;
    public volatile boolean y;
    public boolean z;

    /* renamed from: c, reason: collision with root package name */
    public final ResourceCallbacksAndExecutors f2217c = new ResourceCallbacksAndExecutors(new ArrayList(2));
    public final StateVerifier f = StateVerifier.a();
    public final AtomicInteger n = new AtomicInteger();
    public final EngineResourceFactory i = A;

    /* loaded from: classes.dex */
    public class CallLoadFailed implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final SingleRequest f2218c;

        public CallLoadFailed(SingleRequest singleRequest) {
            this.f2218c = singleRequest;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f2218c.e()) {
                synchronized (EngineJob.this) {
                    try {
                        if (EngineJob.this.f2217c.f2221c.contains(new ResourceCallbackAndExecutor(this.f2218c, Executors.b))) {
                            EngineJob engineJob = EngineJob.this;
                            try {
                                this.f2218c.i(engineJob.u, 5);
                            } catch (Throwable th) {
                                throw new CallbackException(th);
                            }
                        }
                        EngineJob.this.c();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    /* loaded from: classes.dex */
    public class CallResourceReady implements Runnable {

        /* renamed from: c, reason: collision with root package name */
        public final SingleRequest f2219c;

        public CallResourceReady(SingleRequest singleRequest) {
            this.f2219c = singleRequest;
        }

        @Override // java.lang.Runnable
        public final void run() {
            synchronized (this.f2219c.e()) {
                synchronized (EngineJob.this) {
                    try {
                        if (EngineJob.this.f2217c.f2221c.contains(new ResourceCallbackAndExecutor(this.f2219c, Executors.b))) {
                            EngineJob.this.w.b();
                            EngineJob engineJob = EngineJob.this;
                            try {
                                this.f2219c.j(engineJob.w, engineJob.s, engineJob.z);
                                EngineJob.this.k(this.f2219c);
                            } catch (Throwable th) {
                                throw new CallbackException(th);
                            }
                        }
                        EngineJob.this.c();
                    } catch (Throwable th2) {
                        throw th2;
                    }
                }
            }
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class EngineResourceFactory {
    }

    /* loaded from: classes.dex */
    public static final class ResourceCallbackAndExecutor {

        /* renamed from: a, reason: collision with root package name */
        public final SingleRequest f2220a;
        public final Executor b;

        public ResourceCallbackAndExecutor(SingleRequest singleRequest, Executor executor) {
            this.f2220a = singleRequest;
            this.b = executor;
        }

        public final boolean equals(Object obj) {
            if (obj instanceof ResourceCallbackAndExecutor) {
                return this.f2220a.equals(((ResourceCallbackAndExecutor) obj).f2220a);
            }
            return false;
        }

        public final int hashCode() {
            return this.f2220a.hashCode();
        }
    }

    /* loaded from: classes.dex */
    public static final class ResourceCallbacksAndExecutors implements Iterable<ResourceCallbackAndExecutor> {

        /* renamed from: c, reason: collision with root package name */
        public final ArrayList f2221c;

        public ResourceCallbacksAndExecutors(ArrayList arrayList) {
            this.f2221c = arrayList;
        }

        @Override // java.lang.Iterable
        public final Iterator<ResourceCallbackAndExecutor> iterator() {
            return this.f2221c.iterator();
        }
    }

    public EngineJob(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, Engine engine, Engine engine2, Pools.Pool pool) {
        this.k = glideExecutor;
        this.l = glideExecutor2;
        this.m = glideExecutor4;
        this.j = engine;
        this.g = engine2;
        this.h = pool;
    }

    public final synchronized void a(SingleRequest singleRequest, Executor executor) {
        try {
            this.f.b();
            this.f2217c.f2221c.add(new ResourceCallbackAndExecutor(singleRequest, executor));
            if (this.t) {
                d(1);
                executor.execute(new CallResourceReady(singleRequest));
            } else if (this.v) {
                d(1);
                executor.execute(new CallLoadFailed(singleRequest));
            } else {
                Preconditions.a("Cannot add callbacks to a cancelled EngineJob", !this.y);
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    public final StateVerifier b() {
        return this.f;
    }

    public final void c() {
        boolean z;
        EngineResource engineResource;
        synchronized (this) {
            try {
                this.f.b();
                Preconditions.a("Not yet complete!", e());
                int decrementAndGet = this.n.decrementAndGet();
                if (decrementAndGet >= 0) {
                    z = true;
                } else {
                    z = false;
                }
                Preconditions.a("Can't decrement below 0", z);
                if (decrementAndGet == 0) {
                    engineResource = this.w;
                    j();
                } else {
                    engineResource = null;
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (engineResource != null) {
            engineResource.d();
        }
    }

    public final synchronized void d(int i) {
        EngineResource engineResource;
        Preconditions.a("Not yet complete!", e());
        if (this.n.getAndAdd(i) == 0 && (engineResource = this.w) != null) {
            engineResource.b();
        }
    }

    public final boolean e() {
        if (!this.v && !this.t && !this.y) {
            return false;
        }
        return true;
    }

    public final void f() {
        synchronized (this) {
            try {
                this.f.b();
                if (this.y) {
                    j();
                    return;
                }
                if (!this.f2217c.f2221c.isEmpty()) {
                    if (!this.v) {
                        this.v = true;
                        Key key = this.o;
                        ResourceCallbacksAndExecutors resourceCallbacksAndExecutors = this.f2217c;
                        resourceCallbacksAndExecutors.getClass();
                        ArrayList arrayList = new ArrayList(resourceCallbacksAndExecutors.f2221c);
                        d(arrayList.size() + 1);
                        this.j.a(this, key, null);
                        int size = arrayList.size();
                        int i = 0;
                        while (i < size) {
                            Object obj = arrayList.get(i);
                            i++;
                            ResourceCallbackAndExecutor resourceCallbackAndExecutor = (ResourceCallbackAndExecutor) obj;
                            resourceCallbackAndExecutor.b.execute(new CallLoadFailed(resourceCallbackAndExecutor.f2220a));
                        }
                        c();
                        return;
                    }
                    throw new IllegalStateException("Already failed once");
                }
                throw new IllegalStateException("Received an exception without any callbacks to notify");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void g() {
        synchronized (this) {
            try {
                this.f.b();
                if (this.y) {
                    this.r.a();
                    j();
                    return;
                }
                if (!this.f2217c.f2221c.isEmpty()) {
                    if (!this.t) {
                        EngineResourceFactory engineResourceFactory = this.i;
                        Resource resource = this.r;
                        boolean z = this.p;
                        Key key = this.o;
                        EngineResource.ResourceListener resourceListener = this.g;
                        engineResourceFactory.getClass();
                        this.w = new EngineResource(resource, z, true, key, resourceListener);
                        this.t = true;
                        ResourceCallbacksAndExecutors resourceCallbacksAndExecutors = this.f2217c;
                        resourceCallbacksAndExecutors.getClass();
                        ArrayList arrayList = new ArrayList(resourceCallbacksAndExecutors.f2221c);
                        d(arrayList.size() + 1);
                        this.j.a(this, this.o, this.w);
                        int size = arrayList.size();
                        int i = 0;
                        while (i < size) {
                            Object obj = arrayList.get(i);
                            i++;
                            ResourceCallbackAndExecutor resourceCallbackAndExecutor = (ResourceCallbackAndExecutor) obj;
                            resourceCallbackAndExecutor.b.execute(new CallResourceReady(resourceCallbackAndExecutor.f2220a));
                        }
                        c();
                        return;
                    }
                    throw new IllegalStateException("Already have resource");
                }
                throw new IllegalStateException("Received a resource without any callbacks to notify");
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final void h(GlideException glideException) {
        synchronized (this) {
            this.u = glideException;
        }
        f();
    }

    public final void i(Resource resource, DataSource dataSource, boolean z) {
        synchronized (this) {
            this.r = resource;
            this.s = dataSource;
            this.z = z;
        }
        g();
    }

    public final synchronized void j() {
        if (this.o != null) {
            this.f2217c.f2221c.clear();
            this.o = null;
            this.w = null;
            this.r = null;
            this.v = false;
            this.y = false;
            this.t = false;
            this.z = false;
            this.x.k();
            this.x = null;
            this.u = null;
            this.s = null;
            this.h.a(this);
        } else {
            throw new IllegalArgumentException();
        }
    }

    public final synchronized void k(SingleRequest singleRequest) {
        try {
            this.f.b();
            this.f2217c.f2221c.remove(new ResourceCallbackAndExecutor(singleRequest, Executors.b));
            if (this.f2217c.f2221c.isEmpty()) {
                if (!e()) {
                    this.y = true;
                    DecodeJob decodeJob = this.x;
                    decodeJob.J = true;
                    DataFetcherGenerator dataFetcherGenerator = decodeJob.H;
                    if (dataFetcherGenerator != null) {
                        dataFetcherGenerator.cancel();
                    }
                    this.j.b(this, this.o);
                }
                if (!this.t) {
                    if (this.v) {
                    }
                }
                if (this.n.get() == 0) {
                    j();
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    public final synchronized void l(DecodeJob decodeJob) {
        GlideExecutor glideExecutor;
        this.x = decodeJob;
        DecodeJob.Stage h = decodeJob.h(DecodeJob.Stage.f2201c);
        if (h != DecodeJob.Stage.f && h != DecodeJob.Stage.g) {
            if (this.q) {
                glideExecutor = this.m;
            } else {
                glideExecutor = this.l;
            }
            glideExecutor.execute(decodeJob);
        }
        glideExecutor = this.k;
        glideExecutor.execute(decodeJob);
    }
}
