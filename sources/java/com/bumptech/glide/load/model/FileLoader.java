package com.bumptech.glide.load.model;

import android.os.ParcelFileDescriptor;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileInputStream;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* loaded from: classes.dex */
public class FileLoader<Data> implements ModelLoader<File, Data> {

    /* renamed from: a, reason: collision with root package name */
    public final FileOpener f2288a;

    /* loaded from: classes.dex */
    public static class Factory<Data> implements ModelLoaderFactory<File, Data> {

        /* renamed from: a, reason: collision with root package name */
        public final FileOpener f2289a;

        public Factory(FileOpener fileOpener) {
            this.f2289a = fileOpener;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new FileLoader(this.f2289a);
        }
    }

    /* loaded from: classes.dex */
    public static class FileDescriptorFactory extends Factory<ParcelFileDescriptor> {

        /* renamed from: com.bumptech.glide.load.model.FileLoader$FileDescriptorFactory$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements FileOpener<ParcelFileDescriptor> {
            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final Class a() {
                return ParcelFileDescriptor.class;
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final void b(Object obj) {
                ((ParcelFileDescriptor) obj).close();
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final Object c(File file) {
                return ParcelFileDescriptor.open(file, 268435456);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.bumptech.glide.load.model.FileLoader$FileOpener] */
        public FileDescriptorFactory() {
            super(new Object());
        }
    }

    /* loaded from: classes.dex */
    public static final class FileFetcher<Data> implements DataFetcher<Data> {

        /* renamed from: c, reason: collision with root package name */
        public final File f2290c;
        public final FileOpener f;
        public Object g;

        public FileFetcher(File file, FileOpener fileOpener) {
            this.f2290c = file;
            this.f = fileOpener;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return this.f.a();
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
            Object obj = this.g;
            if (obj != null) {
                try {
                    this.f.b(obj);
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
                Object c2 = this.f.c(this.f2290c);
                this.g = c2;
                dataCallback.f(c2);
            } catch (FileNotFoundException e) {
                if (Log.isLoggable("FileLoader", 3)) {
                    Log.d("FileLoader", "Failed to open file", e);
                }
                dataCallback.c(e);
            }
        }
    }

    /* loaded from: classes.dex */
    public interface FileOpener<Data> {
        Class a();

        void b(Object obj);

        Object c(File file);
    }

    /* loaded from: classes.dex */
    public static class StreamFactory extends Factory<InputStream> {

        /* renamed from: com.bumptech.glide.load.model.FileLoader$StreamFactory$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements FileOpener<InputStream> {
            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final Class a() {
                return InputStream.class;
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final void b(Object obj) {
                ((InputStream) obj).close();
            }

            @Override // com.bumptech.glide.load.model.FileLoader.FileOpener
            public final Object c(File file) {
                return new FileInputStream(file);
            }
        }

        /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.bumptech.glide.load.model.FileLoader$FileOpener] */
        public StreamFactory() {
            super(new Object());
        }
    }

    public FileLoader(FileOpener fileOpener) {
        this.f2288a = fileOpener;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        File file = (File) obj;
        return new ModelLoader.LoadData(new ObjectKey(file), new FileFetcher(file, this.f2288a));
    }
}
