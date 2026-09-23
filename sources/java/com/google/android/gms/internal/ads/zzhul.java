package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.KeyFactory;
import java.security.NoSuchProviderException;
import java.security.Provider;
import java.security.spec.PKCS8EncodedKeySpec;

/* loaded from: classes.dex */
public final class zzhul implements zzhap {

    /* renamed from: a, reason: collision with root package name */
    public static final byte[] f8800a = {48, 46, 2, 1, 0, 48, 5, 6, 3, 43, 101, 112, 4, 34, 4, 32};

    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.ads.zzhul, java.lang.Object] */
    public static zzhul a(zzhrp zzhrpVar) {
        Provider a2 = zzhhf.a();
        if (a2 != null) {
            zzhxe zzhxeVar = zzhrpVar.b;
            zzhrv zzhrvVar = zzhrpVar.f8708a;
            byte[] b = zzhxeVar.f8865a.b();
            zzhrvVar.f8716c.b();
            ?? obj = new Object();
            if (zzhhb.a(1)) {
                if (b.length == 32) {
                    KeyFactory.getInstance("Ed25519", a2).generatePrivate(new PKCS8EncodedKeySpec(zzhvp.a(f8800a, b)));
                    return obj;
                }
                throw new IllegalArgumentException("Given private key's length is not 32");
            }
            throw new GeneralSecurityException("Can not use Ed25519 in FIPS-mode.");
        }
        throw new NoSuchProviderException("Ed25519SignJce requires the Conscrypt provider.");
    }
}
