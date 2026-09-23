package com.google.android.gms.internal.ads;

import java.security.NoSuchAlgorithmException;
import java.security.spec.ECParameterSpec;
import kotlin.jvm.internal.ByteCompanionObject;

/* loaded from: classes.dex */
public final class zzhvw {
    public static ECParameterSpec a(zzhvu zzhvuVar) {
        int ordinal = zzhvuVar.ordinal();
        if (ordinal != 0) {
            if (ordinal != 1) {
                if (ordinal == 2) {
                    return zzhhq.f8559c;
                }
                throw new NoSuchAlgorithmException("curve not implemented:".concat(zzhvuVar.toString()));
            }
            return zzhhq.b;
        }
        return zzhhq.f8558a;
    }

    public static byte[] b(byte[] bArr) {
        int length;
        int i = 0;
        int i2 = 0;
        while (true) {
            length = bArr.length;
            if (i2 >= length || bArr[i2] != 0) {
                break;
            }
            i2++;
        }
        if (i2 == length) {
            i2 = length - 1;
        }
        if ((bArr[i2] & ByteCompanionObject.MIN_VALUE) == 128) {
            i = 1;
        }
        int i3 = length - i2;
        byte[] bArr2 = new byte[i3 + i];
        System.arraycopy(bArr, i2, bArr2, i, i3);
        return bArr2;
    }
}
