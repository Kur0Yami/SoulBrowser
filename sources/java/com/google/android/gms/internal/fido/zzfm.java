package com.google.android.gms.internal.fido;

import java.io.Closeable;

/* loaded from: classes3.dex */
public final class zzfm implements Closeable {

    /* renamed from: c, reason: collision with root package name */
    public int f10308c;

    static {
        new ThreadLocal();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        int i = this.f10308c;
        if (i > 0) {
            this.f10308c = i - 1;
            return;
        }
        throw new AssertionError("Mismatched calls to RecursionDepth (possible error in core library)");
    }
}
