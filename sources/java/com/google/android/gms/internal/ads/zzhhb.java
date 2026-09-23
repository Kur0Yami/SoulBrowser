package com.google.android.gms.internal.ads;

import java.util.logging.Level;

/* loaded from: classes.dex */
public final class zzhhb {
    public static boolean a(int i) {
        Boolean bool;
        if (i - 1 != 0) {
            if (zzhhc.a()) {
                try {
                    bool = (Boolean) Class.forName("org.conscrypt.Conscrypt").getMethod("isBoringSslFIPSBuild", null).invoke(null, null);
                } catch (Exception unused) {
                    zzhhc.f8543a.logp(Level.INFO, "com.google.crypto.tink.config.internal.TinkFipsUtil", "checkConscryptIsAvailableAndUsesFipsBoringSsl", "Conscrypt is not available or does not support checking for FIPS build.");
                    bool = Boolean.FALSE;
                }
                if (bool.booleanValue()) {
                    return true;
                }
                return false;
            }
            return true;
        }
        if (!zzhhc.a()) {
            return true;
        }
        return false;
    }
}
