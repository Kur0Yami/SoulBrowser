package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
final class zzazb implements zzazh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f4492a;

    public zzazb(zzazi zzaziVar, Activity activity) {
        this.f4492a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzazh
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityStarted(this.f4492a);
    }
}
