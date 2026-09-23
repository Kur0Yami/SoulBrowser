package com.google.android.gms.location;

import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes3.dex */
class zzao extends com.google.android.gms.internal.location.zzah {

    /* renamed from: c, reason: collision with root package name */
    public final TaskCompletionSource f11579c;

    public zzao(TaskCompletionSource taskCompletionSource) {
        this.f11579c = taskCompletionSource;
    }

    @Override // com.google.android.gms.internal.location.zzai
    public final void G4(com.google.android.gms.internal.location.zzaa zzaaVar) {
        TaskUtil.setResultOrApiException(zzaaVar.f10348c, this.f11579c);
    }

    public void zzc() {
    }
}
