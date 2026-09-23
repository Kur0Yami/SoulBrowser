package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.security.InvalidKeyException;

/* loaded from: classes.dex */
abstract class zzhgc {

    /* renamed from: a, reason: collision with root package name */
    public final int[] f8518a;
    public final int b;

    public zzhgc(byte[] bArr, int i) {
        if (bArr.length == 32) {
            this.f8518a = zzhga.c(bArr);
            this.b = i;
            return;
        }
        throw new InvalidKeyException("The key length in bytes must be 32.");
    }

    public abstract int[] a(int i, int[] iArr);

    public abstract int b();

    public final ByteBuffer c(byte[] bArr, int i) {
        int[] a2 = a(i, zzhga.c(bArr));
        int[] iArr = (int[]) a2.clone();
        zzhga.a(iArr);
        for (int i2 = 0; i2 < 16; i2++) {
            a2[i2] = a2[i2] + iArr[i2];
        }
        ByteBuffer order = ByteBuffer.allocate(64).order(ByteOrder.LITTLE_ENDIAN);
        order.asIntBuffer().put(a2, 0, 16);
        return order;
    }
}
