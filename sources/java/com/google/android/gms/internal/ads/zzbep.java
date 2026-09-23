package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbep implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzber f4595a;

    public zzbep(zzber zzberVar) {
        this.f4595a = zzberVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        zzber zzberVar = this.f4595a;
        synchronized (zzberVar.f4598c) {
            try {
                zzbeu zzbeuVar = zzberVar.d;
                if (zzbeuVar != null) {
                    zzberVar.f = (zzbex) zzbeuVar.getService();
                }
            } catch (DeadObjectException e) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzg("Unable to obtain a cache service instance.", e);
                this.f4595a.d();
            }
            this.f4595a.f4598c.notifyAll();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        zzber zzberVar = this.f4595a;
        synchronized (zzberVar.f4598c) {
            zzberVar.f = null;
            zzberVar.f4598c.notifyAll();
        }
    }
}
