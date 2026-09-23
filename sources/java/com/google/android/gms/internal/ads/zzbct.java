package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;

/* loaded from: classes.dex */
final class zzbct implements zzbcx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f4551a;

    public zzbct(zzbcy zzbcyVar, Activity activity) {
        this.f4551a = activity;
    }

    @Override // com.google.android.gms.internal.ads.zzbcx
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityPaused(this.f4551a);
    }
}
