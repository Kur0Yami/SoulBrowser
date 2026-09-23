package com.google.android.gms.internal.fido;

import kotlin.UByte;

/* loaded from: classes3.dex */
public abstract class zzft {

    /* renamed from: c, reason: collision with root package name */
    public static final char[] f10309c = "0123456789abcdef".toCharArray();

    public abstract int a();

    public abstract int b();

    public abstract boolean c(zzft zzftVar);

    public abstract byte[] d();

    public byte[] e() {
        throw null;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzft) {
            zzft zzftVar = (zzft) obj;
            if (b() == zzftVar.b() && c(zzftVar)) {
                return true;
            }
            return false;
        }
        return false;
    }

    public final int hashCode() {
        if (b() >= 32) {
            return a();
        }
        byte[] e = e();
        int i = e[0] & UByte.MAX_VALUE;
        for (int i2 = 1; i2 < e.length; i2++) {
            i |= (e[i2] & UByte.MAX_VALUE) << (i2 * 8);
        }
        return i;
    }

    public final String toString() {
        byte[] e = e();
        int length = e.length;
        StringBuilder sb = new StringBuilder(length + length);
        for (byte b : e) {
            char[] cArr = f10309c;
            sb.append(cArr[(b >> 4) & 15]);
            sb.append(cArr[b & 15]);
        }
        return sb.toString();
    }
}
