package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
final class zzazd implements zzazh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f4494a;

    public zzazd(zzazi zzaziVar, Activity activity) {
        this.f4494a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzazh
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f4494a);
    }
}
