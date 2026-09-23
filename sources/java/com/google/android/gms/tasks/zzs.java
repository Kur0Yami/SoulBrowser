package com.google.android.gms.tasks;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzs implements OnTokenCanceledListener {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ TaskCompletionSource f11626a;

    public zzs(TaskCompletionSource taskCompletionSource) {
        this.f11626a = taskCompletionSource;
    }

    @Override // com.google.android.gms.tasks.OnTokenCanceledListener
    public final void a() {
        this.f11626a.f11605a.u();
    }
}
