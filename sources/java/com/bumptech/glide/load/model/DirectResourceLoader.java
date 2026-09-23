package com.bumptech.glide.load.model;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.content.res.Resources;
import android.graphics.drawable.Drawable;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.resource.drawable.DrawableDecoderCompat;
import com.bumptech.glide.load.resource.drawable.ResourceDrawableDecoder;
import com.bumptech.glide.signature.ObjectKey;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public final class DirectResourceLoader<DataT> implements ModelLoader<Integer, DataT> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2283a;
    public final Object b;

    /* loaded from: classes.dex */
    public static final class AssetFileDescriptorFactory implements ModelLoaderFactory<Integer, AssetFileDescriptor>, ResourceOpener<AssetFileDescriptor> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f2284a;

        public AssetFileDescriptorFactory(Context context) {
            this.f2284a = context;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Class a() {
            return AssetFileDescriptor.class;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final void b(Object obj) {
            ((AssetFileDescriptor) obj).close();
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Object c(int i, Resources.Theme theme, Resources resources) {
            return resources.openRawResourceFd(i);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.f2284a, this);
        }
    }

    /* loaded from: classes.dex */
    public static final class DrawableFactory implements ModelLoaderFactory<Integer, Drawable>, ResourceOpener<Drawable> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f2285a;

        public DrawableFactory(Context context) {
            this.f2285a = context;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Class a() {
            return Drawable.class;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final /* bridge */ /* synthetic */ void b(Object obj) {
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Object c(int i, Resources.Theme theme, Resources resources) {
            Context context = this.f2285a;
            return DrawableDecoderCompat.a(context, context, i, theme);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.f2285a, this);
        }
    }

    /* loaded from: classes.dex */
    public static final class InputStreamFactory implements ModelLoaderFactory<Integer, InputStream>, ResourceOpener<InputStream> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f2286a;

        public InputStreamFactory(Context context) {
            this.f2286a = context;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Class a() {
            return InputStream.class;
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final void b(Object obj) {
            ((InputStream) obj).close();
        }

        @Override // com.bumptech.glide.load.model.DirectResourceLoader.ResourceOpener
        public final Object c(int i, Resources.Theme theme, Resources resources) {
            return resources.openRawResource(i);
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new DirectResourceLoader(this.f2286a, this);
        }
    }

    /* loaded from: classes.dex */
    public static final class ResourceDataFetcher<DataT> implements DataFetcher<DataT> {

        /* renamed from: c, reason: collision with root package name */
        public final Resources.Theme f2287c;
        public final Resources f;
        public final ResourceOpener g;
        public final int h;
        public Object i;

        public ResourceDataFetcher(Resources.Theme theme, Resources resources, ResourceOpener resourceOpener, int i) {
            this.f2287c = theme;
            this.f = resources;
            this.g = resourceOpener;
            this.h = i;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return this.g.a();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
            Object obj = this.i;
            if (obj != null) {
                try {
                    this.g.b(obj);
                } catch (IOException unused) {
                }
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
                Object c2 = this.g.c(this.h, this.f2287c, this.f);
                this.i = c2;
                dataCallback.f(c2);
            } catch (Resources.NotFoundException e) {
                dataCallback.c(e);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface ResourceOpener<DataT> {
        Class a();

        void b(Object obj);

        Object c(int i, Resources.Theme theme, Resources resources);
    }

    public DirectResourceLoader(Context context, ResourceOpener resourceOpener) {
        this.f2283a = context.getApplicationContext();
        this.b = resourceOpener;
    }

    public static ModelLoaderFactory c(Context context) {
        return new AssetFileDescriptorFactory(context);
    }

    public static ModelLoaderFactory d(Context context) {
        return new DrawableFactory(context);
    }

    public static ModelLoaderFactory e(Context context) {
        return new InputStreamFactory(context);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object, com.bumptech.glide.load.model.DirectResourceLoader$ResourceOpener] */
    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        Resources resources;
        Integer num = (Integer) obj;
        Resources.Theme theme = (Resources.Theme) options.c(ResourceDrawableDecoder.b);
        if (theme != null) {
            resources = theme.getResources();
        } else {
            resources = this.f2283a.getResources();
        }
        return new ModelLoader.LoadData(new ObjectKey(num), new ResourceDataFetcher(theme, resources, this.b, num.intValue()));
    }
}
