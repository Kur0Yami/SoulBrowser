package com.google.android.gms.internal.ads;

import java.math.BigInteger;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class zzcdf implements zzbde {
    public final com.google.android.gms.ads.internal.util.zzj f;
    public final zzcdd g;
    public final zzcdc h;

    /* renamed from: c, reason: collision with root package name */
    public final Object f5060c = new Object();
    public final HashSet i = new HashSet();
    public final HashSet j = new HashSet();
    public boolean k = false;

    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.ads.zzcdd, java.lang.Object] */
    public zzcdf(String str, com.google.android.gms.ads.internal.util.zzj zzjVar) {
        this.h = new zzcdc(str, zzjVar);
        this.f = zzjVar;
        ?? obj = new Object();
        obj.f5059a = BigInteger.ONE;
        obj.b = "0";
        this.g = obj;
    }

    public final void a(zzccu zzccuVar) {
        synchronized (this.f5060c) {
            this.i.add(zzccuVar);
        }
    }

    public final void b(HashSet hashSet) {
        synchronized (this.f5060c) {
            this.i.addAll(hashSet);
        }
    }

    public final void c() {
        synchronized (this.f5060c) {
            this.h.a();
        }
    }

    public final void d() {
        synchronized (this.f5060c) {
            this.h.b();
        }
    }

    public final void e(com.google.android.gms.ads.internal.client.zzm zzmVar, long j) {
        synchronized (this.f5060c) {
            this.h.e(zzmVar, j);
        }
    }

    public final void f() {
        synchronized (this.f5060c) {
            this.h.g();
        }
    }

    public final void g() {
        synchronized (this.f5060c) {
            this.h.g();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbde
    public final void zza(boolean z) {
        long currentTimeMillis = com.google.android.gms.ads.internal.zzt.zzk().currentTimeMillis();
        com.google.android.gms.ads.internal.util.zzj zzjVar = this.f;
        zzcdc zzcdcVar = this.h;
        if (z) {
            if (currentTimeMillis - zzjVar.zzm() > ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.z1)).longValue()) {
                zzcdcVar.d = -1;
            } else {
                zzcdcVar.d = zzjVar.zzo();
            }
            this.k = true;
            return;
        }
        zzjVar.zzl(currentTimeMillis);
        zzjVar.zzn(zzcdcVar.d);
    }
}
