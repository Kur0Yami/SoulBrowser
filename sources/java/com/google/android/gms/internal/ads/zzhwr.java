package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;
import java.security.NoSuchAlgorithmException;
import java.util.Arrays;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzhwr implements zzhmn {

    /* renamed from: a, reason: collision with root package name */
    public final ThreadLocal f8850a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final SecretKeySpec f8851c;
    public final int d;

    public zzhwr(String str, SecretKeySpec secretKeySpec) {
        int i;
        zzhwq zzhwqVar = new zzhwq(this);
        this.f8850a = zzhwqVar;
        if (zzhhb.a(2)) {
            this.b = str;
            this.f8851c = secretKeySpec;
            if (secretKeySpec.getEncoded().length >= 16) {
                switch (str.hashCode()) {
                    case -1823053428:
                        if (str.equals("HMACSHA1")) {
                            i = 20;
                            this.d = i;
                            zzhwqVar.get();
                            return;
                        }
                        break;
                    case 392315023:
                        if (str.equals("HMACSHA224")) {
                            i = 28;
                            this.d = i;
                            zzhwqVar.get();
                            return;
                        }
                        break;
                    case 392315118:
                        if (str.equals("HMACSHA256")) {
                            i = 32;
                            this.d = i;
                            zzhwqVar.get();
                            return;
                        }
                        break;
                    case 392316170:
                        if (str.equals("HMACSHA384")) {
                            i = 48;
                            this.d = i;
                            zzhwqVar.get();
                            return;
                        }
                        break;
                    case 392317873:
                        if (str.equals("HMACSHA512")) {
                            i = 64;
                            this.d = i;
                            zzhwqVar.get();
                            return;
                        }
                        break;
                }
                throw new NoSuchAlgorithmException("unknown Hmac algorithm: ".concat(str));
            }
            throw new InvalidAlgorithmParameterException("key size too small, need at least 16 bytes");
        }
        throw new GeneralSecurityException("Can not use HMAC in FIPS-mode, as BoringCrypto module is not available.");
    }

    @Override // com.google.android.gms.internal.ads.zzhmn
    public final byte[] a(byte[] bArr, int i) {
        if (i <= this.d) {
            ThreadLocal threadLocal = this.f8850a;
            ((Mac) threadLocal.get()).update(bArr);
            return Arrays.copyOf(((Mac) threadLocal.get()).doFinal(), i);
        }
        throw new InvalidAlgorithmParameterException("tag size too big");
    }
}
