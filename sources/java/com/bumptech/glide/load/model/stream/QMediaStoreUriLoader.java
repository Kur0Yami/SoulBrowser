package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.Options;
import com.bumptech.glide.load.data.DataFetcher;
import com.bumptech.glide.load.data.mediastore.MediaStoreUtil;
import com.bumptech.glide.load.model.ModelLoader;
import com.bumptech.glide.load.model.ModelLoaderFactory;
import com.bumptech.glide.load.model.MultiModelLoaderFactory;
import com.bumptech.glide.signature.ObjectKey;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

@RequiresApi
/* loaded from: classes.dex */
public final class QMediaStoreUriLoader<DataT> implements ModelLoader<Uri, DataT> {

    /* renamed from: a, reason: collision with root package name */
    public final Context f2336a;
    public final ModelLoader b;

    /* renamed from: c, reason: collision with root package name */
    public final ModelLoader f2337c;
    public final Class d;

    /* loaded from: classes.dex */
    public static abstract class Factory<DataT> implements ModelLoaderFactory<Uri, DataT> {

        /* renamed from: a, reason: collision with root package name */
        public final Context f2338a;
        public final Class b;

        public Factory(Context context, Class cls) {
            this.f2338a = context;
            this.b = cls;
        }

        @Override // com.bumptech.glide.load.model.ModelLoaderFactory
        public final ModelLoader d(MultiModelLoaderFactory multiModelLoaderFactory) {
            Class cls = this.b;
            return new QMediaStoreUriLoader(this.f2338a, multiModelLoaderFactory.b(File.class, cls), multiModelLoaderFactory.b(Uri.class, cls), cls);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class FileDescriptorFactory extends Factory<ParcelFileDescriptor> {
        public FileDescriptorFactory(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class InputStreamFactory extends Factory<InputStream> {
        public InputStreamFactory(Context context) {
            super(context, InputStream.class);
        }
    }

    /* loaded from: classes.dex */
    public static final class QMediaStoreUriFetcher<DataT> implements DataFetcher<DataT> {
        public static final String[] o = {"_data"};

        /* renamed from: c, reason: collision with root package name */
        public final Context f2339c;
        public final ModelLoader f;
        public final ModelLoader g;
        public final Uri h;
        public final int i;
        public final int j;
        public final Options k;
        public final Class l;
        public volatile boolean m;
        public volatile DataFetcher n;

        public QMediaStoreUriFetcher(Context context, ModelLoader modelLoader, ModelLoader modelLoader2, Uri uri, int i, int i2, Options options, Class cls) {
            this.f2339c = context.getApplicationContext();
            this.f = modelLoader;
            this.g = modelLoader2;
            this.h = uri;
            this.i = i;
            this.j = i2;
            this.k = options;
            this.l = cls;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final Class a() {
            return this.l;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void b() {
            DataFetcher dataFetcher = this.n;
            if (dataFetcher != null) {
                dataFetcher.b();
            }
        }

        public final DataFetcher c() {
            ModelLoader.LoadData b;
            boolean isExternalStorageLegacy = Environment.isExternalStorageLegacy();
            Cursor cursor = null;
            Context context = this.f2339c;
            Options options = this.k;
            int i = this.j;
            int i2 = this.i;
            if (isExternalStorageLegacy) {
                Uri uri = this.h;
                try {
                    Cursor query = context.getContentResolver().query(uri, o, null, null, null);
                    if (query != null) {
                        try {
                            if (query.moveToFirst()) {
                                String string = query.getString(query.getColumnIndexOrThrow("_data"));
                                if (!TextUtils.isEmpty(string)) {
                                    File file = new File(string);
                                    query.close();
                                    b = this.f.b(file, i2, i, options);
                                } else {
                                    throw new FileNotFoundException("File path was empty in media store for: " + uri);
                                }
                            }
                        } catch (Throwable th) {
                            th = th;
                            cursor = query;
                            if (cursor != null) {
                                cursor.close();
                            }
                            throw th;
                        }
                    }
                    throw new FileNotFoundException("Failed to media store entry for: " + uri);
                } catch (Throwable th2) {
                    th = th2;
                }
            } else {
                Uri uri2 = this.h;
                boolean b2 = MediaStoreUtil.b(uri2);
                ModelLoader modelLoader = this.g;
                if (b2 && uri2.getPathSegments().contains("picker")) {
                    b = modelLoader.b(uri2, i2, i, options);
                } else {
                    if (context.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0) {
                        uri2 = MediaStore.setRequireOriginal(uri2);
                    }
                    b = modelLoader.b(uri2, i2, i, options);
                }
            }
            if (b == null) {
                return null;
            }
            return b.f2303c;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void cancel() {
            this.m = true;
            DataFetcher dataFetcher = this.n;
            if (dataFetcher != null) {
                dataFetcher.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final DataSource d() {
            return DataSource.f2146c;
        }

        @Override // com.bumptech.glide.load.data.DataFetcher
        public final void e(Priority priority, DataFetcher.DataCallback dataCallback) {
            try {
                DataFetcher c2 = c();
                if (c2 == null) {
                    dataCallback.c(new IllegalArgumentException("Failed to build fetcher for: " + this.h));
                } else {
                    this.n = c2;
                    if (this.m) {
                        cancel();
                    } else {
                        c2.e(priority, dataCallback);
                    }
                }
            } catch (FileNotFoundException e) {
                dataCallback.c(e);
            }
        }
    }

    public QMediaStoreUriLoader(Context context, ModelLoader modelLoader, ModelLoader modelLoader2, Class cls) {
        this.f2336a = context.getApplicationContext();
        this.b = modelLoader;
        this.f2337c = modelLoader2;
        this.d = cls;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final boolean a(Object obj) {
        Uri uri = (Uri) obj;
        if (Build.VERSION.SDK_INT >= 29 && MediaStoreUtil.b(uri)) {
            return true;
        }
        return false;
    }

    @Override // com.bumptech.glide.load.model.ModelLoader
    public final ModelLoader.LoadData b(Object obj, int i, int i2, Options options) {
        Uri uri = (Uri) obj;
        return new ModelLoader.LoadData(new ObjectKey(uri), new QMediaStoreUriFetcher(this.f2336a, this.b, this.f2337c, uri, i, i2, options, this.d));
    }
}
