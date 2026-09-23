package com.google.android.gms.location;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes3.dex */
final /* synthetic */ class zze implements RemoteCall {
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        com.google.android.gms.internal.location.zzaz zzazVar = (com.google.android.gms.internal.location.zzaz) obj;
        zzazVar.checkConnected();
        Preconditions.checkNotNull(null);
        ((com.google.android.gms.internal.location.zzam) zzazVar.getService()).zzk();
        ((TaskCompletionSource) obj2).b(null);
    }
}
