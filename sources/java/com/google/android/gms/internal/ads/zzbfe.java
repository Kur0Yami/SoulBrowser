package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbfe implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzcdt f4607a;
    public final /* synthetic */ zzbff b;

    public zzbfe(zzbff zzbffVar, zzcdt zzcdtVar) {
        this.f4607a = zzcdtVar;
        this.b = zzbffVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        synchronized (this.b.f4609c) {
            this.f4607a.b(new RuntimeException("Connection failed."));
        }
    }
}
