package com.bumptech.glide.load.model;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileNotFoundException;

/* loaded from: classes.dex */
public final class MediaStoreFileLoader implements ModelLoader<Uri, File> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2297a;

    /* loaded from: classes.dex */
    public static final class Factory implements ModelLoaderFactory<Uri, File> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f2298a;

        public Factory(Context context) {
            this.f2298a = context;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            return new MediaStoreFileLoader(this.f2298a);
        }
    }

    /* loaded from: classes.dex */
    public static class FilePathFetcher implements DataFetcher<File> {
        public static final String[] g = {"_data"};

        /* renamed from: c, reason: collision with root package name */
        public final Context f2299c;
        public final Uri f;

        public FilePathFetcher(Context context, Uri uri) {
            this.f2299c = context;
            this.f = uri;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return File.class;
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
            Cursor query = this.f2299c.getContentResolver().query(this.f, g, null, null, null);
            String str = null;
            if (query != null) {
                try {
                    if (query.moveToFirst()) {
                        str = query.getString(query.getColumnIndexOrThrow("_data"));
                    }
                    query.close();
                } catch (Throwable th) {
                    query.close();
                    throw th;
                }
            }
            if (TextUtils.isEmpty(str)) {
                dataCallback.c(new FileNotFoundException("Failed to find file path for: " + this.f));
                return;
            }
            dataCallback.f(new File(str));
        }
    }

    public MediaStoreFileLoader(Context context) {
        this.f2297a = context;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        return MediaStoreUtil.b((Uri) obj);
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        Uri uri = (Uri) obj;
        return new ModelLoader.LoadData(new ObjectKey(uri), new FilePathFetcher(this.f2297a, uri));
    }
}
