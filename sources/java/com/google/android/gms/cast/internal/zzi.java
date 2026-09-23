package com.google.android.gms.cast.internal;

import android.os.Bundle;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzi extends zzaf {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f3621c;

    public zzi(zzn zznVar, TaskCompletionSource taskCompletionSource) {
        this.f3621c = taskCompletionSource;
    }

    @Override // com.google.android.gms.cast.internal.zzag
    public final void j3(Bundle bundle) {
        this.f3621c.b(bundle);
    }
}
