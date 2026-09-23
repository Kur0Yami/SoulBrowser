package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.drive.DriveId;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzbc extends TaskApiCall<zzaw, DriveId> {
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final void doExecute(zzaw zzawVar, TaskCompletionSource<DriveId> taskCompletionSource) {
        zzeo zzeoVar = (zzeo) zzawVar.getService();
        Preconditions.checkNotNull(null);
        zzeoVar.f3(new zzek(new DriveId(null, -1L, -1L, -1), false), new zzhh(taskCompletionSource));
    }
}
