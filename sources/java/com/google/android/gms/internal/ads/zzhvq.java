package com.google.android.gms.internal.ads;

import java.nio.ByteBuffer;
import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzhvq implements zzgzq {

    /* renamed from: a, reason: collision with root package name */
    public final zzhgd f8835a;
    public final byte[] b;

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.ads.zzhge, com.google.android.gms.internal.ads.zzhgd] */
    public zzhvq(byte[] bArr, byte[] bArr2) {
        this.f8835a = new zzhge(bArr);
        this.b = bArr2;
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.b;
        int length = bArr3.length;
        if (length == 0) {
            return b(bArr, bArr2);
        }
        if (zzhkl.c(bArr3, bArr)) {
            return b(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("Decryption failed (OutputPrefix mismatch).");
    }

    public final byte[] b(byte[] bArr, byte[] bArr2) {
        int length = bArr.length;
        if (length >= 28) {
            return this.f8835a.b(ByteBuffer.wrap(bArr, 12, length - 12), Arrays.copyOf(bArr, 12), bArr2);
        }
        throw new GeneralSecurityException("ciphertext too short");
    }
}
