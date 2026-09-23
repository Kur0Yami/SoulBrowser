package com.google.android.gms.internal.cast;

import java.io.Closeable;

/* loaded from: classes.dex */
public final class zzko implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public int f9750c;

    static {
        new ThreadLocal();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.f9750c;
        if (i > 0) {
            this.f9750c = i - 1;
            return;
        }
        throw new AssertionError("Mismatched calls to RecursionDepth (possible error in core library)");
    }
}
