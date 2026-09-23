package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import com.google.common.base.Preconditions;
import com.google.common.base.Strings;
import j$.util.Objects;
import java.io.IOException;
import java.io.Reader;
import java.nio.CharBuffer;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
final class CharSequenceReader extends Reader {

    /* renamed from: c, reason: collision with root package name */
    public String f12472c;
    public int f;
    public int g;

    public final void a() {
        if (this.f12472c != null) {
        } else {
            throw new IOException("reader closed");
        }
    }

    public final int b() {
        Objects.requireNonNull(this.f12472c);
        return this.f12472c.length() - this.f;
    }

    @Override // java.io.Reader, java.io.Closeable, java.lang.AutoCloseable
    public final synchronized void close() {
        this.f12472c = null;
    }

    @Override // java.io.Reader
    public final synchronized void mark(int i) {
        boolean z;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        Preconditions.b("readAheadLimit (%s) may not be negative", i, z);
        a();
        this.g = this.f;
    }

    @Override // java.io.Reader
    public final boolean markSupported() {
        return true;
    }

    @Override // java.io.Reader
    public final synchronized int read() {
        char c2;
        a();
        Objects.requireNonNull(this.f12472c);
        if (b() > 0) {
            String str = this.f12472c;
            int i = this.f;
            this.f = i + 1;
            c2 = str.charAt(i);
        } else {
            c2 = 65535;
        }
        return c2;
    }

    @Override // java.io.Reader
    public final synchronized boolean ready() {
        a();
        return true;
    }

    @Override // java.io.Reader
    public final synchronized void reset() {
        a();
        this.f = this.g;
    }

    @Override // java.io.Reader
    public final synchronized long skip(long j) {
        boolean z;
        int min;
        if (j >= 0) {
            z = true;
        } else {
            z = false;
        }
        if (z) {
            a();
            min = (int) Math.min(b(), j);
            this.f += min;
        } else {
            throw new IllegalArgumentException(Strings.a("n (%s) may not be negative", Long.valueOf(j)));
        }
        return min;
    }

    @Override // java.io.Reader
    public final synchronized int read(char[] cArr, int i, int i2) {
        Preconditions.j(i, i + i2, cArr.length);
        a();
        Objects.requireNonNull(this.f12472c);
        if (!(b() > 0)) {
            return -1;
        }
        int min = Math.min(i2, b());
        for (int i3 = 0; i3 < min; i3++) {
            String str = this.f12472c;
            int i4 = this.f;
            this.f = i4 + 1;
            cArr[i + i3] = str.charAt(i4);
        }
        return min;
    }

    @Override // java.io.Reader, java.lang.Readable
    public final synchronized int read(CharBuffer charBuffer) {
        charBuffer.getClass();
        a();
        Objects.requireNonNull(this.f12472c);
        if (!(b() > 0)) {
            return -1;
        }
        int min = Math.min(charBuffer.remaining(), b());
        for (int i = 0; i < min; i++) {
            String str = this.f12472c;
            int i2 = this.f;
            this.f = i2 + 1;
            charBuffer.put(str.charAt(i2));
        }
        return min;
    }
}
