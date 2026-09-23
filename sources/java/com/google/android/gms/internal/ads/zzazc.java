package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
final class zzazc implements zzazh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f4493a;

    public zzazc(zzazi zzaziVar, Activity activity) {
        this.f4493a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzazh
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityResumed(this.f4493a);
    }
}
