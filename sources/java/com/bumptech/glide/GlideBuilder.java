package com.bumptech.glide;

import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.bumptech.glide.Glide;
import com.bumptech.glide.GlideExperiments;
import com.bumptech.glide.load.engine.Engine;
import com.bumptech.glide.load.engine.bitmap_recycle.BitmapPool;
import com.bumptech.glide.load.engine.bitmap_recycle.LruArrayPool;
import com.bumptech.glide.load.engine.cache.InternalCacheDiskCacheFactory;
import com.bumptech.glide.load.engine.cache.LruResourceCache;
import com.bumptech.glide.load.engine.cache.MemorySizeCalculator;
import com.bumptech.glide.load.engine.executor.GlideExecutor;
import com.bumptech.glide.manager.DefaultConnectivityMonitorFactory;
import com.bumptech.glide.manager.RequestManagerRetriever;
import com.bumptech.glide.request.BaseRequestOptions;
import com.bumptech.glide.request.RequestOptions;
import java.util.List;

/* loaded from: classes.dex */
public final class GlideBuilder {

    /* renamed from: c, reason: collision with root package name */
    public Engine f2079c;
    public BitmapPool d;
    public LruArrayPool e;
    public LruResourceCache f;
    public GlideExecutor g;
    public GlideExecutor h;
    public InternalCacheDiskCacheFactory i;
    public MemorySizeCalculator j;
    public DefaultConnectivityMonitorFactory k;
    public RequestManagerRetriever.RequestManagerFactory n;
    public GlideExecutor o;
    public List p;

    /* renamed from: a, reason: collision with root package name */
    public final ArrayMap f2078a = new SimpleArrayMap(0);
    public final GlideExperiments.Builder b = new GlideExperiments.Builder();
    public final int l = 4;
    public final Glide.RequestOptionsFactory m = new Object();

    /* renamed from: com.bumptech.glide.GlideBuilder$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Glide.RequestOptionsFactory {
        /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.request.RequestOptions, com.bumptech.glide.request.BaseRequestOptions] */
        @Override // com.bumptech.glide.Glide.RequestOptionsFactory
        public final RequestOptions build() {
            return new BaseRequestOptions();
        }
    }

    /* renamed from: com.bumptech.glide.GlideBuilder$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 implements Glide.RequestOptionsFactory {
        /* JADX WARN: Type inference failed for: r0v0, types: [com.bumptech.glide.request.RequestOptions, com.bumptech.glide.request.BaseRequestOptions] */
        @Override // com.bumptech.glide.Glide.RequestOptionsFactory
        public final RequestOptions build() {
            return new BaseRequestOptions();
        }
    }

    /* loaded from: classes.dex */
    public static final class EnableImageDecoderForBitmaps implements GlideExperiments.Experiment {
    }

    /* loaded from: classes.dex */
    public static final class LogRequestOrigins implements GlideExperiments.Experiment {
    }

    /* loaded from: classes.dex */
    public static final class ManualOverrideHardwareBitmapMaxFdCount implements GlideExperiments.Experiment {
    }

    /* loaded from: classes.dex */
    public static final class OverrideGlideThreadPriority implements GlideExperiments.Experiment {
    }

    /* loaded from: classes.dex */
    public static final class UseMediaStoreOpenFileApisIfPossible implements GlideExperiments.Experiment {
    }
}
