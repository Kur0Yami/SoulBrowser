package com.bumptech.glide.load.model;

import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import com.bumptech.glide.util.ByteBufferUtil;
import java.io.File;
import java.io.IOException;
import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class ByteBufferFileLoader implements ModelLoader<File, ByteBuffer> {

    /* loaded from: classes.dex */
    public static final class ByteBufferFetcher implements DataFetcher<ByteBuffer> {

        /* renamed from: c, reason: collision with root package name */
        public final File f2279c;

        public ByteBufferFetcher(File file) {
            this.f2279c = file;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return ByteBuffer.class;
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
            try {
                dataCallback.f(ByteBufferUtil.a(this.f2279c));
            } catch (IOException e) {
                if (Log.isLoggable("ByteBufferFileLoader", 3)) {
                    Log.d("ByteBufferFileLoader", "Failed to obtain ByteBuffer for file", e);
                }
                dataCallback.c(e);
            }
        }
    }

    /* loaded from: classes.dex */
    public static class Factory implements ModelLoaderFactory<File, ByteBuffer> {
        /* JADX WARN: Type inference failed for: r1v1, types: [com.bumptech.glide.load.model.ModelLoader, java.lang.Object] */
        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new Object();
        }
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final /* bridge */ /* synthetic */ boolean a(Object obj) {
        return true;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        File file = (File) obj;
        return new ModelLoader.LoadData(new ObjectKey(file), new ByteBufferFetcher(file));
    }
}
