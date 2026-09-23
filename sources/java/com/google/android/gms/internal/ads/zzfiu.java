package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzfiu implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdir f7398a;
    public final /* synthetic */ zzcra b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzfpi f7399c;
    public final /* synthetic */ zzehu d;

    public /* synthetic */ zzfiu(zzdir zzdirVar, zzcra zzcraVar, zzfpi zzfpiVar, zzehu zzehuVar) {
        this.f7398a = zzdirVar;
        this.b = zzcraVar;
        this.f7399c = zzfpiVar;
        this.d = zzehuVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        zzbnm.b(map, this.f7398a);
        String str = (String) map.get("u");
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("URL missing from click GMSG.");
        } else {
            ListenableFuture a2 = zzbnm.a(zzcirVar, str);
            zzfis zzfisVar = new zzfis(zzcirVar, this.b, this.f7399c, this.d);
            a2.k(new zzgyk(a2, zzfisVar), zzcdo.f5068a);
        }
    }
}
