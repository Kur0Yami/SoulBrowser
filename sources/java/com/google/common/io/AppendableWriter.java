package com.google.common.io;

import com.google.common.annotations.GwtIncompatible;
import com.google.common.annotations.J2ktIncompatible;
import java.io.IOException;
import java.io.Writer;

@J2ktIncompatible
@GwtIncompatible
/* loaded from: classes3.dex */
final class AppendableWriter extends Writer {

    /* renamed from: c, reason: collision with root package name */
    public boolean f12462c;

    public final void a() {
        if (!this.f12462c) {
        } else {
            throw new IOException("Cannot write to a closed writer.");
        }
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(char c2) {
        a();
        throw null;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
        this.f12462c = true;
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
        a();
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        a();
        new String(cArr, i, i2);
        throw null;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Appendable append(char c2) {
        a();
        throw null;
    }

    @Override // java.io.Writer
    public final void write(int i) {
        a();
        throw null;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence) {
        a();
        throw null;
    }

    @Override // java.io.Writer
    public final void write(String str) {
        str.getClass();
        a();
        throw null;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Appendable append(CharSequence charSequence) {
        a();
        throw null;
    }

    @Override // java.io.Writer
    public final void write(String str, int i, int i2) {
        str.getClass();
        a();
        throw null;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence, int i, int i2) {
        a();
        throw null;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Appendable append(CharSequence charSequence, int i, int i2) {
        a();
        throw null;
    }
}
