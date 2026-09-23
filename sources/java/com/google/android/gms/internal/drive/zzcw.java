package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveContents;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzcw extends TaskApiCall<zzaw, DriveContents> {
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final void doExecute(zzaw zzawVar, TaskCompletionSource<DriveContents> taskCompletionSource) {
        ((zzeo) zzawVar.getService()).e3(new zzr(0), new zzhh(taskCompletionSource));
    }
}
