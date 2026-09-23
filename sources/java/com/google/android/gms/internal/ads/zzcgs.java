package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzcgs implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5137c;
    public final /* synthetic */ String f;
    public final /* synthetic */ long g;
    public final /* synthetic */ long h;
    public final /* synthetic */ long i;
    public final /* synthetic */ long j;
    public final /* synthetic */ long k;
    public final /* synthetic */ boolean l;
    public final /* synthetic */ int m;
    public final /* synthetic */ int n;
    public final /* synthetic */ zzcgx o;

    public zzcgs(zzcgx zzcgxVar, String str, String str2, long j, long j2, long j3, long j4, long j5, boolean z, int i, int i2) {
        this.f5137c = str;
        this.f = str2;
        this.g = j;
        this.h = j2;
        this.i = j3;
        this.j = j4;
        this.k = j5;
        this.l = z;
        this.m = i;
        this.n = i2;
        this.o = zzcgxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        String str;
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f5137c);
        hashMap.put("cachedSrc", this.f);
        hashMap.put("bufferedDuration", Long.toString(this.g));
        hashMap.put("totalDuration", Long.toString(this.h));
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u2)).booleanValue()) {
            hashMap.put("qoeLoadedBytes", Long.toString(this.i));
            hashMap.put("qoeCachedBytes", Long.toString(this.j));
            hashMap.put("totalBytes", Long.toString(this.k));
            hashMap.put("reportTime", Long.toString(com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis()));
        }
        if (true != this.l) {
            str = "0";
        } else {
            str = "1";
        }
        hashMap.put("cacheReady", str);
        hashMap.put("playerCount", Integer.toString(this.m));
        hashMap.put("playerPreparedCount", Integer.toString(this.n));
        this.o.q(hashMap);
    }
}
