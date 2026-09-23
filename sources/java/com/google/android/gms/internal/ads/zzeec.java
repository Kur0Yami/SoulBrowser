package com.google.android.gms.internal.ads;

import com.google.common.util.concurrent.ListenableFuture;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzeec implements zzeee {

    /* renamed from: a, reason: collision with root package name */
    public final Map f6415a;
    public final zzgyw b;

    /* renamed from: c, reason: collision with root package name */
    public final zzddo f6416c;

    public zzeec(Map map, zzgyw zzgywVar, zzddo zzddoVar) {
        this.f6415a = map;
        this.b = zzgywVar;
        this.f6416c = zzddoVar;
    }

    @Override // com.google.android.gms.internal.ads.zzeee
    public final ListenableFuture a(final zzbza zzbzaVar) {
        this.f6416c.f(zzbzaVar);
        ListenableFuture b = zzgym.b(new zzebr(3));
        for (String str : ((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.u9)).split(",")) {
            final zzijv zzijvVar = (zzijv) this.f6415a.get(str.trim());
            if (zzijvVar != null) {
                b = zzgym.f(b, zzebr.class, new zzgxu() { // from class: com.google.android.gms.internal.ads.zzeeb
                    @Override // com.google.android.gms.internal.ads.zzgxu
                    public final /* synthetic */ ListenableFuture zza(Object obj) {
                        return ((zzeee) zzijv.this.zzb()).a(zzbzaVar);
                    }
                }, this.b);
            }
        }
        b.k(new zzgyk(b, new zzeea(this)), zzcdo.g);
        return b;
    }
}
