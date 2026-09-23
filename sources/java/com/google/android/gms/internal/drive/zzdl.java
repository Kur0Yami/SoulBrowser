package com.google.android.gms.internal.drive;

import com.google.android.gms.common.internal.ApiExceptionUtil;
import com.google.android.gms.drive.events.OpenFileCallback;

/* loaded from: classes.dex */
final /* synthetic */ class zzdl implements zzdg {
    @Override // com.google.android.gms.internal.drive.zzdg
    public final void a(OpenFileCallback openFileCallback) {
        ApiExceptionUtil.fromStatus(null);
        openFileCallback.b();
        throw null;
    }
}
