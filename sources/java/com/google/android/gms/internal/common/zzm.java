package com.google.android.gms.internal.common;

import android.support.v4.media.a;

/* loaded from: classes.dex */
final class zzm extends zzl {

    /* renamed from: a, reason: collision with root package name */
    public final char f9915a;

    public zzm(char c2) {
        this.f9915a = c2;
    }

    public final String toString() {
        char[] cArr = new char[6];
        cArr[0] = '\\';
        cArr[1] = 'u';
        cArr[2] = 0;
        cArr[3] = 0;
        cArr[4] = 0;
        cArr[5] = 0;
        int i = this.f9915a;
        for (int i2 = 0; i2 < 4; i2++) {
            cArr[5 - i2] = "0123456789ABCDEF".charAt(i & 15);
            i >>= 4;
        }
        String copyValueOf = String.copyValueOf(cArr);
        return a.q(new StringBuilder(String.valueOf(copyValueOf).length() + 18), "CharMatcher.is('", copyValueOf, "')");
    }
}
