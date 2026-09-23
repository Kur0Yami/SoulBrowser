package com.google.android.gms.internal.ads;

import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.internal.BaseGmsClient;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbeq implements BaseGmsClient.BaseOnConnectionFailedListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzber f4596a;

    public zzbeq(zzber zzberVar) {
        this.f4596a = zzberVar;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient.BaseOnConnectionFailedListener
    public final void onConnectionFailed(ConnectionResult connectionResult) {
        zzber zzberVar = this.f4596a;
        synchronized (zzberVar.f4598c) {
            try {
                zzberVar.f = null;
                if (zzberVar.d != null) {
                    zzberVar.d = null;
                }
                zzberVar.f4598c.notifyAll();
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
