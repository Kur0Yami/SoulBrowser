package com.bumptech.glide.load.engine;

import android.os.Build;
import android.os.Process;
import android.os.SystemClock;
import android.support.v4.media.a;
import android.util.Log;
import androidx.core.util.Pools;
import com.bumptech.glide.GlideBuilder;
import com.bumptech.glide.GlideContext;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.Priority;
import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Option;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.ResourceEncoder;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.engine.DecodePath;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.bitmap.Downsampler;
import com.bumptech.glide.util.CachedHashCodeArrayMap;
import com.bumptech.glide.util.LogTime;
import com.bumptech.glide.util.Preconditions;
import com.bumptech.glide.util.pool.FactoryPools;
import com.bumptech.glide.util.pool.StateVerifier;
import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;
import java.util.function.Supplier;

/* loaded from: classes.dex */
class DecodeJob<R> implements DataFetcherGenerator.FetcherReadyCallback, Runnable, Comparable<DecodeJob<?>>, FactoryPools.Poolable {
    public static final Option L = new Option("glide_thread_priority_override", null, Option.e);
    public Supplier A;
    public Thread B;
    public Key C;
    public Key D;
    public Object E;
    public DataSource F;
    public DataFetcher G;
    public volatile DataFetcherGenerator H;
    public volatile boolean I;
    public volatile boolean J;
    public boolean K;
    public final DiskCacheProvider h;
    public final Pools.Pool i;
    public GlideContext l;
    public Key m;
    public Priority n;
    public EngineKey o;
    public int p;
    public int q;
    public DiskCacheStrategy r;
    public Options s;
    public EngineJob t;
    public int u;
    public Stage v;
    public RunReason w;
    public long x;
    public Object y;
    public GlideExperiments z;

    /* renamed from: c, reason: collision with root package name */
    public final DecodeHelper f2192c = new DecodeHelper();
    public final ArrayList f = new ArrayList();
    public final StateVerifier g = StateVerifier.a();
    public final DeferredEncodeManager j = new Object();
    public final ReleaseManager k = new Object();

    /* renamed from: com.bumptech.glide.load.engine.DecodeJob$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public static /* synthetic */ class AnonymousClass1 {

        /* renamed from: a, reason: collision with root package name */
        public static final /* synthetic */ int[] f2193a;
        public static final /* synthetic */ int[] b;

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int[] f2194c;

        static {
            int[] iArr = new int[EncodeStrategy.values().length];
            f2194c = iArr;
            try {
                iArr[0] = 1;
            } catch (NoSuchFieldError unused) {
            }
            try {
                f2194c[1] = 2;
            } catch (NoSuchFieldError unused2) {
            }
            int[] iArr2 = new int[Stage.values().length];
            b = iArr2;
            try {
                iArr2[1] = 1;
            } catch (NoSuchFieldError unused3) {
            }
            try {
                b[2] = 2;
            } catch (NoSuchFieldError unused4) {
            }
            try {
                b[3] = 3;
            } catch (NoSuchFieldError unused5) {
            }
            try {
                b[5] = 4;
            } catch (NoSuchFieldError unused6) {
            }
            try {
                b[0] = 5;
            } catch (NoSuchFieldError unused7) {
            }
            int[] iArr3 = new int[RunReason.values().length];
            f2193a = iArr3;
            try {
                iArr3[0] = 1;
            } catch (NoSuchFieldError unused8) {
            }
            try {
                f2193a[1] = 2;
            } catch (NoSuchFieldError unused9) {
            }
            try {
                f2193a[2] = 3;
            } catch (NoSuchFieldError unused10) {
            }
        }
    }

    /* loaded from: classes.dex */
    public interface Callback<R> {
    }

    /* loaded from: classes.dex */
    public final class DecodeCallback<Z> implements DecodePath.DecodeCallback<Z> {

        /* renamed from: a, reason: collision with root package name */
        public final DataSource f2195a;

        public DecodeCallback(DataSource dataSource) {
            this.f2195a = dataSource;
        }

