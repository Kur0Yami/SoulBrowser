package com.google.android.gms.internal.ads;

import android.content.Context;
import java.util.concurrent.atomic.AtomicBoolean;

/* loaded from: classes.dex */
public final class zzcdj {

    /* renamed from: a, reason: collision with root package name */
    public zzgyw f5063a;
    public zzdxe b;

    /* renamed from: c, reason: collision with root package name */
    public Context f5064c;
    public final AtomicBoolean d = new AtomicBoolean(false);
    public final AtomicBoolean e = new AtomicBoolean(false);
    public long f = -1;
    public long g = -1;

    public final void a(zzgyw zzgywVar, zzdxe zzdxeVar, Context context) {
        if (this.d.getAndSet(true)) {
            return;
        }
        this.f5063a = zzgywVar;
        this.b = zzdxeVar;
        this.f = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.gf)).longValue();
        this.g = ((Long) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.hf)).longValue();
        this.f5064c = context;
    }
}
