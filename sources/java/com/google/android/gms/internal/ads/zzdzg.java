package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzdzg extends zzbpp {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ Object f6276c;
    public final /* synthetic */ String f;
    public final /* synthetic */ long g;
    public final /* synthetic */ zzfne h;
    public final /* synthetic */ zzcdt i;
    public final /* synthetic */ zzdzp j;

    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public zzdzg(long j, zzcdt zzcdtVar, zzdzp zzdzpVar, zzfne zzfneVar, Object obj, String str) {
        super("com.google.android.gms.ads.internal.initialization.IAdapterInitializationCallback");
        this.f6276c = obj;
        this.f = str;
        this.g = j;
        this.h = zzfneVar;
        this.i = zzcdtVar;
        Objects.requireNonNull(zzdzpVar);
        this.j = zzdzpVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbpq
    public final void zze() {
        synchronized (this.f6276c) {
            zzdzp zzdzpVar = this.j;
            String str = this.f;
            zzdzpVar.d(str, (int) (com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - this.g), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, true);
            zzdzpVar.l.b(str);
            zzdzpVar.o.a(str);
            zzfnr zzfnrVar = zzdzpVar.p;
            zzfne zzfneVar = this.h;
            zzfneVar.zzd(true);
            zzfnrVar.b(zzfneVar.zzm());
            this.i.a(Boolean.TRUE);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbpq
    public final void zzf(String str) {
        synchronized (this.f6276c) {
            zzdzp zzdzpVar = this.j;
            String str2 = this.f;
            zzdzpVar.d(str2, (int) (com.google.android.gms.ads.internal.zzt.zzk().elapsedRealtime() - this.g), str, false);
            zzdzpVar.l.c(str2, "error");
            zzdzpVar.o.b(str2, "error");
            zzfnr zzfnrVar = zzdzpVar.p;
            zzfne zzfneVar = this.h;
            zzfneVar.zzk(str);
            zzfneVar.zzd(false);
            zzfnrVar.b(zzfneVar.zzm());
            this.i.a(Boolean.FALSE);
        }
    }
}
