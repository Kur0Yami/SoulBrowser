package com.google.android.gms.location;

import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.StatusCallback;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes3.dex */
final /* synthetic */ class zzh implements RemoteCall {
    @Override // com.google.android.gms.common.api.internal.RemoteCall
    public final void accept(Object obj, Object obj2) {
        com.google.android.gms.internal.location.zzaz zzazVar = (com.google.android.gms.internal.location.zzaz) obj;
        zzj zzjVar = new zzj((TaskCompletionSource) obj2);
        zzazVar.checkConnected();
        Preconditions.checkNotNull(null, "PendingIntent must be specified.");
        Preconditions.checkNotNull(zzjVar, "ResultHolder not provided.");
        ((com.google.android.gms.internal.location.zzam) zzazVar.getService()).G1(new StatusCallback(zzjVar));
    }
}