        public final Resource a(Resource resource) {
            Resource resource2;
            Transformation transformation;
            EncodeStrategy encodeStrategy;
            boolean z;
            boolean z2;
            Key dataCacheKey;
            DecodeJob decodeJob = DecodeJob.this;
            DecodeHelper decodeHelper = decodeJob.f2192c;
            Class<?> cls = resource.get().getClass();
            DataSource dataSource = DataSource.h;
            DataSource dataSource2 = this.f2195a;
            ResourceEncoder resourceEncoder = null;
            if (dataSource2 != dataSource) {
                Transformation d = decodeHelper.d(cls);
                transformation = d;
                resource2 = d.b(decodeJob.l, resource, decodeJob.p, decodeJob.q);
            } else {
                resource2 = resource;
                transformation = null;
            }
            if (!resource.equals(resource2)) {
                resource.a();
            }
            if (decodeHelper.f2191c.b().d.b(resource2.c()) != null) {
                resourceEncoder = decodeHelper.f2191c.b().d.b(resource2.c());
                if (resourceEncoder != null) {
                    encodeStrategy = resourceEncoder.b(decodeJob.s);
                } else {
                    throw new Registry.NoResultEncoderAvailableException(resource2.c());
                }
            } else {
                encodeStrategy = EncodeStrategy.g;
            }
            ResourceEncoder resourceEncoder2 = resourceEncoder;
            Key key = decodeJob.C;
            ArrayList b = decodeHelper.b();
            int size = b.size();
            int i = 0;
            while (true) {
                if (i < size) {
                    if (((ModelLoader.LoadData) b.get(i)).f2302a.equals(key)) {
                        z = true;
                        break;
                    }
                    i++;
                } else {
                    z = false;
                    break;
                }
            }
            if (decodeJob.r.d(!z, dataSource2, encodeStrategy)) {
                if (resourceEncoder2 != null) {
                    int ordinal = encodeStrategy.ordinal();
                    if (ordinal != 0) {
                        if (ordinal == 1) {
                            z2 = true;
                            dataCacheKey = new ResourceCacheKey(decodeHelper.f2191c.f2080a, decodeJob.C, decodeJob.m, decodeJob.p, decodeJob.q, transformation, cls, decodeJob.s);
                        } else {
                            throw new IllegalArgumentException("Unknown strategy: " + encodeStrategy);
                        }
                    } else {
                        z2 = true;
                        dataCacheKey = new DataCacheKey(decodeJob.C, decodeJob.m);
                    }
                    LockedResource lockedResource = (LockedResource) LockedResource.i.b();
                    Preconditions.c(lockedResource, "Argument must not be null");
                    lockedResource.h = false;
                    lockedResource.g = z2;
                    lockedResource.f = resource2;
                    DeferredEncodeManager deferredEncodeManager = decodeJob.j;
                    deferredEncodeManager.f2196a = dataCacheKey;
                    deferredEncodeManager.b = resourceEncoder2;
                    deferredEncodeManager.f2197c = lockedResource;
                    return lockedResource;
                }
                throw new Registry.NoResultEncoderAvailableException(resource2.get().getClass());
            }
            return resource2;
        }
    }

    /* loaded from: classes.dex */
    public static class DeferredEncodeManager<Z> {

        /* renamed from: a, reason: collision with root package name */
        public Key f2196a;
        public ResourceEncoder b;

        /* renamed from: c, reason: collision with root package name */
        public LockedResource f2197c;
    }

    /* loaded from: classes.dex */
    public interface DiskCacheProvider {
        DiskCache a();
    }

    /* loaded from: classes.dex */
    public static class ReleaseManager {

        /* renamed from: a, reason: collision with root package name */
        public boolean f2198a;
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f2199c;

        public final boolean a() {
            if ((this.f2199c || this.b) && this.f2198a) {
                return true;
            }
            return false;
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class RunReason {

        /* renamed from: c, reason: collision with root package name */
        public static final RunReason f2200c;
        public static final RunReason f;
        public static final RunReason g;
        public static final /* synthetic */ RunReason[] h;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.bumptech.glide.load.engine.DecodeJob$RunReason] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.bumptech.glide.load.engine.DecodeJob$RunReason] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.bumptech.glide.load.engine.DecodeJob$RunReason] */
        static {
            ?? r0 = new Enum("INITIALIZE", 0);
            f2200c = r0;
            ?? r1 = new Enum("SWITCH_TO_SOURCE_SERVICE", 1);
            f = r1;
            ?? r3 = new Enum("DECODE_DATA", 2);
            g = r3;
            h = new RunReason[]{r0, r1, r3};
        }

