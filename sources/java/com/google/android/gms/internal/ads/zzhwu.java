package com.google.android.gms.internal.ads;

import android.os.Build;
import j$.util.Objects;
import java.math.BigInteger;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.interfaces.RSAPublicKey;
import java.security.spec.RSAPublicKeySpec;

/* loaded from: classes.dex */
public final class zzhwu implements zzhaq {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f8856a = new byte[0];
    public static final byte[] b = {0};

    /* renamed from: c, reason: collision with root package name */
    public static final zzhhs f8857c;

    static {
        zzhhr zzhhrVar = new zzhhr();
        zzhhrVar.a(zzhwl.f8847c, zzhsu.b);
        zzhhrVar.a(zzhwl.f, zzhsu.f8741c);
        zzhhrVar.a(zzhwl.g, zzhsu.d);
        f8857c = zzhhrVar.b();
    }

    public static zzhaq b(zzhta zzhtaVar) {
        byte[] bArr;
        Integer valueOf;
        try {
            int i = zzhkl.f8617a;
            if (Objects.equals(System.getProperty("java.vendor"), "The Android Project")) {
                if (!Objects.equals(System.getProperty("java.vendor"), "The Android Project")) {
                    valueOf = null;
                } else {
                    valueOf = Integer.valueOf(Build.VERSION.SDK_INT);
                }
                valueOf.getClass();
            }
            Provider a2 = zzhhf.a();
            if (a2 != null) {
                return zzhux.c(zzhtaVar, a2);
            }
            throw new NoSuchProviderException("RSA-PKCS1.5 using Conscrypt is not supported.");
        } catch (NoSuchProviderException unused) {
            KeyFactory keyFactory = (KeyFactory) zzhwc.g.f8846a.zza("RSA");
            BigInteger bigInteger = zzhtaVar.b;
            zzhsw zzhswVar = zzhtaVar.f8754a;
            RSAPublicKey rSAPublicKey = (RSAPublicKey) keyFactory.generatePublic(new RSAPublicKeySpec(bigInteger, zzhswVar.b));
            zzhwl zzhwlVar = (zzhwl) f8857c.a(zzhswVar.d);
            byte[] b2 = zzhtaVar.f8755c.b();
            if (zzhswVar.f8746c.equals(zzhsv.d)) {
                bArr = b;
            } else {
                bArr = f8856a;
            }
            return new zzhwt(rSAPublicKey, zzhwlVar, b2, bArr);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhaq
    public final void a(byte[] bArr, byte[] bArr2) {
        throw null;
    }
}
