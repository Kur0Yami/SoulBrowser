package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;

/* loaded from: classes.dex */
public final class zzhwz {
    public static String a(zzhwl zzhwlVar) {
        int ordinal = zzhwlVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal != 2) {
                    if (ordinal != 3) {
                        if (ordinal == 4) {
                            return "SHA-512";
                        }
                        throw new GeneralSecurityException("Unsupported hash ".concat(zzhwlVar.toString()));
                    }
                    return "SHA-384";
                }
                return "SHA-256";
            }
            return "SHA-224";
        }
        return "SHA-1";
    }
}
