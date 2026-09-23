package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.net.Uri;
import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.model.ModelLoader;
import java.io.InputStream;

/* loaded from: classes.dex */
public class ResourceLoader<Data> implements ModelLoader<Integer, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final ModelLoader f2313a;
    public final Resources b;

    /* loaded from: classes.dex */
    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Integer, AssetFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f2314a;

        public AssetFileDescriptorFactory(Resources resources) {
            this.f2314a = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(this.f2314a, multiModelLoaderFactory.b(Uri.class, AssetFileDescriptor.class));
        }
    }

    @Deprecated
    /* loaded from: classes.dex */
    public static class FileDescriptorFactory implements ModelLoaderFactory<Integer, ParcelFileDescriptor> {
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(null, multiModelLoaderFactory.b(Uri.class, ParcelFileDescriptor.class));
        }
    }

    /* loaded from: classes.dex */
    public static class StreamFactory implements ModelLoaderFactory<Integer, InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f2315a;

        public StreamFactory(Resources resources) {
            this.f2315a = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(this.f2315a, multiModelLoaderFactory.b(Uri.class, InputStream.class));
        }
    }

    /* loaded from: classes.dex */
    public static class UriFactory implements ModelLoaderFactory<Integer, Uri> {

        /* renamed from: a, reason: collision with root package name */
        public final Resources f2316a;

        public UriFactory(Resources resources) {
            this.f2316a = resources;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new ResourceLoader(this.f2316a, UnitModelLoader.f2322a);
        }
    }

    public ResourceLoader(Resources resources, ModelLoader modelLoader) {
        this.b = resources;
        this.f2313a = modelLoader;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        Uri uri;
        Integer num = (Integer) obj;
        try {
            uri = Uri.parse("android.resource://" + this.b.getResourcePackageName(num.intValue()) + '/' + num);
        } catch (Resources.NotFoundException e) {
            if (Log.isLoggable("ResourceLoader", 5)) {
                Log.w("ResourceLoader", "Received invalid resource id: " + num, e);
            }
            uri = null;
        }
        if (uri == null) {
            return null;
        }
        return this.f2313a.b(uri, i, i2, options);
    }
}
