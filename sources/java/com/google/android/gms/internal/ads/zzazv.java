package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzazv extends zzaxi {

    /* renamed from: a, reason: collision with root package name */
    public final Long f4514a;
    public final Long b;

    /* renamed from: c, reason: collision with root package name */
    public final Long f4515c;
    public final Long d;
    public final Long e;
    public final Long f;
    public final Long g;
    public final Long h;
    public final Long i;
    public final Long j;
    public final Long k;

    public zzazv(String str) {
        HashMap b = zzaxi.b(str);
        if (b != null) {
            this.f4514a = (Long) b.get(0);
            this.b = (Long) b.get(1);
            this.f4515c = (Long) b.get(2);
            this.d = (Long) b.get(3);
            this.e = (Long) b.get(4);
            this.f = (Long) b.get(5);
            this.g = (Long) b.get(6);
            this.h = (Long) b.get(7);
            this.i = (Long) b.get(8);
            this.j = (Long) b.get(9);
            this.k = (Long) b.get(10);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxi
    public final HashMap a() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.f4514a);
        hashMap.put(1, this.b);
        hashMap.put(2, this.f4515c);
        hashMap.put(3, this.d);
        hashMap.put(4, this.e);
        hashMap.put(5, this.f);
        hashMap.put(6, this.g);
        hashMap.put(7, this.h);
        hashMap.put(8, this.i);
        hashMap.put(9, this.j);
        hashMap.put(10, this.k);
        return hashMap;
    }
}
