package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzgay {
    public static byte[] a(String str, boolean z) {
        zzgvy zzgvyVar;
        if (z) {
            zzgvx zzgvxVar = (zzgvx) zzgvy.b;
            Character ch = zzgvxVar.e;
            zzgvyVar = zzgvxVar;
            if (ch != null) {
                zzgvyVar = zzgvxVar.i(zzgvxVar.d, null);
            }
        } else {
            zzgvyVar = zzgvy.f8268a;
        }
        byte[] h = zzgvyVar.h(str);
        if (h.length == 0 && str.length() > 0) {
            throw new IllegalArgumentException("Unable to decode ".concat(str));
        }
        return h;
    }
}
