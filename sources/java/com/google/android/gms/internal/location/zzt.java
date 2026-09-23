package com.google.android.gms.internal.location;

import com.google.android.gms.common.api.internal.ListenerHolder;
import com.google.android.gms.common.api.internal.ListenerHolders;

/* loaded from: classes3.dex */
final class zzt extends zzx {
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(zzaz zzazVar) {
        zzaz zzazVar2 = zzazVar;
        zzy zzyVar = new zzy(this);
        zzba F = zzba.F();
        ListenerHolder createListenerHolder = ListenerHolders.createListenerHolder((Object) null, zzbj.a(), "LocationCallback");
        synchronized (zzazVar2.g) {
            zzazVar2.g.b(F, createListenerHolder, zzyVar);
        }
    }
}
