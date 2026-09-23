package com.google.android.gms.internal.ads;

import android.view.View;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdmy implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ View f5925a;
    public final /* synthetic */ zzdnh b;

    public zzdmy(zzdnh zzdnhVar, View view) {
        this.f5925a = view;
        this.b = zzdnhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        View view;
        zzejb zzejbVar = (zzejb) obj;
        zzdnh zzdnhVar = this.b;
        zzcir r = zzdnhVar.m.r();
        if (zzdnhVar.p.c() && zzejbVar != null && r != null && (view = this.f5925a) != null) {
            com.google.android.gms.ads.internal.zzt.zzu().e(zzejbVar.f6553a, view);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.m6)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzh().g("omid native display exp", th);
        }
    }
}
