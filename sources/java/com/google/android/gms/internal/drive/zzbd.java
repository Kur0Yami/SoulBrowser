package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.TransferPreferences;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzbd extends TaskApiCall<zzaw, TransferPreferences> {
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final void doExecute(zzaw zzawVar, TaskCompletionSource<TransferPreferences> taskCompletionSource) {
        ((zzeo) zzawVar.getService()).C2(new zzhh(taskCompletionSource));
    }
}
