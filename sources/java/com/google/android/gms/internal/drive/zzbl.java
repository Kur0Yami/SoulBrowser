package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.ResultCallback;
import com.google.android.gms.common.api.Status;

/* loaded from: classes.dex */
final class zzbl implements ResultCallback<Status> {
    @Override // com.google.android.gms.common.api.ResultCallback
    public final /* synthetic */ void onResult(Status status) {
        Status status2 = status;
        if (!status2.isSuccess()) {
            zzbi.b.efmt("DriveContentsImpl", "Error discarding contents, status: %s", status2);
        }
    }
}
