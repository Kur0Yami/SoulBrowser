package com.google.android.gms.internal.ads;

import java.util.regex.Matcher;

/* loaded from: classes.dex */
final class zzecv implements zzgyj {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzecy f6380a;

    public zzecv(zzecy zzecyVar) {
        this.f6380a = zzecyVar;
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void a(Object obj) {
        zzfic zzficVar = (zzfic) obj;
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a7)).booleanValue()) {
            zzecy zzecyVar = this.f6380a;
            zzfhu zzfhuVar = zzficVar.b.b;
            zzecyVar.e.c(zzfhuVar.f);
            zzegr zzegrVar = zzecyVar.e;
            long j = zzfhuVar.g;
            synchronized (zzegrVar.h) {
                zzegrVar.f6487c = j;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzgyj
    public final void b(Throwable th) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a7)).booleanValue()) {
            Matcher matcher = zzecy.h.matcher(th.getMessage());
            if (matcher.matches()) {
                this.f6380a.e.c(Integer.parseInt(matcher.group(1)));
            }
        }
    }
}
