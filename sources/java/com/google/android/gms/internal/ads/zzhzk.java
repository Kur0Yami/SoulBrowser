package com.google.android.gms.internal.ads;

import java.io.OutputStream;
import java.util.ArrayList;
import java.util.Arrays;
import kotlin.uuid.Uuid;

/* loaded from: classes.dex */
public final class zzhzk extends OutputStream {
    public static final byte[] j = new byte[0];
    public int g;
    public int i;

    /* renamed from: c, reason: collision with root package name */
    public final int f8893c = Uuid.SIZE_BITS;
    public final ArrayList f = new ArrayList();
    public byte[] h = new byte[Uuid.SIZE_BITS];

    public final synchronized zzhzl a() {
        try {
            int i = this.i;
            byte[] bArr = this.h;
            if (i < bArr.length) {
                if (i > 0) {
                    this.f.add(new zzhzj(Arrays.copyOf(bArr, i)));
                }
            } else {
                this.f.add(new zzhzj(this.h));
                this.h = j;
            }
            this.g += this.i;
            this.i = 0;
        } catch (Throwable th) {
            throw th;
        }
        return zzhzl.D(this.f);
    }

    public final void b(int i) {
        this.f.add(new zzhzj(this.h));
        int length = this.g + this.h.length;
        this.g = length;
        this.h = new byte[Math.max(this.f8893c, Math.max(i, length >>> 1))];
        this.i = 0;
    }

    public final String toString() {
        int i;
        String hexString = Integer.toHexString(System.identityHashCode(this));
        synchronized (this) {
            i = this.g + this.i;
        }
        return String.format("<ByteString.Output@%s size=%d>", hexString, Integer.valueOf(i));
    }

    @Override // java.io.OutputStream
    public final synchronized void write(int i) {
        try {
            if (this.i == this.h.length) {
                b(1);
            }
            byte[] bArr = this.h;
            int i2 = this.i;
            this.i = i2 + 1;
            bArr[i2] = (byte) i;
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // java.io.OutputStream
    public final synchronized void write(byte[] bArr, int i, int i2) {
        byte[] bArr2 = this.h;
        int length = bArr2.length;
        int i3 = this.i;
        int i4 = length - i3;
        if (i2 <= i4) {
            System.arraycopy(bArr, i, bArr2, i3, i2);
            this.i += i2;
            return;
        }
        System.arraycopy(bArr, i, bArr2, i3, i4);
        int i5 = i2 - i4;
        b(i5);
        System.arraycopy(bArr, i + i4, this.h, 0, i5);
        this.i = i5;
    }
}