        public static RunReason valueOf(String str) {
            return (RunReason) Enum.valueOf(RunReason.class, str);
        }

        public static RunReason[] values() {
            return (RunReason[]) h.clone();
        }
    }

    /* JADX WARN: Failed to restore enum class, 'enum' modifier and super class removed */
    /* JADX WARN: Unknown enum class pattern. Please report as an issue! */
    /* loaded from: classes.dex */
    public static final class Stage {

        /* renamed from: c, reason: collision with root package name */
        public static final Stage f2201c;
        public static final Stage f;
        public static final Stage g;
        public static final Stage h;
        public static final Stage i;
        public static final Stage j;
        public static final /* synthetic */ Stage[] k;

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Enum, com.bumptech.glide.load.engine.DecodeJob$Stage] */
        /* JADX WARN: Type inference failed for: r1v1, types: [java.lang.Enum, com.bumptech.glide.load.engine.DecodeJob$Stage] */
        /* JADX WARN: Type inference failed for: r3v1, types: [java.lang.Enum, com.bumptech.glide.load.engine.DecodeJob$Stage] */
        /* JADX WARN: Type inference failed for: r5v1, types: [java.lang.Enum, com.bumptech.glide.load.engine.DecodeJob$Stage] */
        /* JADX WARN: Type inference failed for: r7v1, types: [java.lang.Enum, com.bumptech.glide.load.engine.DecodeJob$Stage] */
        /* JADX WARN: Type inference failed for: r9v1, types: [java.lang.Enum, com.bumptech.glide.load.engine.DecodeJob$Stage] */
        static {
            ?? r0 = new Enum("INITIALIZE", 0);
            f2201c = r0;
            ?? r1 = new Enum("RESOURCE_CACHE", 1);
            f = r1;
            ?? r3 = new Enum("DATA_CACHE", 2);
            g = r3;
            ?? r5 = new Enum("SOURCE", 3);
            h = r5;
            ?? r7 = new Enum("ENCODE", 4);
            i = r7;
            ?? r9 = new Enum("FINISHED", 5);
            j = r9;
            k = new Stage[]{r0, r1, r3, r5, r7, r9};
        }

        public static Stage valueOf(String str) {
            return (Stage) Enum.valueOf(Stage.class, str);
        }

        public static Stage[] values() {
            return (Stage[]) k.clone();
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [com.bumptech.glide.load.engine.DecodeJob$DeferredEncodeManager, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, com.bumptech.glide.load.engine.DecodeJob$ReleaseManager] */
    public DecodeJob(Engine.LazyDiskCacheProvider lazyDiskCacheProvider, Pools.Pool pool) {
        this.h = lazyDiskCacheProvider;
        this.i = pool;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void a(Key key, Exception exc, DataFetcher dataFetcher, DataSource dataSource) {
        GlideExecutor glideExecutor;
        dataFetcher.b();
        GlideException glideException = new GlideException("Fetching data failed", Collections.singletonList(exc));
        Class a2 = dataFetcher.a();
        glideException.f = key;
        glideException.g = dataSource;
        glideException.h = a2;
        this.f.add(glideException);
        if (Thread.currentThread() != this.B) {
            this.w = RunReason.f;
            EngineJob engineJob = this.t;
            if (engineJob.q) {
                glideExecutor = engineJob.m;
            } else {
                glideExecutor = engineJob.l;
            }
            glideExecutor.execute(this);
            return;
        }
        o();
    }

    @Override // com.bumptech.glide.util.pool.FactoryPools.Poolable
    public final StateVerifier b() {
        return this.g;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void c(Key key, Object obj, DataFetcher dataFetcher, DataSource dataSource, Key key2) {
        GlideExecutor glideExecutor;
        this.C = key;
        this.E = obj;
        this.G = dataFetcher;
        this.F = dataSource;
        this.D = key2;
        boolean z = false;
        if (key != this.f2192c.a().get(0)) {
            z = true;
        }
        this.K = z;
        if (Thread.currentThread() != this.B) {
            this.w = RunReason.g;
            EngineJob engineJob = this.t;
            if (engineJob.q) {
                glideExecutor = engineJob.m;
            } else {
                glideExecutor = engineJob.l;
            }
            glideExecutor.execute(this);
            return;
        }
        f();
    }

    @Override // java.lang.Comparable
    public final int compareTo(DecodeJob<?> decodeJob) {
        DecodeJob<?> decodeJob2 = decodeJob;
        int ordinal = this.n.ordinal() - decodeJob2.n.ordinal();
        if (ordinal == 0) {
            return this.u - decodeJob2.u;
        }
        return ordinal;
    }

    public final Resource d(DataFetcher dataFetcher, Object obj, DataSource dataSource) {
        if (obj == null) {
            return null;
        }
        try {
            int i = LogTime.b;
            long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
            Resource e = e(obj, dataSource);
            if (Log.isLoggable("DecodeJob", 2)) {
                i(elapsedRealtimeNanos, "Decoded result " + e, null);
            }
            return e;
        } finally {
            dataFetcher.b();
        }
    }

    public final Resource e(Object obj, DataSource dataSource) {
        boolean z;
        Class<?> cls = obj.getClass();
        DecodeHelper decodeHelper = this.f2192c;
        LoadPath c2 = decodeHelper.c(cls);
        Options options = this.s;
        if (Build.VERSION.SDK_INT >= 26) {
            if (dataSource != DataSource.h && !decodeHelper.r) {
                z = false;
            } else {
                z = true;
            }
            Option option = Downsampler.j;
            Boolean bool = (Boolean) options.c(option);
            if (bool == null || (bool.booleanValue() && !z)) {
                options = new Options();
                CachedHashCodeArrayMap cachedHashCodeArrayMap = this.s.b;
                CachedHashCodeArrayMap cachedHashCodeArrayMap2 = options.b;
                cachedHashCodeArrayMap2.g(cachedHashCodeArrayMap);
                cachedHashCodeArrayMap2.put(option, Boolean.valueOf(z));
            }
        }
        Options options2 = options;
        DataRewinder c3 = this.l.b().c(obj);
        try {
            int i = this.p;
            int i2 = this.q;
            DecodeCallback decodeCallback = new DecodeCallback(dataSource);
            Pools.Pool pool = c2.f2227a;
            List list = (List) pool.b();
            Preconditions.c(list, "Argument must not be null");
            try {
                Resource a2 = c2.a(c3, options2, i, i2, decodeCallback, list);
                pool.a(list);
                return a2;
            } catch (Throwable th) {
                pool.a(list);
                throw th;
            }
        } finally {
            c3.b();
        }
    }

    public final void f() {
        Resource resource;
        boolean a2;
        Supplier supplier;
        if (Log.isLoggable("DecodeJob", 2)) {
            i(this.x, "Retrieved data", "data: " + this.E + ", cache key: " + this.C + ", fetcher: " + this.G);
        }
        LockedResource lockedResource = null;
        if (this.z.f2082a.containsKey(GlideBuilder.OverrideGlideThreadPriority.class) && (supplier = this.A) != null && supplier.get() != null) {
            try {
                Process.setThreadPriority(Process.myTid(), ((Integer) this.A.get()).intValue());
            } catch (IllegalArgumentException | SecurityException e) {
                this.A = null;
                if (Log.isLoggable("DecodeJob", 2)) {
                    Log.v("DecodeJob", "Failed to set thread priority; using default priority for any subsequent jobs.", e);
                }
            }
        }
        try {
            resource = d(this.G, this.E, this.F);
        } catch (GlideException e2) {
            Key key = this.D;
            DataSource dataSource = this.F;
            e2.f = key;
            e2.g = dataSource;
            e2.h = null;
            this.f.add(e2);
            resource = null;
        }
        if (resource != null) {
            DataSource dataSource2 = this.F;
            boolean z = this.K;
            if (resource instanceof Initializable) {
                ((Initializable) resource).s();
            }
            boolean z2 = false;
            if (this.j.f2197c != null) {
                lockedResource = (LockedResource) LockedResource.i.b();
                Preconditions.c(lockedResource, "Argument must not be null");
                lockedResource.h = false;
                lockedResource.g = true;
                lockedResource.f = resource;
                resource = lockedResource;
            }
            if (this.z.f2082a.containsKey(GlideBuilder.OverrideGlideThreadPriority.class)) {
                n();
            }
            q();
            this.t.i(resource, dataSource2, z);
            this.v = Stage.i;
            try {
                DeferredEncodeManager deferredEncodeManager = this.j;
                if (deferredEncodeManager.f2197c != null) {
                    z2 = true;
                }
                if (z2) {
                    DiskCacheProvider diskCacheProvider = this.h;
                    Options options = this.s;
                    deferredEncodeManager.getClass();
                    try {
                        diskCacheProvider.a().a(deferredEncodeManager.f2196a, new DataCacheWriter(deferredEncodeManager.b, deferredEncodeManager.f2197c, options));
                        deferredEncodeManager.f2197c.d();
                    } catch (Throwable th) {
                        deferredEncodeManager.f2197c.d();
                        throw th;
                    }
                }
                ReleaseManager releaseManager = this.k;
                synchronized (releaseManager) {
                    releaseManager.b = true;
                    a2 = releaseManager.a();
                }
                if (a2) {
                    l();
                    return;
                }
                return;
            } finally {
                if (lockedResource != null) {
                    lockedResource.d();
                }
            }
        }
        o();
    }

    public final DataFetcherGenerator g() {
        int ordinal = this.v.ordinal();
        DecodeHelper decodeHelper = this.f2192c;
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal == 5) {
                        return null;
                    }
                    throw new IllegalStateException("Unrecognized stage: " + this.v);
                }
                return new SourceGenerator(decodeHelper, this);
            }
            return new DataCacheGenerator(decodeHelper.a(), decodeHelper, this);
        }
        return new ResourceCacheGenerator(decodeHelper, this);
    }

    public final Stage h(Stage stage) {
        int ordinal = stage.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3 && ordinal != 5) {
                        throw new IllegalArgumentException("Unrecognized stage: " + stage);
                    }
                    return Stage.j;
                }
                return Stage.h;
            }
            boolean a2 = this.r.a();
            Stage stage2 = Stage.g;
            if (a2) {
                return stage2;
            }
            return h(stage2);
        }
        boolean b = this.r.b();
        Stage stage3 = Stage.f;
        if (b) {
            return stage3;
        }
        return h(stage3);
    }

    public final void i(long j, String str, String str2) {
        String str3;
        StringBuilder v = a.v(str, " in ");
        v.append(LogTime.a(j));
        v.append(", load key: ");
        v.append(this.o);
        if (str2 != null) {
            str3 = ", ".concat(str2);
        } else {
            str3 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        v.append(str3);
        v.append(", thread: ");
        v.append(Thread.currentThread().getName());
        Log.v("DecodeJob", v.toString());
    }

    public final void j() {
        boolean a2;
        if (this.z.f2082a.containsKey(GlideBuilder.OverrideGlideThreadPriority.class)) {
            n();
        }
        q();
        this.t.h(new GlideException("Failed to load resource", new ArrayList(this.f)));
        ReleaseManager releaseManager = this.k;
        synchronized (releaseManager) {
            releaseManager.f2199c = true;
            a2 = releaseManager.a();
        }
        if (a2) {
            l();
        }
    }

    public final void k() {
        boolean a2;
        ReleaseManager releaseManager = this.k;
        synchronized (releaseManager) {
            releaseManager.f2198a = true;
            a2 = releaseManager.a();
        }
        if (a2) {
            l();
        }
    }

    public final void l() {
        ReleaseManager releaseManager = this.k;
        synchronized (releaseManager) {
            releaseManager.b = false;
            releaseManager.f2198a = false;
            releaseManager.f2199c = false;
        }
        DeferredEncodeManager deferredEncodeManager = this.j;
        deferredEncodeManager.f2196a = null;
        deferredEncodeManager.b = null;
        deferredEncodeManager.f2197c = null;
        DecodeHelper decodeHelper = this.f2192c;
        decodeHelper.f2191c = null;
        decodeHelper.d = null;
        decodeHelper.n = null;
        decodeHelper.g = null;
        decodeHelper.k = null;
        decodeHelper.i = null;
        decodeHelper.o = null;
        decodeHelper.j = null;
        decodeHelper.p = null;
        decodeHelper.f2190a.clear();
        decodeHelper.l = false;
        decodeHelper.b.clear();
        decodeHelper.m = false;
        this.I = false;
        this.l = null;
        this.m = null;
        this.s = null;
        this.n = null;
        this.o = null;
        this.t = null;
        this.v = null;
        this.H = null;
        this.B = null;
        this.C = null;
        this.E = null;
        this.F = null;
        this.G = null;
        this.x = 0L;
        this.J = false;
        this.y = null;
        this.f.clear();
        this.i.a(this);
    }

    public final void n() {
        if (this.z.f2082a.containsKey(GlideBuilder.OverrideGlideThreadPriority.class)) {
            Supplier supplier = this.A;
            if (supplier != null && supplier.get() != null) {
                try {
                    Process.setThreadPriority(Process.myTid(), 9);
                    return;
                } catch (IllegalArgumentException | SecurityException e) {
                    this.A = null;
                    if (Log.isLoggable("DecodeJob", 2)) {
                        Log.v("DecodeJob", "Failed to set thread priority; using default priority for any subsequent jobs.", e);
                        return;
                    }
                    return;
                }
            }
            return;
        }
        throw new IllegalStateException("OverrideGlideThreadPriority experiment is not enabled.");
    }

    public final void o() {
        GlideExecutor glideExecutor;
        this.B = Thread.currentThread();
        int i = LogTime.b;
        this.x = SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        while (!this.J && this.H != null && !(z = this.H.b())) {
            this.v = h(this.v);
            this.H = g();
            if (this.v == Stage.h) {
                this.w = RunReason.f;
                EngineJob engineJob = this.t;
                if (engineJob.q) {
                    glideExecutor = engineJob.m;
                } else {
                    glideExecutor = engineJob.l;
                }
                glideExecutor.execute(this);
                return;
            }
        }
        if ((this.v == Stage.j || this.J) && !z) {
            j();
        }
    }

    public final void p() {
        int ordinal = this.w.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    f();
                    return;
                } else {
                    throw new IllegalStateException("Unrecognized run reason: " + this.w);
                }
            }
            o();
            return;
        }
        this.v = h(Stage.f2201c);
        this.H = g();
        o();
    }

    public final void q() {
        Throwable th;
        this.g.b();
        if (this.I) {
            if (this.f.isEmpty()) {
                th = null;
            } else {
                th = (Throwable) a.c(1, this.f);
            }
            throw new IllegalStateException("Already notified", th);
        }
        this.I = true;
    }

    @Override // java.lang.Runnable
    public final void run() {
        DataFetcher dataFetcher = this.G;
        try {
            try {
                try {
                    if (this.J) {
                        j();
                        if (dataFetcher != null) {
                            dataFetcher.b();
                            return;
                        }
                        return;
                    }
                    p();
                    if (dataFetcher != null) {
                        dataFetcher.b();
                    }
                } catch (Throwable th) {
                    if (Log.isLoggable("DecodeJob", 3)) {
                        Log.d("DecodeJob", "DecodeJob threw unexpectedly, isCancelled: " + this.J + ", stage: " + this.v, th);
                    }
                    if (this.v != Stage.i) {
                        this.f.add(th);
                        j();
                    }
                    if (!this.J) {
                        throw th;
                    }
                    throw th;
                }
            } catch (CallbackException e) {
                throw e;
            }
        } catch (Throwable th2) {
            if (dataFetcher != null) {
                dataFetcher.b();
            }
            throw th2;
        }
    }
}
