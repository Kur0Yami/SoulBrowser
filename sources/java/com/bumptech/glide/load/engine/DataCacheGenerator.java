package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Key;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.engine.DataFetcherGenerator;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.File;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class DataCacheGenerator implements DataFetcherGenerator, DataFetcher.DataCallback<Object> {

    /* renamed from: c, reason: collision with root package name */
    public final List f2186c;
    public final DecodeHelper f;
    public final DataFetcherGenerator.FetcherReadyCallback g;
    public int h = -1;
    public Key i;
    public List j;
    public int k;
    public volatile ModelLoader.LoadData l;
    public File m;

    public DataCacheGenerator(List list, DecodeHelper decodeHelper, DataFetcherGenerator.FetcherReadyCallback fetcherReadyCallback) {
        this.f2186c = list;
        this.f = decodeHelper;
        this.g = fetcherReadyCallback;
    }

    @Override // com.bumptech.glide.load.engine.DataFetcherGenerator
    public final boolean b() {
        while (true) {
            List list = this.j;
            boolean z = false;
            if (list != null && this.k < list.size()) {
                this.l = null;
                while (!z && this.k < this.j.size()) {
                    List list2 = this.j;
                    int i = this.k;
                    this.k = i + 1;
                    ModelLoader modelLoader = (ModelLoader) list2.get(i);
                    File file = this.m;
                    DecodeHelper decodeHelper = this.f;
                    this.l = modelLoader.b(file, decodeHelper.e, decodeHelper.f, decodeHelper.i);
                    if (this.l != null && this.f.c(this.l.f2303c.a()) != null) {
                        this.l.f2303c.e(this.f.o, this);
                        z = true;
                    }
                }
                return z;
            }
            int i2 = this.h + 1;
            this.h = i2;
            if (i2 >= this.f2186c.size()) {
                return false;
            }
            Key key = (Key) this.f2186c.get(this.h);
            DecodeHelper decodeHelper2 = this.f;
            File b = decodeHelper2.h.a().b(new DataCacheKey(key, decodeHelper2.n));
            this.m = b;
            if (b != null) {
                this.i = key;
                this.j = this.f.f2191c.b().f2089a.c(b);
                this.k = 0;
            }
        }
    }

    @Override // com.bumptech.glide.load.data.DataFetcher.DataCallback
    public final void c(Exception exc) {
        this.g.a(this.i, exc, this.l.f2303c, DataSource.g);
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
        this.g.c(this.i, obj, this.l.f2303c, DataSource.g, this.i);
    }
}
