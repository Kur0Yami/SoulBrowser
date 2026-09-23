package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
final class zzcgt implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5138c;
    public final /* synthetic */ String f;
    public final /* synthetic */ int g;
    public final /* synthetic */ int h;
    public final /* synthetic */ long i;
    public final /* synthetic */ long j;
    public final /* synthetic */ boolean k;
    public final /* synthetic */ int l;
    public final /* synthetic */ int m;
    public final /* synthetic */ zzchd n;

    public zzcgt(zzchd zzchdVar, String str, String str2, int i, int i2, long j, long j2, boolean z, int i3, int i4) {
        this.f5138c = str;
        this.f = str2;
        this.g = i;
        this.h = i2;
        this.i = j;
        this.j = j2;
        this.k = z;
        this.l = i3;
        this.m = i4;
        this.n = zzchdVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f5138c);
        hashMap.put("cachedSrc", this.f);
        hashMap.put("bytesLoaded", Integer.toString(this.g));
        hashMap.put("totalBytes", Integer.toString(this.h));
        hashMap.put("bufferedDuration", Long.toString(this.i));
        hashMap.put("totalDuration", Long.toString(this.j));
        if (true != this.k) {
            str = "0";
        } else {
            str = "1";
        }
        hashMap.put("cacheReady", str);
        hashMap.put("playerCount", Integer.toString(this.l));
        hashMap.put("playerPreparedCount", Integer.toString(this.m));
        this.n.q(hashMap);
    }
}
