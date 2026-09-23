package com.google.android.gms.internal.ads;

import java.util.HashMap;

/* loaded from: classes.dex */
final class zzcgu implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ String f5139c;
    public final /* synthetic */ String f;
    public final /* synthetic */ int g;
    public final /* synthetic */ zzcgx h;

    public zzcgu(zzcgx zzcgxVar, String str, String str2, int i) {
        this.f5139c = str;
        this.f = str2;
        this.g = i;
        this.h = zzcgxVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        HashMap hashMap = new HashMap();
        hashMap.put("event", "precacheComplete");
        hashMap.put("src", this.f5139c);
        hashMap.put("cachedSrc", this.f);
        hashMap.put("totalBytes", Integer.toString(this.g));
        this.h.q(hashMap);
    }
}
