package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
final class zzaza implements zzazh {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f4491a;
    public final /* synthetic */ Bundle b;

    public zzaza(zzazi zzaziVar, Activity activity, Bundle bundle) {
        this.f4491a = activity;
        this.b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzazh
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f4491a, this.b);
    }
}
