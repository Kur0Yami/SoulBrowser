package com.google.android.gms.location;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes3.dex */
final /* synthetic */ class zzas implements RemoteCall {
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        zzat zzatVar = new zzat((TaskCompletionSource) obj2);
        ((com.google.android.gms.internal.location.zzaz) obj).checkConnected();
        Preconditions.checkArgument(false, "geofenceRequestIds can't be null nor empty.");
        Preconditions.checkNotNull(zzatVar, "ResultHolder not provided.");
        throw null;
    }
}
