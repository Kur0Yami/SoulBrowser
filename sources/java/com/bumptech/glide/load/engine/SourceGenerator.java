package com.bumptech.glide.load.engine;

import android.os.SystemClock;
import android.util.Log;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Encoder;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.DataRewinder;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.engine.cache.DiskCache;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.util.LogTime;
import java.util.Collections;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class SourceGenerator implements DataFetcherGenerator, DataFetcherGenerator.FetcherReadyCallback {

    /* renamed from: c, reason: collision with root package name */
    public final DecodeHelper f2233c;
    public final DataFetcherGenerator.FetcherReadyCallback f;
    public volatile int g;
    public volatile DataCacheGenerator h;
    public volatile Object i;
    public volatile ModelLoader.LoadData j;
    public volatile DataCacheKey k;

    public SourceGenerator(DecodeHelper decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f2233c = decodeHelper;
        this.f = fetcherReadyCallback;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void a(Key key, Exception exc, DataFetcher dataFetcher, DataSource dataSource) {
        ((DecodeJob) this.f).a(key, exc, dataFetcher, this.j.f2303c.d());
    }

    /* JADX WARN: Code restructure failed: missing block: B:6:0x000e, code lost:
    
        if (d(r0) == false) goto L16;
     */
    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final boolean b() {
        /*
            r5 = this;
            java.lang.Object r0 = r5.i
            r1 = 0
            r2 = 1
            if (r0 == 0) goto L20
            java.lang.Object r0 = r5.i
            r5.i = r1
            boolean r0 = r5.d(r0)     // Catch: java.io.IOException -> L11
            if (r0 != 0) goto L20
            goto L2c
        L11:
            r0 = move-exception
            r3 = 3
            java.lang.String r4 = "SourceGenerator"
            boolean r3 = android.util.Log.isLoggable(r4, r3)
            if (r3 == 0) goto L20
            java.lang.String r3 = "Failed to properly rewind or write data to cache"
            android.util.Log.d(r4, r3, r0)
        L20:
            com.bumptech.glide.load.engine.DataCacheGenerator r0 = r5.h
            if (r0 == 0) goto L2d
            com.bumptech.glide.load.engine.DataCacheGenerator r0 = r5.h
            boolean r0 = r0.b()
            if (r0 == 0) goto L2d
        L2c:
            return r2
        L2d:
            r5.h = r1
            r5.j = r1
            r0 = 0
        L32:
            if (r0 != 0) goto L90
            int r1 = r5.g
            com.bumptech.glide.load.engine.DecodeHelper r3 = r5.f2233c
            java.util.ArrayList r3 = r3.b()
            int r3 = r3.size()
            if (r1 >= r3) goto L90
            com.bumptech.glide.load.engine.DecodeHelper r1 = r5.f2233c
            java.util.ArrayList r1 = r1.b()
            int r3 = r5.g
            int r4 = r3 + 1
            r5.g = r4
            java.lang.Object r1 = r1.get(r3)
            com.bumptech.glide.load.model.ModelLoader$LoadData r1 = (com.bumptech.glide.load.model.ModelLoader.LoadData) r1
            r5.j = r1
            com.bumptech.glide.load.model.ModelLoader$LoadData r1 = r5.j
            if (r1 == 0) goto L32
            com.bumptech.glide.load.engine.DecodeHelper r1 = r5.f2233c
            com.bumptech.glide.load.engine.DiskCacheStrategy r1 = r1.p
            com.bumptech.glide.load.model.ModelLoader$LoadData r3 = r5.j
            com.bumptech.glide.load.data.DataFetcher r3 = r3.f2303c
            com.bumptech.glide.load.DataSource r3 = r3.d()
            boolean r1 = r1.c(r3)
            if (r1 != 0) goto L7c
            com.bumptech.glide.load.engine.DecodeHelper r1 = r5.f2233c
            com.bumptech.glide.load.model.ModelLoader$LoadData r3 = r5.j
            com.bumptech.glide.load.data.DataFetcher r3 = r3.f2303c
            java.lang.Class r3 = r3.a()
            com.bumptech.glide.load.engine.LoadPath r1 = r1.c(r3)
            if (r1 == 0) goto L32
        L7c:
            com.bumptech.glide.load.model.ModelLoader$LoadData r0 = r5.j
            com.bumptech.glide.load.model.ModelLoader$LoadData r1 = r5.j
            com.bumptech.glide.load.data.DataFetcher r1 = r1.f2303c
            com.bumptech.glide.load.engine.DecodeHelper r3 = r5.f2233c
            com.bumptech.glide.Priority r3 = r3.o
            com.bumptech.glide.load.engine.SourceGenerator$1 r4 = new com.bumptech.glide.load.engine.SourceGenerator$1
            r4.<init>()
            r1.e(r3, r4)
            r0 = r2
            goto L32
        L90:
            return r0
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.engine.SourceGenerator.b():boolean");
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator.FetcherReadyCallback
    public final void c(Key key, Object obj, DataFetcher dataFetcher, DataSource dataSource, Key key2) {
        this.f.c(key, obj, dataFetcher, this.j.f2303c.d(), key);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final void cancel() {
        ModelLoader.LoadData loadData = this.j;
        if (loadData != null) {
            loadData.f2303c.cancel();
        }
    }

    public final boolean d(Object obj) {
        Throwable th;
        int i = LogTime.b;
        long elapsedRealtimeNanos = SystemClock.elapsedRealtimeNanos();
        boolean z = false;
        try {
            DataRewinder c2 = this.f2233c.f2191c.b().c(obj);
            Object a2 = c2.a();
            Encoder b = this.f2233c.f2191c.b().b.b(a2.getClass());
            if (b != null) {
                DataCacheWriter dataCacheWriter = new DataCacheWriter(b, a2, this.f2233c.i);
                Key key = this.j.f2302a;
                DecodeHelper decodeHelper = this.f2233c;
                DataCacheKey dataCacheKey = new DataCacheKey(key, decodeHelper.n);
                DiskCache a3 = decodeHelper.h.a();
                a3.a(dataCacheKey, dataCacheWriter);
                if (Log.isLoggable("SourceGenerator", 2)) {
                    Log.v("SourceGenerator", "Finished encoding source to cache, key: " + dataCacheKey + ", data: " + obj + ", encoder: " + b + ", duration: " + LogTime.a(elapsedRealtimeNanos));
                }
                if (a3.b(dataCacheKey) != null) {
                    this.k = dataCacheKey;
                    this.h = new DataCacheGenerator(Collections.singletonList(this.j.f2302a), this.f2233c, this);
                    this.j.f2303c.b();
                    return true;
                }
                if (Log.isLoggable("SourceGenerator", 3)) {
                    Log.d("SourceGenerator", "Attempt to write: " + this.k + ", data: " + obj + " to the disk cache failed, maybe the disk cache is disabled? Trying to decode the data directly...");
                }
                try {
                    ((DecodeJob) this.f).c(this.j.f2302a, c2.a(), this.j.f2303c, this.j.f2303c.d(), this.j.f2302a);
                    return false;
                } catch (Throwable th2) {
                    th = th2;
                    z = true;
                    if (!z) {
                        this.j.f2303c.b();
                        throw th;
                    }
                    throw th;
                }
            }
            throw new RuntimeException("Failed to find source encoder for data class: " + a2.getClass());
        } catch (Throwable th3) {
            th = th3;
        }
    }
}
