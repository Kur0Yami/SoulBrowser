package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzazk extends zzaxi {

    /* renamed from: a, reason: collision with root package name */
    public final Long f4499a;
    public final Boolean b;

    /* renamed from: c, reason: collision with root package name */
    public final Boolean f4500c;

    public zzazk(String str) {
        HashMap b = zzaxi.b(str);
        if (b != null) {
            this.f4499a = (Long) b.get(0);
            this.b = (Boolean) b.get(1);
            this.f4500c = (Boolean) b.get(2);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzaxi
    public final HashMap a() {
        HashMap hashMap = new HashMap();
        hashMap.put(0, this.f4499a);
        hashMap.put(1, this.b);
        hashMap.put(2, this.f4500c);
        return hashMap;
    }
}
