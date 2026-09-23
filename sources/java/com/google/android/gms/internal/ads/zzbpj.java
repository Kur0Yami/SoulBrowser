package com.google.android.gms.internal.ads;

import android.os.Bundle;
import android.os.DeadObjectException;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbpj implements BaseGmsClient.BaseConnectionCallbacks {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcdt f4817a;
    public final /* synthetic */ zzbpl b;

    public zzbpj(zzbpl zzbplVar, zzcdt zzcdtVar) {
        this.f4817a = zzcdtVar;
        this.b = zzbplVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnected(Bundle bundle) {
        try {
            this.f4817a.a((zzbpf) this.b.f4819a.getService());
        } catch (DeadObjectException e) {
            this.f4817a.b(e);
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseConnectionCallbacks
    public final void onConnectionSuspended(int i) {
        this.f4817a.b(new RuntimeException(androidx.work.impl.workers.a.r(i, "onConnectionSuspended: ", new StringBuilder(String.valueOf(i).length() + 23))));
    }
}
