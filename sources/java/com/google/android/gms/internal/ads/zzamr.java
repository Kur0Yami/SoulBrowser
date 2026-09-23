package com.google.android.gms.internal.ads;

import android.graphics.Color;

/* loaded from: classes.dex */
final class zzamr {

    /* renamed from: a, reason: collision with root package name */
    public final String f4206a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final Integer f4207c;
    public final Integer d;
    public final float e;
    public final boolean f;
    public final boolean g;
    public final boolean h;
    public final boolean i;
    public final int j;

    public zzamr(String str, int i, Integer num, Integer num2, float f, boolean z, boolean z2, boolean z3, boolean z4, int i2) {
        this.f4206a = str;
        this.b = i;
        this.f4207c = num;
        this.d = num2;
        this.e = f;
        this.f = z;
        this.g = z2;
        this.h = z3;
        this.i = z4;
        this.j = i2;
    }

    public static Integer a(String str) {
        long parseLong;
        boolean z;
        try {
            if (str.startsWith("&H")) {
                parseLong = Long.parseLong(str.substring(2), 16);
            } else {
                parseLong = Long.parseLong(str);
            }
            if (parseLong <= 4294967295L) {
                z = true;
            } else {
                z = false;
            }
            zzgqa.a(z);
            int a2 = zzgwx.a(((parseLong >> 24) & 255) ^ 255);
            int a3 = zzgwx.a((parseLong >> 16) & 255);
            return Integer.valueOf(Color.argb(a2, zzgwx.a(parseLong & 255), zzgwx.a((parseLong >> 8) & 255), a3));
        } catch (IllegalArgumentException e) {
            zzee.d("SsaStyle", android.support.v4.media.a.q(new StringBuilder(String.valueOf(str).length() + 36), "Failed to parse color expression: '", str, "'"), e);
            return null;
        }
    }

    public static boolean b(String str) {
        try {
            int parseInt = Integer.parseInt(str);
            if (parseInt != 1 && parseInt != -1) {
                return false;
            }
            return true;
        } catch (NumberFormatException e) {
            zzee.d("SsaStyle", android.support.v4.media.a.q(new StringBuilder(String.valueOf(str).length() + 33), "Failed to parse boolean value: '", str, "'"), e);
            return false;
        }
    }
}
