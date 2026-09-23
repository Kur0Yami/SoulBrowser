package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.NoSuchAlgorithmException;
import java.security.Provider;
import javax.crypto.Mac;
import javax.crypto.spec.SecretKeySpec;

/* loaded from: classes.dex */
public final class zzhmc implements zzhkv {
    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzhmc] */
    public static zzhmc a(zzhkn zzhknVar, Provider provider) {
        ?? obj = new Object();
        if (zzhhb.a(1)) {
            try {
                Mac.getInstance("AESCMAC", provider);
                zzhknVar.f8621c.b();
                new SecretKeySpec(zzhknVar.b.f8865a.b(), "AES");
                return obj;
            } catch (NoSuchAlgorithmException e) {
                throw new GeneralSecurityException("AES-CMAC not available.", e);
            }
        }
        throw new GeneralSecurityException("Cannot use AES-CMAC in FIPS-mode.");
    }
}
