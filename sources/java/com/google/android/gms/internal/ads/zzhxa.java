package com.google.android.gms.internal.ads;

import android.support.v4.media.session.PlaybackStateCompat;
import java.math.BigInteger;
import java.security.GeneralSecurityException;
import java.security.InvalidAlgorithmParameterException;

/* loaded from: classes.dex */
public final class zzhxa {
    public static void a(int i) {
        if (i != 16 && i != 32) {
            throw new InvalidAlgorithmParameterException(String.format("invalid key size %d; only 128-bit and 256-bit AES keys are supported", Integer.valueOf(i * 8)));
        }
    }

    public static void b(zzhwl zzhwlVar) {
        int ordinal = zzhwlVar.ordinal();
        if (ordinal != 2 && ordinal != 3 && ordinal != 4) {
            throw new GeneralSecurityException("Unsupported hash: ".concat(String.valueOf(zzhwlVar.name())));
        }
    }

    public static void c(int i) {
        if (i >= 2048) {
            if (zzhhc.a() && i != 2048 && i != 3072) {
                throw new GeneralSecurityException(String.format("Modulus size is %d; only modulus size of 2048- or 3072-bit is supported in FIPS mode.", Integer.valueOf(i)));
            }
            return;
        }
        throw new GeneralSecurityException(String.format("Modulus size is %d; only modulus size >= 2048-bit is supported", Integer.valueOf(i)));
    }

    public static void d(BigInteger bigInteger) {
        if (bigInteger.testBit(0)) {
            if (bigInteger.compareTo(BigInteger.valueOf(PlaybackStateCompat.ACTION_PREPARE_FROM_SEARCH)) > 0) {
                return;
            } else {
                throw new GeneralSecurityException("Public exponent must be greater than 65536.");
            }
        }
        throw new GeneralSecurityException("Public exponent must be odd.");
    }
}
