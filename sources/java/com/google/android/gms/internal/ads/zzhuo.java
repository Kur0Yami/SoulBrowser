package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzhuo implements zzhaq {

    /* renamed from: a, reason: collision with root package name */
    public final zzhaq f8803a;
    public final byte[] b;

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f8804c;

    public zzhuo(zzhaq zzhaqVar, byte[] bArr, byte[] bArr2) {
        this.f8803a = zzhaqVar;
        this.b = bArr;
        this.f8804c = bArr2;
    }

    public static byte[] b(zzhjz zzhjzVar) {
        zzhpw zzhpwVar = zzhjzVar.e;
        Integer num = zzhjzVar.f;
        int ordinal = zzhpwVar.ordinal();
        if (ordinal != 1) {
            if (ordinal != 2) {
                if (ordinal != 3) {
                    if (ordinal != 4) {
                        throw new GeneralSecurityException("unknown output prefix type");
                    }
                } else {
                    return zzhjf.f8592a.b();
                }
            }
            return zzhjf.a(num.intValue()).b();
        }
        return zzhjf.b(num.intValue()).b();
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.b;
        int length = bArr3.length;
        zzhaq zzhaqVar = this.f8803a;
        byte[] bArr4 = this.f8804c;
        if (length == 0 && bArr4.length == 0) {
            zzhaqVar.a(bArr, bArr2);
        } else {
            if (zzhkl.c(bArr3, bArr)) {
                if (bArr4.length != 0) {
                    bArr2 = zzhvp.a(bArr2, bArr4);
                }
                zzhaqVar.a(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
                return;
            }
            throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
        }
    }
}
