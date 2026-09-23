package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import java.io.Reader;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
final class MultiReader extends Reader {

    /* renamed from: c, reason: collision with root package name */
    public Reader f12479c;

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        Reader reader = this.f12479c;
        if (reader != null) {
            try {
                reader.close();
            } finally {
                this.f12479c = null;
            }
        }
    }

    @Override // java.io.Reader
    public final int read(char[] cArr, int i, int i2) {
        cArr.getClass();
        Reader reader = this.f12479c;
        if (reader == null) {
            return -1;
        }
        int read = reader.read(cArr, i, i2);
        if (read != -1) {
            return read;
        }
        close();
        throw null;
    }

    @Override // java.io.Reader
    public final boolean ready() {
        Reader reader = this.f12479c;
        if (reader != null && reader.ready()) {
            return true;
        }
        return false;
    }

    @Override // java.io.Reader
    public final long skip(long j) {
        boolean z;
        Reader reader;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.e(z, "n is negative");
        if (j <= 0 || (reader = this.f12479c) == null) {
            return 0L;
        }
        long skip = reader.skip(j);
        if (skip > 0) {
            return skip;
        }
        close();
        throw null;
    }
}
