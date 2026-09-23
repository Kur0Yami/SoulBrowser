package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
final class zzcgv implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5140c;
    public final /* synthetic */ String f;
    public final /* synthetic */ long g;
    public final /* synthetic */ zzcgx h;

    public zzcgv(zzcgx zzcgxVar, String str, String str2, long j) {
        this.f5140c = str;
        this.f = str2;
        this.g = j;
        this.h = zzcgxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f5140c);
        hashMap.put("cachedSrc", this.f);
        hashMap.put("totalDuration", Long.toString(this.g));
        this.h.q(hashMap);
    }
}
