package com.google.android.gms.cast.internal;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzh extends zzaf {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f3620c;

    public zzh(zzn zznVar, TaskCompletionSource taskCompletionSource) {
        this.f3620c = taskCompletionSource;
        Objects.requireNonNull(zznVar);
    }

    @Override // com.google.android.gms.cast.internal.zzag
    public final void j3(Bundle bundle) {
        this.f3620c.b(bundle);
    }
}
