package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.DataFetcher;
import java.io.FileNotFoundException;
import java.io.IOException;

/* loaded from: classes.dex */
public abstract class LocalUriFetcher<T> implements DataFetcher<T> {

    /* renamed from: c, reason: collision with root package name */
    public final boolean f2172c;
    public final Uri f;
    public final ContentResolver g;
    public Object h;

    public LocalUriFetcher(ContentResolver contentResolver, Uri uri, boolean z) {
        this.g = contentResolver;
        this.f = uri;
        this.f2172c = z;
    }

    @Override // com.bumptech.glide.load.data.DataFetcher
    public final void b() {
        Object obj = this.h;
        if (obj != null) {
            try {
                c(obj);
            } catch (IOException unused) {
            }
        }
    }

    public abstract void c(Object obj);

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
            Object f = f(this.g, this.f);
            this.h = f;
            dataCallback.f(f);
        } catch (FileNotFoundException e) {
            if (Log.isLoggable("LocalUriFetcher", 3)) {
                Log.d("LocalUriFetcher", "Failed to open Uri", e);
            }
            dataCallback.c(e);
        }
    }

    public abstract Object f(ContentResolver contentResolver, Uri uri);
}
