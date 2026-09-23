package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.MetadataBuffer;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzcz extends TaskApiCall<zzaw, MetadataBuffer> {
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final void doExecute(zzaw zzawVar, TaskCompletionSource<MetadataBuffer> taskCompletionSource) {
        ((zzeo) zzawVar.getService()).R4(new zzgq(null), new zzhh(taskCompletionSource));
    }
}
