package com.bumptech.glide.load.model;

import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.ByteArrayInputStream;
import java.io.InputStream;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteArrayLoader<Data> implements ModelLoader<byte[], Data> {

    /* renamed from: a, reason: collision with root package name */
    public final Converter f2277a;

    /* loaded from: classes.dex */
    public static class ByteBufferFactory implements ModelLoaderFactory<byte[], ByteBuffer> {

        /* renamed from: com.bumptech.glide.load.model.ByteArrayLoader$ByteBufferFactory$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements Converter<ByteBuffer> {
            @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
            public final Class a() {
                return ByteBuffer.class;
            }

            @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
            public final Object b(byte[] bArr) {
                return ByteBuffer.wrap(bArr);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.bumptech.glide.load.model.ByteArrayLoader$Converter] */
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ByteArrayLoader(new Object());
        }
    }

    /* loaded from: classes.dex */
    public interface Converter<Data> {
        Class a();

        Object b(byte[] bArr);
    }

    /* loaded from: classes.dex */
    public static class Fetcher<Data> implements DataFetcher<Data> {

        /* renamed from: c, reason: collision with root package name */
        public final byte[] f2278c;
        public final Converter f;

        public Fetcher(byte[] bArr, Converter converter) {
            this.f2278c = bArr;
            this.f = converter;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return this.f.a();
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
            dataCallback.f(this.f.b(this.f2278c));
        }
    }

    /* loaded from: classes.dex */
    public static class StreamFactory implements ModelLoaderFactory<byte[], InputStream> {

        /* renamed from: com.bumptech.glide.load.model.ByteArrayLoader$StreamFactory$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements Converter<InputStream> {
            @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
            public final Class a() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.model.ByteArrayLoader.Converter
            public final Object b(byte[] bArr) {
                return new ByteArrayInputStream(bArr);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.bumptech.glide.load.model.ByteArrayLoader$Converter] */
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ByteArrayLoader(new Object());
        }
    }

    public ByteArrayLoader(Converter converter) {
        this.f2277a = converter;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        byte[] bArr = (byte[]) obj;
        return new ModelLoader.LoadData(new ObjectKey(bArr), new Fetcher(bArr, this.f2277a));
    }
}
