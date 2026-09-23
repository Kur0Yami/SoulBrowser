package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.net.Uri;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.AssetPathFetcher;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.InputStream;

/* loaded from: classes.dex */
public class AssetUriLoader<Data> implements ModelLoader<Uri, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final AssetManager f2274a;
    public final Object b;

    /* loaded from: classes.dex */
    public interface AssetFetcherFactory<Data> {
        DataFetcher a(AssetManager assetManager, String str);
    }

    /* loaded from: classes.dex */
    public static class FileDescriptorFactory implements ModelLoaderFactory<Uri, AssetFileDescriptor>, AssetFetcherFactory<AssetFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final AssetManager f2275a;

        public FileDescriptorFactory(AssetManager assetManager) {
            this.f2275a = assetManager;
        }

        @Override // com.bumptech.glide.load.model.AssetUriLoader.AssetFetcherFactory
        public final DataFetcher a(AssetManager assetManager, String str) {
            return new AssetPathFetcher(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new AssetUriLoader(this.f2275a, this);
        }
    }

    /* loaded from: classes.dex */
    public static class StreamFactory implements ModelLoaderFactory<Uri, InputStream>, AssetFetcherFactory<InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final AssetManager f2276a;

        public StreamFactory(AssetManager assetManager) {
            this.f2276a = assetManager;
        }

        @Override // com.bumptech.glide.load.model.AssetUriLoader.AssetFetcherFactory
        public final DataFetcher a(AssetManager assetManager, String str) {
            return new AssetPathFetcher(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new AssetUriLoader(this.f2276a, this);
        }
    }

    public AssetUriLoader(AssetManager assetManager, AssetFetcherFactory assetFetcherFactory) {
        this.f2274a = assetManager;
        this.b = assetFetcherFactory;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        Uri uri = (Uri) obj;
        if (!"file".equals(uri.getScheme()) || uri.getPathSegments().isEmpty() || !"android_asset".equals(uri.getPathSegments().get(0))) {
            return false;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v2, types: [com.bumptech.glide.load.model.AssetUriLoader$AssetFetcherFactory, java.lang.Object] */
    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        Uri uri = (Uri) obj;
        return new ModelLoader.LoadData(new ObjectKey(uri), this.b.a(this.f2274a, uri.toString().substring(22)));
    }
}
