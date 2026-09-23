package com.google.android.gms.internal.ads;

import java.io.IOException;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhat {
    public static zzhan a(byte[] bArr) {
        try {
            zziab zziabVar = zziab.b;
            int i = zzhyy.f8889a;
            zzhpd G = zzhpd.G(bArr, zziab.f8905c);
            zzhje zzhjeVar = zzhje.b;
            zzhxc b = zzhkl.b(G.D());
            zzhka zzhkaVar = new zzhka(G, b);
            zzhki zzhkiVar = (zzhki) zzhjeVar.f8591a.get();
            zzhkiVar.getClass();
            if (!zzhkiVar.d.containsKey(new zzhkg(zzhka.class, b))) {
                return new zzhin(zzhkaVar);
            }
            return zzhjeVar.g(zzhkaVar);
        } catch (IOException e) {
            throw new GeneralSecurityException("Failed to parse proto", e);
        }
    }
}
