package com.google.android.gms.internal.ads;

import android.text.TextUtils;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzemq {

    /* renamed from: a, reason: collision with root package name */
    public final String f6692a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public int f6693c;
    public long d;
    public final Integer e;

    public zzemq(String str, String str2, int i, long j, Integer num) {
        this.f6692a = str;
        this.b = str2;
        this.f6693c = i;
        this.d = j;
        this.e = num;
    }

    public final String toString() {
        Integer num;
        int i = this.f6693c;
        long j = this.d;
        String str = this.f6692a;
        StringBuilder sb = new StringBuilder(String.valueOf(str).length() + 1 + String.valueOf(i).length() + 1 + String.valueOf(j).length());
        sb.append(str);
        sb.append(".");
        sb.append(i);
        sb.append(".");
        sb.append(j);
        String sb2 = sb.toString();
        String str2 = this.b;
        if (!TextUtils.isEmpty(str2)) {
            sb2 = android.support.v4.media.a.q(new StringBuilder(sb2.length() + 1 + String.valueOf(str2).length()), sb2, ".", str2);
        }
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.g2)).booleanValue() && (num = this.e) != null && !TextUtils.isEmpty(str2)) {
            StringBuilder sb3 = new StringBuilder(sb2.length() + 1 + num.toString().length());
            sb3.append(sb2);
            sb3.append(".");
            sb3.append(num);
            return sb3.toString();
        }
        return sb2;
    }
}
