package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzhgh implements zzgzq {

    /* renamed from: a, reason: collision with root package name */
    public final zzgzq f8520a;
    public final byte[] b;

    public zzhgh(zzgzq zzgzqVar, byte[] bArr) {
        this.f8520a = zzgzqVar;
        int length = bArr.length;
        if (length != 0 && length != 5) {
            throw new IllegalArgumentException("identifier has an invalid length");
        }
        this.b = bArr;
    }

    @Override // com.google.android.gms.internal.ads.zzgzq
    public final byte[] a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.b;
        int length = bArr3.length;
        zzgzq zzgzqVar = this.f8520a;
        if (length == 0) {
            return zzgzqVar.a(bArr, bArr2);
        }
        if (zzhkl.c(bArr3, bArr)) {
            return zzgzqVar.a(Arrays.copyOfRange(bArr, 5, bArr.length), bArr2);
        }
        throw new GeneralSecurityException("wrong prefix");
    }
}
