package com.google.android.odml.image;

import java.io.Closeable;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class MlImage implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public int f12062c;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface ImageFormat {
    }

    /* loaded from: classes3.dex */
    public static final class Internal {
    }

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes3.dex */
    public @interface StorageType {
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        int i = this.f12062c - 1;
        this.f12062c = i;
        if (i == 0) {
            throw null;
        }
    }
}
