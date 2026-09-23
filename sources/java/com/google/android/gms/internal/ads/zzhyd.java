package com.google.android.gms.internal.ads;

import j$.util.Objects;
import java.io.Writer;

/* loaded from: classes.dex */
final class zzhyd extends Writer {

    /* renamed from: c, reason: collision with root package name */
    public final StringBuilder f8882c;
    public final zzhyc f = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzhyc, java.lang.Object] */
    public zzhyd(StringBuilder sb) {
        this.f8882c = sb;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence) {
        this.f8882c.append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.io.Closeable, java.lang.AutoCloseable
    public final void close() {
    }

    @Override // java.io.Writer, java.io.Flushable
    public final void flush() {
    }

    @Override // java.io.Writer
    public final void write(char[] cArr, int i, int i2) {
        zzhyc zzhycVar = this.f;
        zzhycVar.f8881c = cArr;
        zzhycVar.f = null;
        this.f8882c.append((CharSequence) zzhycVar, i, i2 + i);
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence) {
        append(charSequence);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final Writer append(CharSequence charSequence, int i, int i2) {
        this.f8882c.append(charSequence, i, i2);
        return this;
    }

    @Override // java.io.Writer, java.lang.Appendable
    public final /* bridge */ /* synthetic */ Appendable append(CharSequence charSequence, int i, int i2) {
        append(charSequence, i, i2);
        return this;
    }

    @Override // java.io.Writer
    public final void write(int i) {
        this.f8882c.append((char) i);
    }

    @Override // java.io.Writer
    public final void write(String str, int i, int i2) {
        Objects.requireNonNull(str);
        this.f8882c.append((CharSequence) str, i, i2 + i);
    }
}
