package com.google.android.gms.internal.ads;

import android.content.Context;

/* loaded from: classes.dex */
final class zzenx implements zzdlh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzejj f6738a;
    public final /* synthetic */ zzfhr b;

    public zzenx(zzenz zzenzVar, zzejj zzejjVar, zzfhr zzfhrVar) {
        this.f6738a = zzejjVar;
        this.b = zzfhrVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final void a(boolean z, Context context, zzdax zzdaxVar) {
        try {
            zzfji zzfjiVar = (zzfji) this.f6738a.b;
            zzfjiVar.b(z);
            try {
                zzfjiVar.f7412a.zzp();
            } catch (Throwable th) {
                throw new Exception(th);
            }
        } catch (zzfir e) {
            int i = com.google.android.gms.ads.internal.util.zze.zza;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Cannot show rewarded video.", e);
            throw new Exception(e.getCause());
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdlh
    public final zzfhr zzb() {
        return this.b;
    }
}
