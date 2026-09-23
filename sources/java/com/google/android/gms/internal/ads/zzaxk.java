package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzaxk extends zzaxi {

    /* renamed from: a, reason: collision with root package name */
    public String f4449a;
    public final long b;

    /* renamed from: c, reason: collision with root package name */
    public final String f4450c;
    public final String d;
    public final String e;

    public zzaxk(String str) {
        String str2;
        String str3;
        String str4;
        this.f4449a = "E";
        this.b = -1L;
        this.f4450c = "E";
        this.d = "E";
        this.e = "E";
        HashMap b = zzaxi.b(str);
        if (b != null) {
            if (b.get(0) == null) {
                str2 = "E";
            } else {
                str2 = (String) b.get(0);
            }
            this.f4449a = str2;
            this.b = b.get(1) != null ? ((Long) b.get(1)).longValue() : -1L;
            if (b.get(2) == null) {
                str3 = "E";
            } else {
                str3 = (String) b.get(2);
            }
            this.f4450c = str3;
            if (b.get(3) == null) {
                str4 = "E";
            } else {
                str4 = (String) b.get(3);
            }
            this.d = str4;
            this.e = b.get(4) != null ? (String) b.get(4) : "E";
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxi
    public final HashMap a() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.f4449a);
        hashMap.put(4, this.e);
        hashMap.put(3, this.d);
        hashMap.put(2, this.f4450c);
        hashMap.put(1, Long.valueOf(this.b));
        return hashMap;
    }
}
