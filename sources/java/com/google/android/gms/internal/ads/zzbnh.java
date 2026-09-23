package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final /* synthetic */ class zzbnh implements zzbnn {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdir f4776a;
    public final /* synthetic */ zzcra b;

    public /* synthetic */ zzbnh(zzdir zzdirVar, zzcra zzcraVar) {
        this.f4776a = zzdirVar;
        this.b = zzcraVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbnn
    public final void a(Map map, Object obj) {
        zzcir zzcirVar = (zzcir) obj;
        zzbnm.b(map, this.f4776a);
        final String str = (String) map.get("u");
        if (str == null) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzi("URL missing from click GMSG.");
            return;
        }
        zzgye r = zzgye.r(zzbnm.a(zzcirVar, str));
        final zzcra zzcraVar = this.b;
        zzgxu zzgxuVar = new zzgxu() { // from class: com.google.android.gms.internal.ads.zzbnk
            @Override // com.google.android.gms.internal.ads.zzgxu
            public final /* synthetic */ ListenableFuture zza(Object obj2) {
                zzcra zzcraVar2;
                String str2 = (String) obj2;
                zzbnn zzbnnVar = zzbnm.f4781a;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.tb)).booleanValue() && (zzcraVar2 = zzcra.this) != null && zzcra.b(str)) {
                    return zzcraVar2.a(str2, com.google.android.gms.ads.internal.client.zzbb.zzh());
                }
                return zzgym.a(str2);
            }
        };
        zzgyw zzgywVar = zzcdo.f5068a;
        zzgye zzgyeVar = (zzgye) zzgym.h(r, zzgxuVar, zzgywVar);
        zzgyeVar.k(new zzgyk(zzgyeVar, new zzbmr(zzcirVar)), zzgywVar);
    }
}
