package com.bumptech.glide.load.engine;

import com.bumptech.glide.Registry;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.Transformation;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.provider.ModelToResourceClassCache;
import com.bumptech.glide.util.MultiClassKey;
import j$.util.DesugarCollections;
import java.io.File;
import java.util.ArrayList;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class ResourceCacheGenerator implements DataFetcherGenerator, DataFetcher.DataCallback<Object> {

    /* renamed from: c, reason: collision with root package name */
    public final DataFetcherGenerator.FetcherReadyCallback f2230c;
    public final DecodeHelper f;
    public int g;
    public int h = -1;
    public Key i;
    public List j;
    public int k;
    public volatile ModelLoader.LoadData l;
    public File m;
    public ResourceCacheKey n;

    public ResourceCacheGenerator(DecodeHelper decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f = decodeHelper;
        this.f2230c = fetcherReadyCallback;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final boolean b() {
        List list;
        boolean z;
        List list2;
        boolean z2;
        ArrayList a2 = this.f.a();
        if (a2.isEmpty()) {
            return false;
        }
        DecodeHelper decodeHelper = this.f;
        Registry b = decodeHelper.f2191c.b();
        Class<?> cls = decodeHelper.d.getClass();
        Class cls2 = decodeHelper.g;
        Class cls3 = decodeHelper.k;
        ModelToResourceClassCache modelToResourceClassCache = b.h;
        MultiClassKey multiClassKey = (MultiClassKey) modelToResourceClassCache.f2450a.getAndSet(null);
        if (multiClassKey == null) {
            multiClassKey = new MultiClassKey(cls, cls2, cls3);
        } else {
            multiClassKey.f2495a = cls;
            multiClassKey.b = cls2;
            multiClassKey.f2496c = cls3;
        }
        synchronized (modelToResourceClassCache.b) {
            list = (List) modelToResourceClassCache.b.get(multiClassKey);
        }
        modelToResourceClassCache.f2450a.set(multiClassKey);
        if (list == null) {
            ArrayList arrayList = new ArrayList();
            ArrayList b2 = b.f2089a.b(cls);
            int size = b2.size();
            int i = 0;
            while (i < size) {
                Object obj = b2.get(i);
                i++;
                ArrayList d = b.f2090c.d((Class) obj, cls2);
                int size2 = d.size();
                int i2 = 0;
                while (i2 < size2) {
                    Object obj2 = d.get(i2);
                    i2++;
                    Class cls4 = (Class) obj2;
                    if (!b.f.b(cls4, cls3).isEmpty() && !arrayList.contains(cls4)) {
                        arrayList.add(cls4);
                    }
                }
            }
            z = false;
            b.h.a(cls, cls2, cls3, DesugarCollections.unmodifiableList(arrayList));
            list2 = arrayList;
        } else {
            z = false;
            list2 = list;
        }
        if (list2.isEmpty()) {
            if (!File.class.equals(this.f.k)) {
                throw new IllegalStateException("Failed to find any load path from " + this.f.d.getClass() + " to " + this.f.k);
            }
            return z;
        }
        while (true) {
            List list3 = this.j;
            if (list3 != null && this.k < list3.size()) {
                this.l = null;
                boolean z3 = z;
                while (!z3 && this.k < this.j.size()) {
                    List list4 = this.j;
                    int i3 = this.k;
                    this.k = i3 + 1;
                    ModelLoader modelLoader = (ModelLoader) list4.get(i3);
                    File file = this.m;
                    DecodeHelper decodeHelper2 = this.f;
                    this.l = modelLoader.b(file, decodeHelper2.e, decodeHelper2.f, decodeHelper2.i);
                    if (this.l != null && this.f.c(this.l.f2303c.a()) != null) {
                        this.l.f2303c.e(this.f.o, this);
                        z3 = true;
                    }
                }
                return z3;
            }
            int i4 = this.h + 1;
            this.h = i4;
            if (i4 >= list2.size()) {
                int i5 = this.g + 1;
                this.g = i5;
                if (i5 >= a2.size()) {
                    return z;
                }
                this.h = z ? 1 : 0;
            }
            Key key = (Key) a2.get(this.g);
            Class cls5 = (Class) list2.get(this.h);
            Transformation d2 = this.f.d(cls5);
            DecodeHelper decodeHelper3 = this.f;
            this.n = new ResourceCacheKey(decodeHelper3.f2191c.f2080a, key, decodeHelper3.n, decodeHelper3.e, decodeHelper3.f, d2, cls5, decodeHelper3.i);
            File b3 = decodeHelper3.h.a().b(this.n);
            this.m = b3;
            if (b3 != null) {
                this.i = key;
                this.j = this.f.f2191c.b().f2089a.c(b3);
                z2 = false;
                this.k = 0;
            } else {
                z2 = false;
            }
            z = z2;
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public final void c(Exception exc) {
        ((DecodeJob) this.f2230c).a(this.n, exc, this.l.f2303c, DataSource.h);
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final void cancel() {
        ModelLoader.LoadData loadData = this.l;
        if (loadData != null) {
            loadData.f2303c.cancel();
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public final void f(Object obj) {
        this.f2230c.c(this.i, obj, this.l.f2303c, DataSource.h, this.n);
    }
}
