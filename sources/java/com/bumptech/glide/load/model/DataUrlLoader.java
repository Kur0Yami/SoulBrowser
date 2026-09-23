package com.bumptech.glide.load.model;

import android.util.Base64;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class DataUrlLoader<Model, Data> implements ModelLoader<Model, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final DataDecoder f2280a;

    /* loaded from: classes.dex */
    public interface DataDecoder<Data> {
    }

    /* loaded from: classes.dex */
    public static final class DataUriFetcher<Data> implements DataFetcher<Data> {

        /* renamed from: c, reason: collision with root package name */
        public final String f2281c;
        public final DataDecoder f;
        public Object g;

        public DataUriFetcher(String str, DataDecoder dataDecoder) {
            this.f2281c = str;
            this.f = dataDecoder;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
            try {
                ((InputStream) this.g).close();
            } catch (IOException unused) {
            }
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
            try {
                ByteArrayInputStream a2 = ((StreamFactory.AnonymousClass1) this.f).a(this.f2281c);
                this.g = a2;
                dataCallback.f(a2);
            } catch (IllegalArgumentException e) {
                dataCallback.c(e);
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class StreamFactory<Model> implements ModelLoaderFactory<Model, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final DataDecoder f2282a = new Object();

        /* renamed from: com.bumptech.glide.load.model.DataUrlLoader$StreamFactory$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements DataDecoder<InputStream> {
            public final ByteArrayInputStream a(String str) {
                if (str.startsWith("data:image")) {
                    int indexOf = str.indexOf(44);
                    if (indexOf != -1) {
                        if (str.substring(0, indexOf).endsWith(";base64")) {
                            return new ByteArrayInputStream(Base64.decode(str.substring(indexOf + 1), 0));
                        }
                        throw new IllegalArgumentException("Not a base64 image data URL.");
                    }
                    throw new IllegalArgumentException("Missing comma in data URL.");
                }
                throw new IllegalArgumentException("Not a valid image data URL.");
            }
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DataUrlLoader(this.f2282a);
        }
    }

    public DataUrlLoader(DataDecoder dataDecoder) {
        this.f2280a = dataDecoder;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        return obj.toString().startsWith("data:image");
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        return new ModelLoader.LoadData(new ObjectKey(obj), new DataUriFetcher(obj.toString(), this.f2280a));
    }
}
