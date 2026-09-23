package com.google.android.gms.internal.ads;

import java.io.InputStream;
import java.nio.ByteBuffer;
import java.util.Iterator;
import kotlin.UByte;

/* loaded from: classes.dex */
final class zzibh extends InputStream {

    /* renamed from: c, reason: collision with root package name */
    public Iterator f8918c;
    public ByteBuffer f;
    public int g;
    public int h;
    public int i;
    public boolean j;
    public byte[] k;
    public int l;
    public long m;

    public final boolean a() {
        ByteBuffer byteBuffer;
        Iterator it = this.f8918c;
        do {
            this.h++;
            if (!it.hasNext()) {
                return false;
            }
            byteBuffer = (ByteBuffer) it.next();
            this.f = byteBuffer;
        } while (!byteBuffer.hasRemaining());
        this.i = this.f.position();
        if (this.f.hasArray()) {
            this.j = true;
            this.k = this.f.array();
            this.l = this.f.arrayOffset();
        } else {
            this.j = false;
            this.m = zzidm.n(this.f);
            this.k = null;
        }
        return true;
    }

    public final void b(int i) {
        int i2 = this.i + i;
        this.i = i2;
        if (i2 == this.f.limit()) {
            a();
        }
    }

    @Override // java.io.InputStream
    public final int read() {
        if (this.h == this.g) {
            return -1;
        }
        if (this.j) {
            int i = this.k[this.i + this.l] & UByte.MAX_VALUE;
            b(1);
            return i;
        }
        int h = zzidm.f8954c.h(this.i + this.m) & UByte.MAX_VALUE;
        b(1);
        return h;
    }

    @Override // java.io.InputStream
    public final int read(byte[] bArr, int i, int i2) {
        if (this.h == this.g) {
            return -1;
        }
        int limit = this.f.limit();
        int i3 = this.i;
        int i4 = limit - i3;
        if (i2 > i4) {
            i2 = i4;
        }
        if (this.j) {
            System.arraycopy(this.k, i3 + this.l, bArr, i, i2);
            b(i2);
            return i2;
        }
        int position = this.f.position();
        this.f.position(this.i);
        this.f.get(bArr, i, i2);
        this.f.position(position);
        b(i2);
        return i2;
    }
}
