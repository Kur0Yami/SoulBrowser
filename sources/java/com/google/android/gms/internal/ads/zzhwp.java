package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.security.Provider;
import javax.crypto.Mac;

/* loaded from: classes.dex */
public final class zzhwp implements zzhmn {
    public static zzhmn b(zzhml zzhmlVar) {
        zzhxe zzhxeVar = zzhmlVar.b;
        zzhmr zzhmrVar = new zzhmr(zzhxeVar.f8865a.b());
        try {
            Provider a2 = zzhhf.a();
            if (a2 != null) {
                Mac.getInstance("AESCMAC", a2);
                return new zzhwo(zzhmrVar, new zzhms(zzhxeVar.f8865a.b(), a2));
            }
            throw new GeneralSecurityException("Conscrypt not available");
        } catch (GeneralSecurityException unused) {
            return zzhmrVar;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzhmn
    public final byte[] a(byte[] bArr, int i) {
        throw null;
    }
}
