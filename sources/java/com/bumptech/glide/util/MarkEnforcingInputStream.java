package com.bumptech.glide.util;

import java.io.FilterInputStream;
import kotlin.jvm.internal.IntCompanionObject;

/* loaded from: classes.dex */
public class MarkEnforcingInputStream extends FilterInputStream {

    /* renamed from: c, reason: collision with root package name */
    public int f2494c;

    public MarkEnforcingInputStream(ExceptionPassthroughInputStream exceptionPassthroughInputStream) {
        super(exceptionPassthroughInputStream);
        this.f2494c = IntCompanionObject.MIN_VALUE;
    }

    public final long a(long j) {
        int i = this.f2494c;
        if (i == 0) {
            return -1L;
        }
        if (i != Integer.MIN_VALUE && j > i) {
            return i;
        }
        return j;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int available() {
        int i = this.f2494c;
        if (i == Integer.MIN_VALUE) {
            return super.available();
        }
        return Math.min(i, super.available());
    }

    public final void b(long j) {
        int i = this.f2494c;
        if (i != Integer.MIN_VALUE && j != -1) {
            this.f2494c = (int) (i - j);
        }
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void mark(int i) {
        super.mark(i);
        this.f2494c = i;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read() {
        if (a(1L) == -1) {
            return -1;
        }
        int read = super.read();
        b(1L);
        return read;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final synchronized void reset() {
        super.reset();
        this.f2494c = IntCompanionObject.MIN_VALUE;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final long skip(long j) {
        long a2 = a(j);
        if (a2 == -1) {
            return 0L;
        }
        long skip = super.skip(a2);
        b(skip);
        return skip;
    }

    @Override // java.io.FilterInputStream, java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        int a2 = (int) a(i2);
        if (a2 == -1) {
            return -1;
        }
        int read = super.read(bArr, i, a2);
        b(read);
        return read;
    }
}
