package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;

/* loaded from: classes.dex */
public class zzih extends zzic {
    public zzv b;

    /* renamed from: c, reason: collision with root package name */
    public final zzie f8983c = new zzie();
    public ByteBuffer d;
    public boolean e;
    public long f;
    public ByteBuffer g;
    public final int h;

    static {
        zzal.a("media3.decoder");
    }

    public zzih(int i) {
        this.h = i;
    }

    public void c() {
        this.f8931a = 0;
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.g;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.e = false;
    }

    public final void d(int i) {
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer == null) {
            this.d = g(i);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i2 = i + position;
        if (capacity >= i2) {
            this.d = byteBuffer;
            return;
        }
        ByteBuffer g = g(i2);
        g.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            g.put(byteBuffer);
        }
        this.d = g;
    }

    public final boolean e() {
        return b(1073741824);
    }

    public final void f() {
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.g;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final ByteBuffer g(int i) {
        int capacity;
        int i2 = this.h;
        if (i2 == 1) {
            return ByteBuffer.allocate(i);
        }
        if (i2 == 2) {
            return ByteBuffer.allocateDirect(i);
        }
        ByteBuffer byteBuffer = this.d;
        if (byteBuffer == null) {
            capacity = 0;
        } else {
            capacity = byteBuffer.capacity();
        }
        StringBuilder sb = new StringBuilder(String.valueOf(capacity).length() + 21 + String.valueOf(i).length() + 1);
        androidx.work.impl.workers.a.A(sb, "Buffer too small (", capacity, " < ", i);
        sb.append(")");
        throw new IllegalStateException(sb.toString());
    }
}
