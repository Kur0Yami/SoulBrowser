package com.google.android.gms.internal.ads;

import java.util.HashMap;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdxe {

    /* renamed from: a, reason: collision with root package name */
    public final zzdxj f6227a;
    public final Executor b;

    /* renamed from: c, reason: collision with root package name */
    public final HashMap f6228c;

    public zzdxe(zzdxj zzdxjVar, Executor executor) {
        this.f6227a = zzdxjVar;
        zzdxjVar.getClass();
        this.f6228c = new HashMap(zzdxjVar.f6237a);
        this.b = executor;
    }

    public final zzdxd a() {
        zzdxd zzdxdVar = new zzdxd(this);
        zzdxdVar.f6226a.putAll(this.f6228c);
        return zzdxdVar;
    }

    public final void b() {
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Wc)).booleanValue()) {
            return;
        }
        zzdxd a2 = a();
        a2.b("action", "pecr");
        a2.c();
    }
}
