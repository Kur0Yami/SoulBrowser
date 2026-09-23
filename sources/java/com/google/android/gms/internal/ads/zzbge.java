package com.google.android.gms.internal.ads;

import android.content.SharedPreferences;

/* loaded from: classes.dex */
final class zzbge implements zzbja {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ SharedPreferences f4651a;

    public zzbge(zzbgi zzbgiVar, SharedPreferences sharedPreferences) {
        this.f4651a = sharedPreferences;
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final String a(String str, String str2) {
        return this.f4651a.getString(str, str2);
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final Long b(long j, String str) {
        try {
            return Long.valueOf(this.f4651a.getLong(str, j));
        } catch (ClassCastException unused) {
            return Long.valueOf(r0.getInt(str, (int) j));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final Double c(String str, double d) {
        try {
            return Double.valueOf(r0.getFloat(str, (float) d));
        } catch (ClassCastException unused) {
            return Double.valueOf(this.f4651a.getString(str, String.valueOf(d)));
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbja
    public final Boolean d(String str, boolean z) {
        SharedPreferences sharedPreferences = this.f4651a;
        try {
            return Boolean.valueOf(sharedPreferences.getBoolean(str, z));
        } catch (ClassCastException unused) {
            return Boolean.valueOf(sharedPreferences.getString(str, String.valueOf(z)));
        }
    }
}
