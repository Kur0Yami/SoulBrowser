package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.drive.DriveFolder;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzck extends TaskApiCall<zzaw, DriveFolder> {
    @Override // com.google.android.gms.common.api.internal.TaskApiCall
    public final void doExecute(zzaw zzawVar, TaskCompletionSource<DriveFolder> taskCompletionSource) {
        if (zzawVar.h == null) {
            taskCompletionSource.a(new ApiException(new Status(10, "Drive#SCOPE_FILE must be requested")));
        } else {
            taskCompletionSource.b(new Object());
        }
    }
}
