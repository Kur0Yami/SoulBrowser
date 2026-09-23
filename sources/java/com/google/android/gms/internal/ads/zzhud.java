package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import java.security.interfaces.ECPublicKey;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzhud implements zzhaq {
    public static final byte[] g = new byte[0];
    public static final byte[] h = {0};
    public static final zzhhs i;
    public static final zzhhs j;
    public static final zzhhs k;

    /* renamed from: a, reason: collision with root package name */
    public final ECPublicKey f8790a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final zzhvv f8791c;
    public final byte[] d;
    public final byte[] e;
    public final Provider f;

    static {
        zzhhr zzhhrVar = new zzhhr();
        zzhhrVar.a(zzhwl.f8847c, zzhrb.b);
        zzhhrVar.a(zzhwl.f, zzhrb.f8686c);
        zzhhrVar.a(zzhwl.g, zzhrb.d);
        i = zzhhrVar.b();
        zzhhr zzhhrVar2 = new zzhhr();
        zzhhrVar2.a(zzhvv.f8839c, zzhrc.b);
        zzhhrVar2.a(zzhvv.f, zzhrc.f8688c);
        j = zzhhrVar2.b();
        zzhhr zzhhrVar3 = new zzhhr();
        zzhhrVar3.a(zzhvu.f8838c, zzhra.f8684c);
        zzhhrVar3.a(zzhvu.f, zzhra.d);
        zzhhrVar3.a(zzhvu.g, zzhra.e);
        k = zzhhrVar3.b();
    }

    public zzhud(ECPublicKey eCPublicKey, zzhwl zzhwlVar, zzhvv zzhvvVar, byte[] bArr, byte[] bArr2, Provider provider) {
        if (zzhhb.a(2)) {
            zzhxa.b(zzhwlVar);
            this.b = zzhwlVar.toString().concat("withECDSA");
            this.f8790a = eCPublicKey;
            this.f8791c = zzhvvVar;
            this.d = bArr;
            this.e = bArr2;
            this.f = provider;
            return;
        }
        throw new GeneralSecurityException("Can not use ECDSA in FIPS-mode, as BoringCrypto is not available.");
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void a(byte[] bArr, byte[] bArr2) {
        byte[] bArr3 = this.d;
        int length = bArr3.length;
        if (length == 0) {
            b(bArr, bArr2);
        } else {
            if (zzhkl.c(bArr3, bArr)) {
                b(Arrays.copyOfRange(bArr, length, bArr.length), bArr2);
                return;
            }
            throw new GeneralSecurityException("Invalid signature (output prefix mismatch)");
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:51:0x0113  */
    /* JADX WARN: Removed duplicated region for block: B:54:0x012f  */
    /* JADX WARN: Removed duplicated region for block: B:58:0x0138 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0118  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b(byte[] r18, byte[] r19) {
        /*
            Method dump skipped, instructions count: 325
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzhud.b(byte[], byte[]):void");
    }
}
