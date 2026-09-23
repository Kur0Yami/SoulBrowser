package com.google.android.gms.internal.ads;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhas {
    public static zzhai a(String str) {
        try {
            try {
                byte[] h = new zzgzw(new ByteArrayInputStream(str.getBytes(zzgzw.b))).a().h();
                try {
                    zziab zziabVar = zziab.b;
                    int i = zzhyy.f8889a;
                    zzhpj H = zzhpj.H(h, zziab.f8905c);
                    for (zzhpi zzhpiVar : H.E()) {
                        if (zzhpiVar.E().F() == zzhoz.UNKNOWN_KEYMATERIAL || zzhpiVar.E().F() == zzhoz.SYMMETRIC || zzhpiVar.E().F() == zzhoz.ASYMMETRIC_PRIVATE) {
                            throw new GeneralSecurityException("keyset contains key material of type " + zzhpiVar.E().F().name() + " for type url " + zzhpiVar.E().D());
                        }
                    }
                    return zzhai.a(H);
                } catch (zzibg unused) {
                    throw new GeneralSecurityException("invalid keyset");
                }
            } catch (zzibg unused2) {
                throw new GeneralSecurityException("invalid keyset");
            }
        } catch (IOException unused3) {
            throw new GeneralSecurityException("Parse keyset failed");
        }
    }
}
