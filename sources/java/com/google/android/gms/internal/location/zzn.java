package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
final class zzn extends zzx {
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(zzaz zzazVar) {
        ListenerHolder.ListenerKey createListenerKey = ListenerHolders.createListenerKey(null, "LocationCallback");
        zzy zzyVar = new zzy(this);
        zzav zzavVar = zzazVar.g;
        ((zzh) zzavVar.f10350a).f10361a.checkConnected();
        Preconditions.checkNotNull(createListenerKey, "Invalid null listener key");
        synchronized (zzavVar.e) {
            try {
                zzar zzarVar = (zzar) zzavVar.e.remove(createListenerKey);
                if (zzarVar != null) {
                    zzarVar.zzc();
                    ((zzh) zzavVar.f10350a).a().f0(new zzbc(2, null, null, null, zzarVar, zzyVar));
                }
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
