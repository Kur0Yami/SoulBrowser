package com.bumptech.glide.load.engine;

import android.os.SystemClock;
import android.support.v4.media.a;
import android.util.Log;
import androidx.annotation.VisibleForTesting;
import androidx.core.util.Pools;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.engine.ActiveResources;
import com.bumptech.glide.load.engine.DecodeJob;
import com.bumptech.glide.load.engine.EngineResource;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.request.SingleRequest;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import java.util.HashMap;
import java.util.Map;
import java.util.concurrent.Executor;
import java.util.function.Supplier;

/* loaded from: classes.dex */
public class Engine implements EngineJobListener, MemoryCache.ResourceRemovedListener, EngineResource.ResourceListener {
    public static final boolean i = Log.isLoggable("Engine", 2);

    /* renamed from: a, reason: collision with root package name */
    public final Jobs f2206a;
    public final EngineKeyFactory b;

    /* renamed from: c, reason: collision with root package name */
    public final MemoryCache f2207c;
    public final EngineJobFactory d;
    public final ResourceRecycler e;
    public final LazyDiskCacheProvider f;
    public final DecodeJobFactory g;
    public final ActiveResources h;

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class DecodeJobFactory {

        /* renamed from: a, reason: collision with root package name */
        public final LazyDiskCacheProvider f2208a;
        public final Pools.Pool b = FactoryPools.a(150, new FactoryPools.Factory<DecodeJob<?>>() { // from class: com.bumptech.glide.load.engine.Engine.DecodeJobFactory.1
            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            public final Object a() {
                DecodeJobFactory decodeJobFactory = DecodeJobFactory.this;
                return new DecodeJob(decodeJobFactory.f2208a, decodeJobFactory.b);
            }
        });

        /* renamed from: c, reason: collision with root package name */
        public int f2209c;

        public DecodeJobFactory(LazyDiskCacheProvider lazyDiskCacheProvider) {
            this.f2208a = lazyDiskCacheProvider;
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public static class EngineJobFactory {

        /* renamed from: a, reason: collision with root package name */
        public final GlideExecutor f2211a;
        public final GlideExecutor b;

        /* renamed from: c, reason: collision with root package name */
        public final GlideExecutor f2212c;
        public final GlideExecutor d;
        public final Engine e;
        public final Engine f;
        public final Pools.Pool g = FactoryPools.a(150, new FactoryPools.Factory<EngineJob<?>>() { // from class: com.bumptech.glide.load.engine.Engine.EngineJobFactory.1
            @Override // com.bumptech.glide.util.pool.FactoryPools.Factory
            public final Object a() {
                EngineJobFactory engineJobFactory = EngineJobFactory.this;
                return new EngineJob(engineJobFactory.f2211a, engineJobFactory.b, engineJobFactory.f2212c, engineJobFactory.d, engineJobFactory.e, engineJobFactory.f, engineJobFactory.g);
            }
        });

        public EngineJobFactory(GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4, Engine engine, Engine engine2) {
            this.f2211a = glideExecutor;
            this.b = glideExecutor2;
            this.f2212c = glideExecutor3;
            this.d = glideExecutor4;
            this.e = engine;
            this.f = engine2;
        }
    }

    /* loaded from: classes.dex */
    public static class LazyDiskCacheProvider implements DecodeJob.DiskCacheProvider {

        /* renamed from: a, reason: collision with root package name */
        public final DiskCache.Factory f2214a;
        public volatile DiskCache b;

        public LazyDiskCacheProvider(DiskCache.Factory factory) {
            this.f2214a = factory;
        }

        /* JADX WARN: Type inference failed for: r0v5, types: [com.bumptech.glide.load.engine.cache.DiskCache, java.lang.Object] */
        @Override // com.bumptech.glide.load.engine.DecodeJob.DiskCacheProvider
        public final DiskCache a() {
            if (this.b == null) {
                synchronized (this) {
                    try {
                        if (this.b == null) {
                            this.b = this.f2214a.build();
                        }
                        if (this.b == null) {
                            this.b = new Object();
                        }
                    } finally {
                    }
                }
            }
            return this.b;
        }
    }

    /* loaded from: classes.dex */
    public class LoadStatus {

        /* renamed from: a, reason: collision with root package name */
        public final EngineJob f2215a;
        public final SingleRequest b;

        public LoadStatus(SingleRequest singleRequest, EngineJob engineJob) {
            this.b = singleRequest;
            this.f2215a = engineJob;
        }

        public final void a() {
            synchronized (Engine.this) {
                this.f2215a.k(this.b);
            }
        }
    }

    /* JADX WARN: Type inference failed for: r10v2, types: [java.lang.Object, com.bumptech.glide.load.engine.EngineKeyFactory] */
    public Engine(MemoryCache memoryCache, DiskCache.Factory factory, GlideExecutor glideExecutor, GlideExecutor glideExecutor2, GlideExecutor glideExecutor3, GlideExecutor glideExecutor4) {
        this.f2207c = memoryCache;
        LazyDiskCacheProvider lazyDiskCacheProvider = new LazyDiskCacheProvider(factory);
        this.f = lazyDiskCacheProvider;
        ActiveResources activeResources = new ActiveResources();
        this.h = activeResources;
        synchronized (this) {
            try {
                synchronized (activeResources) {
                    try {
                        try {
                            activeResources.d = this;
                        } catch (Throwable th) {
                            th = th;
                            while (true) {
                                try {
                                    break;
                                } catch (Throwable th2) {
                                    th = th2;
                                }
                            }
                            throw th;
                        }
                    } catch (Throwable th3) {
                        th = th3;
                        throw th;
                    }
                }
                this.b = new Object();
                this.f2206a = new Jobs();
                this.d = new EngineJobFactory(glideExecutor, glideExecutor2, glideExecutor3, glideExecutor4, this, this);
                this.g = new DecodeJobFactory(lazyDiskCacheProvider);
                this.e = new ResourceRecycler();
                memoryCache.c(this);
            } catch (Throwable th4) {
                th = th4;
            }
        }
    }

    public static void g(String str, long j, Key key) {
        StringBuilder v = a.v(str, " in ");
        v.append(LogTime.a(j));
        v.append("ms, key: ");
        v.append(key);
        Log.v("Engine", v.toString());
    }

    public static void i(Resource resource) {
        if (resource instanceof EngineResource) {
            ((EngineResource) resource).d();
            return;
        }
        throw new IllegalArgumentException("Cannot release anything but an EngineResource");
    }

    @Override // com.bumptech.glide.load.engine.EngineJobListener
    public final synchronized void a(EngineJob engineJob, Key key, EngineResource engineResource) {
        if (engineResource != null) {
            try {
                if (engineResource.f2223c) {
                    this.h.a(key, engineResource);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        Jobs jobs = this.f2206a;
        jobs.getClass();
        HashMap hashMap = jobs.f2226a;
        if (engineJob.equals(hashMap.get(key))) {
            hashMap.remove(key);
        }
    }

    @Override // com.bumptech.glide.load.engine.EngineJobListener
    public final synchronized void b(EngineJob engineJob, Key key) {
        Jobs jobs = this.f2206a;
        jobs.getClass();
        engineJob.getClass();
        HashMap hashMap = jobs.f2226a;
        if (engineJob.equals(hashMap.get(key))) {
            hashMap.remove(key);
        }
    }

    @Override // com.bumptech.glide.load.engine.EngineResource.ResourceListener
    public final void c(Key key, EngineResource engineResource) {
        ActiveResources activeResources = this.h;
        synchronized (activeResources) {
            ActiveResources.ResourceWeakReference resourceWeakReference = (ActiveResources.ResourceWeakReference) activeResources.b.remove(key);
            if (resourceWeakReference != null) {
                resourceWeakReference.f2185c = null;
                resourceWeakReference.clear();
            }
        }
        if (engineResource.f2223c) {
            this.f2207c.d(key, engineResource);
        } else {
            this.e.a(engineResource, false);
        }
    }

    public final void d() {
        this.f.a().clear();
    }

    public final LoadStatus e(GlideContext glideContext, Object obj, Key key, int i2, int i3, Class cls, Class cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, CachedHashCodeArrayMap cachedHashCodeArrayMap, boolean z, boolean z2, Options options, boolean z3, boolean z4, SingleRequest singleRequest, Executor executor) {
        long j;
        if (i) {
            int i4 = LogTime.b;
            j = SystemClock.elapsedRealtimeNanos();
        } else {
            j = 0;
        }
        this.b.getClass();
        EngineKey engineKey = new EngineKey(obj, key, i2, i3, cachedHashCodeArrayMap, cls, cls2, options);
        synchronized (this) {
            try {
                EngineResource f = f(engineKey, z3, j);
                if (f == null) {
                    return j(glideContext, obj, key, i2, i3, cls, cls2, priority, diskCacheStrategy, cachedHashCodeArrayMap, z, z2, options, z3, z4, singleRequest, executor, engineKey, j);
                }
                singleRequest.j(f, DataSource.i, false);
                return null;
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    public final EngineResource f(EngineKey engineKey, boolean z, long j) {
        Throwable th;
        EngineResource<?> engineResource;
        Engine engine;
        EngineKey engineKey2;
        EngineResource engineResource2;
        if (z) {
            ActiveResources activeResources = this.h;
            synchronized (activeResources) {
                try {
                    ActiveResources.ResourceWeakReference resourceWeakReference = (ActiveResources.ResourceWeakReference) activeResources.b.get(engineKey);
                    if (resourceWeakReference == null) {
                        engineResource = null;
                    } else {
                        engineResource = resourceWeakReference.get();
                        if (engineResource == null) {
                            try {
                                activeResources.b(resourceWeakReference);
                            } catch (Throwable th2) {
                                th = th2;
                                while (true) {
                                    try {
                                        break;
                                    } catch (Throwable th3) {
                                        th = th3;
                                    }
                                    th = th3;
                                }
                                throw th;
                            }
                        }
                    }
                    if (engineResource != null) {
                        engineResource.b();
                    }
                    if (engineResource != null) {
                        if (i) {
                            g("Loaded resource from active resources", j, engineKey);
                        }
                        return engineResource;
                    }
                    Resource e = this.f2207c.e(engineKey);
                    if (e == null) {
                        engine = this;
                        engineKey2 = engineKey;
                        engineResource2 = null;
                    } else if (e instanceof EngineResource) {
                        engineResource2 = (EngineResource) e;
                        engine = this;
                        engineKey2 = engineKey;
                    } else {
                        engine = this;
                        engineKey2 = engineKey;
                        engineResource2 = new EngineResource(e, true, true, engineKey2, engine);
                    }
                    if (engineResource2 != null) {
                        engineResource2.b();
                        engine.h.a(engineKey2, engineResource2);
                    }
                    if (engineResource2 != null) {
                        if (i) {
                            g("Loaded resource from cache", j, engineKey2);
                        }
                        return engineResource2;
                    }
                } catch (Throwable th4) {
                    th = th4;
                }
            }
        }
        return null;
    }

    public final void h(Resource resource) {
        this.e.a(resource, true);
    }

    public final LoadStatus j(GlideContext glideContext, Object obj, Key key, int i2, int i3, Class cls, Class cls2, Priority priority, DiskCacheStrategy diskCacheStrategy, Map map, boolean z, boolean z2, Options options, boolean z3, boolean z4, SingleRequest singleRequest, Executor executor, EngineKey engineKey, long j) {
        EngineJob engineJob = (EngineJob) this.f2206a.f2226a.get(engineKey);
        if (engineJob != null) {
            engineJob.a(singleRequest, executor);
            if (i) {
                g("Added to existing load", j, engineKey);
            }
            return new LoadStatus(singleRequest, engineJob);
        }
        EngineJob engineJob2 = (EngineJob) this.d.g.b();
        Preconditions.c(engineJob2, "Argument must not be null");
        synchronized (engineJob2) {
            engineJob2.o = engineKey;
            engineJob2.p = z3;
            engineJob2.q = z4;
        }
        DecodeJobFactory decodeJobFactory = this.g;
        DecodeJob decodeJob = (DecodeJob) decodeJobFactory.b.b();
        Preconditions.c(decodeJob, "Argument must not be null");
        int i4 = decodeJobFactory.f2209c;
        decodeJobFactory.f2209c = i4 + 1;
        DecodeHelper decodeHelper = decodeJob.f2192c;
        DecodeJob.DiskCacheProvider diskCacheProvider = decodeJob.h;
        decodeHelper.f2191c = glideContext;
        decodeHelper.d = obj;
        decodeHelper.n = key;
        decodeHelper.e = i2;
        decodeHelper.f = i3;
        decodeHelper.p = diskCacheStrategy;
        decodeHelper.g = cls;
        decodeHelper.h = diskCacheProvider;
        decodeHelper.k = cls2;
        decodeHelper.o = priority;
        decodeHelper.i = options;
        decodeHelper.j = map;
        decodeHelper.q = z;
        decodeHelper.r = z2;
        decodeJob.l = glideContext;
        decodeJob.m = key;
        decodeJob.n = priority;
        decodeJob.o = engineKey;
        decodeJob.p = i2;
        decodeJob.q = i3;
        decodeJob.r = diskCacheStrategy;
        decodeJob.s = options;
        decodeJob.t = engineJob2;
        decodeJob.u = i4;
        decodeJob.w = DecodeJob.RunReason.f2200c;
        decodeJob.y = obj;
        decodeJob.z = glideContext.h;
        decodeJob.A = (Supplier) options.c(DecodeJob.L);
        Jobs jobs = this.f2206a;
        jobs.getClass();
        jobs.f2226a.put(engineKey, engineJob2);
        engineJob2.a(singleRequest, executor);
        engineJob2.l(decodeJob);
        if (i) {
            g("Started new load", j, engineKey);
        }
        return new LoadStatus(singleRequest, engineJob2);
    }
}
