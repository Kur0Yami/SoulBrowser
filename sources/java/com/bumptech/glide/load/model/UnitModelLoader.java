package com.bumptech.glide.load.model;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;

/* loaded from: classes.dex */
public class UnitModelLoader<Model> implements ModelLoader<Model, Model> {

    /* renamed from: a, reason: collision with root package name */
    public static final UnitModelLoader f2322a = new Object();

    /* loaded from: classes.dex */
    public static class Factory<Model> implements ModelLoaderFactory<Model, Model> {

        /* renamed from: a, reason: collision with root package name */
        public static final Factory f2323a = new Object();

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return UnitModelLoader.f2322a;
        }
    }

    /* loaded from: classes.dex */
    public static class UnitFetcher<Model> implements DataFetcher<Model> {

        /* renamed from: c, reason: collision with root package name */
        public final Object f2324c;

        public UnitFetcher(Object obj) {
            this.f2324c = obj;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return this.f2324c.getClass();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void cancel() {
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final DataSource d() {
            return DataSource.f2146c;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void e(Priority priority, DataFetcher.DataCallback dataCallback) {
            dataCallback.f(this.f2324c);
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        return new ModelLoader.LoadData(new ObjectKey(obj), new UnitFetcher(obj));
    }
}
