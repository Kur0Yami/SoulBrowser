package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzfr {

    /* renamed from: a, reason: collision with root package name */
    public final String f7585a;

    public zzfr(String str) {
        this.f7585a = str;
    }

    public static zzfr a(zzer zzerVar) {
        String str;
        String str2;
        zzerVar.G(2);
        int K = zzerVar.K();
        int i = K >> 1;
        int i2 = K & 1;
        int K2 = zzerVar.K() >> 3;
        if (i != 4 && i != 5 && i != 7 && i != 8) {
            if (i == 9) {
                str = "dvav";
            } else if (i == 10) {
                str = "dav1";
            } else {
                return null;
            }
        } else {
            str = "dvhe";
        }
        int i3 = K2 | (i2 << 5);
        String str3 = ".";
        if (i >= 10) {
            str2 = ".";
        } else {
            str2 = ".0";
        }
        int length = str2.length() + 4;
        int length2 = String.valueOf(i).length();
        int length3 = String.valueOf(i3).length();
        if (i3 < 10) {
            str3 = ".0";
        }
        StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.d(length + length2, length3, str3));
        sb.append(str);
        sb.append(str2);
        sb.append(i);
        sb.append(str3);
        sb.append(i3);
        return new zzfr(sb.toString());
    }
}
