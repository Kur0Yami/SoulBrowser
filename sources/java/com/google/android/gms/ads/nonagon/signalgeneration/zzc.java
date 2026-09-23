package com.google.android.gms.ads.nonagon.signalgeneration;

import android.content.pm.PackageInfo;
import com.google.android.gms.internal.ads.zzclp;
import com.google.android.gms.internal.ads.zzijg;
import com.google.android.gms.internal.ads.zzijp;
import java.util.concurrent.ScheduledExecutorService;

/* loaded from: classes.dex */
public final class zzc implements zzijg {

    /* renamed from: a, reason: collision with root package name */
    public final zzijp f3271a;
    public final zzijp b;

    /* renamed from: c, reason: collision with root package name */
    public final zzijp f3272c;
    public final zzijp d;
    public final zzijp e;

    public zzc(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4, zzijp zzijpVar5) {
        this.f3271a = zzijpVar;
        this.b = zzijpVar2;
        this.f3272c = zzijpVar3;
        this.d = zzijpVar4;
        this.e = zzijpVar5;
    }

    public static zzc zza(zzijp zzijpVar, zzijp zzijpVar2, zzijp zzijpVar3, zzijp zzijpVar4, zzijp zzijpVar5) {
        return new zzc(zzijpVar, zzijpVar2, zzijpVar3, zzijpVar4, zzijpVar5);
    }

    @Override // com.google.android.gms.internal.ads.zzijv
    public final /* bridge */ /* synthetic */ Object zzb() {
        return new zzb(((zzclp) this.f3271a).a(), ((Long) this.b.zzb()).longValue(), (PackageInfo) this.f3272c.zzb(), (zzd) this.d.zzb(), (ScheduledExecutorService) this.e.zzb());
    }
}
