package com.google.android.gms.internal.location;

import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes3.dex */
final class zzad extends zzae {
    @Override // com.google.android.gms.common.api.internal.BaseImplementation.ApiMethodImpl
    public final void doExecute(zzaz zzazVar) {
        zzaz zzazVar2 = zzazVar;
        zzazVar2.checkConnected();
        Preconditions.checkNotNull(null, "removeGeofencingRequest can't be null.");
        Preconditions.checkNotNull(this, "ResultHolder not provided.");
        ((zzam) zzazVar2.getService()).I3(new zzax(this));
    }
}
