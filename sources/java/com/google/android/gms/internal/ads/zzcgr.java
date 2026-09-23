package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
final class zzcgr implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5136c;
    public final /* synthetic */ String f;
    public final /* synthetic */ int g;
    public final /* synthetic */ int h;
    public final /* synthetic */ zzcha i;

    public zzcgr(zzcha zzchaVar, String str, String str2, int i, int i2) {
        this.f5136c = str;
        this.f = str2;
        this.g = i;
        this.h = i2;
        this.i = zzchaVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheProgress");
        hashMap.put("src", this.f5136c);
        hashMap.put("cachedSrc", this.f);
        hashMap.put("bytesLoaded", Integer.toString(this.g));
        hashMap.put("totalBytes", Integer.toString(this.h));
        hashMap.put("cacheReady", "0");
        this.i.q(hashMap);
    }
}
