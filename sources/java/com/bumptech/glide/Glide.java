package com.bumptech.glide;

import android.content.ComponentCallbacks2;
import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.content.res.Configuration;
import android.util.Log;
import androidx.collection.ArrayMap;
import androidx.tracing.Trace;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.ArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruBitmapPool;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.load.engine.cache.MemoryCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.manager.ConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.module.AppGlideModule;
import com.bumptech.glide.module.GlideModule;
import com.bumptech.glide.module.ManifestParser;
import com.bumptech.glide.request.RequestOptions;
import com.bumptech.glide.util.GlideSuppliers;
import com.bumptech.glide.util.LruCache;
import com.bumptech.glide.util.Util;
import j$.util.DesugarCollections;
import java.lang.reflect.InvocationTargetException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Iterator;
import java.util.List;
import java.util.Set;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public class Glide implements ComponentCallbacks2 {
    public static volatile Glide n;
    public static volatile boolean o;

    /* renamed from: c, reason: collision with root package name */
    public final Engine f2077c;
    public final BitmapPool f;
    public final MemoryCache g;
    public final GlideContext h;
    public final ArrayPool i;
    public final RequestManagerRetriever j;
    public final ConnectivityMonitorFactory k;
    public final ArrayList l = new ArrayList();
    public final RequestOptionsFactory m;

    /* loaded from: classes.dex */
    public interface RequestOptionsFactory {
        RequestOptions build();
    }

    /* JADX WARN: Type inference failed for: r6v1, types: [java.lang.Object, com.bumptech.glide.request.target.ImageViewTargetFactory] */
    public Glide(Context context, Engine engine, MemoryCache memoryCache, BitmapPool bitmapPool, ArrayPool arrayPool, RequestManagerRetriever requestManagerRetriever, ConnectivityMonitorFactory connectivityMonitorFactory, int i, RequestOptionsFactory requestOptionsFactory, ArrayMap arrayMap, List list, final List list2, final AppGlideModule appGlideModule, GlideExperiments glideExperiments) {
        this.f2077c = engine;
        this.f = bitmapPool;
        this.i = arrayPool;
        this.g = memoryCache;
        this.j = requestManagerRetriever;
        this.k = connectivityMonitorFactory;
        this.m = requestOptionsFactory;
        this.h = new GlideContext(context, arrayPool, new GlideSuppliers.GlideSupplier<Registry>() { // from class: com.bumptech.glide.RegistryFactory.1

            /* renamed from: a, reason: collision with root package name */
            public boolean f2091a;

            @Override // com.bumptech.glide.util.GlideSuppliers.GlideSupplier
            public final Object get() {
                if (!this.f2091a) {
                    Trace.a("Glide registry");
                    this.f2091a = true;
                    try {
                        return RegistryFactory.a(Glide.this, list2, appGlideModule);
                    } finally {
                        this.f2091a = false;
                        android.os.Trace.endSection();
                    }
                }
                throw new IllegalStateException("Recursive Registry initialization! In your AppGlideModule and LibraryGlideModules, Make sure you're using the provided Registry rather calling glide.getRegistry()!");
            }
        }, new Object(), requestOptionsFactory, arrayMap, list, engine, glideExperiments, i);
    }

    public static Glide a(Context context) {
        GeneratedAppGlideModule generatedAppGlideModule;
        if (n == null) {
            try {
                generatedAppGlideModule = (GeneratedAppGlideModule) GeneratedAppGlideModuleImpl.class.getDeclaredConstructor(Context.class).newInstance(context.getApplicationContext().getApplicationContext());
            } catch (ClassNotFoundException unused) {
                if (Log.isLoggable("Glide", 5)) {
                    Log.w("Glide", "Failed to find GeneratedAppGlideModule. You should include an annotationProcessor compile dependency on com.github.bumptech.glide:compiler in your application and a @GlideModule annotated AppGlideModule implementation or LibraryGlideModules will be silently ignored");
                }
                generatedAppGlideModule = null;
            } catch (IllegalAccessException e) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e);
            } catch (InstantiationException e2) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e2);
            } catch (NoSuchMethodException e3) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e3);
            } catch (InvocationTargetException e4) {
                throw new IllegalStateException("GeneratedAppGlideModuleImpl is implemented incorrectly. If you've manually implemented this class, remove your implementation. The Annotation processor will generate a correct implementation.", e4);
            }
            synchronized (Glide.class) {
                if (n == null) {
                    if (!o) {
                        o = true;
                        try {
                            b(context, generatedAppGlideModule);
                            o = false;
                        } catch (Throwable th) {
                            o = false;
                            throw th;
                        }
                    } else {
                        throw new IllegalStateException("Glide has been called recursively, this is probably an internal library error!");
                    }
                }
            }
        }
        return n;
    }

    /* JADX WARN: Type inference failed for: r0v32, types: [com.bumptech.glide.load.engine.cache.LruResourceCache, com.bumptech.glide.util.LruCache] */
    /* JADX WARN: Type inference failed for: r0v36, types: [java.lang.Object, com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool] */
    /* JADX WARN: Type inference failed for: r0v37, types: [java.lang.Object, com.bumptech.glide.manager.DefaultConnectivityMonitorFactory] */
    public static void b(Context context, GeneratedAppGlideModule generatedAppGlideModule) {
        List list;
        ApplicationInfo applicationInfo;
        RequestManagerRetriever.RequestManagerFactory requestManagerFactory;
        GlideBuilder glideBuilder = new GlideBuilder();
        Context applicationContext = context.getApplicationContext();
        List list2 = Collections.EMPTY_LIST;
        int i = 2;
        if (generatedAppGlideModule != null && !generatedAppGlideModule.c()) {
            list = list2;
        } else {
            if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Loading Glide modules");
            }
            ArrayList arrayList = new ArrayList();
            try {
                applicationInfo = applicationContext.getPackageManager().getApplicationInfo(applicationContext.getPackageName(), Uuid.SIZE_BITS);
            } catch (PackageManager.NameNotFoundException e) {
                if (Log.isLoggable("ManifestParser", 6)) {
                    Log.e("ManifestParser", "Failed to parse glide modules", e);
                }
            }
            if (applicationInfo != null && applicationInfo.metaData != null) {
                if (Log.isLoggable("ManifestParser", 2)) {
                    Log.v("ManifestParser", "Got app info metadata: " + applicationInfo.metaData);
                }
                for (String str : applicationInfo.metaData.keySet()) {
                    if ("GlideModule".equals(applicationInfo.metaData.get(str))) {
                        arrayList.add(ManifestParser.a(str));
                        if (Log.isLoggable("ManifestParser", 3)) {
                            Log.d("ManifestParser", "Loaded Glide module: " + str);
                        }
                    }
                }
                if (Log.isLoggable("ManifestParser", 3)) {
                    Log.d("ManifestParser", "Finished loading Glide modules");
                }
                list = arrayList;
            }
            if (Log.isLoggable("ManifestParser", 3)) {
                Log.d("ManifestParser", "Got null app info metadata");
            }
            list = arrayList;
        }
        if (generatedAppGlideModule != null && !generatedAppGlideModule.d().isEmpty()) {
            Set d = generatedAppGlideModule.d();
            Iterator it = list.iterator();
            while (it.hasNext()) {
                GlideModule glideModule = (GlideModule) it.next();
                if (d.contains(glideModule.getClass())) {
                    if (Log.isLoggable("Glide", 3)) {
                        Log.d("Glide", "AppGlideModule excludes manifest GlideModule: " + glideModule);
                    }
                    it.remove();
                }
            }
        }
        if (Log.isLoggable("Glide", 3)) {
            Iterator it2 = list.iterator();
            while (it2.hasNext()) {
                Log.d("Glide", "Discovered GlideModule from manifest: " + ((GlideModule) it2.next()).getClass());
            }
        }
        if (generatedAppGlideModule != null) {
            requestManagerFactory = generatedAppGlideModule.e();
        } else {
            requestManagerFactory = null;
        }
        glideBuilder.n = requestManagerFactory;
        Iterator it3 = list.iterator();
        while (it3.hasNext()) {
            ((GlideModule) it3.next()).getClass();
        }
        if (generatedAppGlideModule != null) {
            generatedAppGlideModule.b();
        }
        if (glideBuilder.g == null) {
            int i2 = GlideExecutor.g;
            GlideExecutor.Builder builder = new GlideExecutor.Builder(false);
            if (GlideExecutor.g == 0) {
                GlideExecutor.g = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            int i3 = GlideExecutor.g;
            builder.b = i3;
            builder.f2269c = i3;
            builder.f = "source";
            glideBuilder.g = builder.a();
        }
        if (glideBuilder.h == null) {
            int i4 = GlideExecutor.g;
            GlideExecutor.Builder builder2 = new GlideExecutor.Builder(true);
            builder2.b = 1;
            builder2.f2269c = 1;
            builder2.f = "disk-cache";
            glideBuilder.h = builder2.a();
        }
        if (glideBuilder.o == null) {
            if (GlideExecutor.g == 0) {
                GlideExecutor.g = Math.min(4, Runtime.getRuntime().availableProcessors());
            }
            if (GlideExecutor.g < 4) {
                i = 1;
            }
            GlideExecutor.Builder builder3 = new GlideExecutor.Builder(true);
            builder3.b = i;
            builder3.f2269c = i;
            builder3.f = "animation";
            glideBuilder.o = builder3.a();
        }
        if (glideBuilder.j == null) {
            glideBuilder.j = new MemorySizeCalculator(new MemorySizeCalculator.Builder(applicationContext));
        }
        if (glideBuilder.k == null) {
            glideBuilder.k = new Object();
        }
        if (glideBuilder.d == null) {
            int i5 = glideBuilder.j.f2260a;
            if (i5 > 0) {
                glideBuilder.d = new LruBitmapPool(i5);
            } else {
                glideBuilder.d = new Object();
            }
        }
        if (glideBuilder.e == null) {
            glideBuilder.e = new LruArrayPool(glideBuilder.j.f2261c);
        }
        if (glideBuilder.f == null) {
            glideBuilder.f = new LruCache(glideBuilder.j.b);
        }
        if (glideBuilder.i == null) {
            glideBuilder.i = new InternalCacheDiskCacheFactory(applicationContext);
        }
        if (glideBuilder.f2079c == null) {
            glideBuilder.f2079c = new Engine(glideBuilder.f, glideBuilder.i, glideBuilder.h, glideBuilder.g, GlideExecutor.a(), glideBuilder.o);
        }
        List list3 = glideBuilder.p;
        if (list3 == null) {
            glideBuilder.p = Collections.EMPTY_LIST;
        } else {
            glideBuilder.p = DesugarCollections.unmodifiableList(list3);
        }
        GlideExperiments.Builder builder4 = glideBuilder.b;
        builder4.getClass();
        Glide glide = new Glide(applicationContext, glideBuilder.f2079c, glideBuilder.f, glideBuilder.d, glideBuilder.e, new RequestManagerRetriever(glideBuilder.n), glideBuilder.k, glideBuilder.l, glideBuilder.m, glideBuilder.f2078a, glideBuilder.p, list, generatedAppGlideModule, new GlideExperiments(builder4));
        applicationContext.registerComponentCallbacks(glide);
        n = glide;
    }

    public final void c(RequestManager requestManager) {
        synchronized (this.l) {
            try {
                if (this.l.contains(requestManager)) {
                    this.l.remove(requestManager);
                } else {
                    throw new IllegalStateException("Cannot unregister not yet registered manager");
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }

    @Override // android.content.ComponentCallbacks
    public final void onConfigurationChanged(Configuration configuration) {
    }

    @Override // android.content.ComponentCallbacks
    public final void onLowMemory() {
        Util.a();
        this.g.b();
        this.f.b();
        this.i.b();
    }

    @Override // android.content.ComponentCallbacks2
    public final void onTrimMemory(int i) {
        Util.a();
        synchronized (this.l) {
            try {
                ArrayList arrayList = this.l;
                int size = arrayList.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList.get(i2);
                    i2++;
                    ((RequestManager) obj).getClass();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        this.g.a(i);
        this.f.a(i);
        this.i.a(i);
    }
}
