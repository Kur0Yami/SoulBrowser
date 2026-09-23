package com.google.android.gms.internal.drive;

import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.TaskUtil;

/* loaded from: classes.dex */
public final class zzhr extends zzhh<Void> {
    @Override // com.google.android.gms.internal.drive.zzl, com.google.android.gms.internal.drive.zzeq
    public final void onSuccess() {
        TaskUtil.setResultOrApiException(Status.RESULT_SUCCESS, this.f10191c);
    }
}
