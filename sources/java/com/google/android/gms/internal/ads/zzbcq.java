package com.google.android.gms.internal.ads;

import android.app.Activity;
import android.app.Application;
import android.os.Bundle;

/* loaded from: classes.dex */
final class zzbcq implements zzbcx {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f4548a;
    public final /* synthetic */ Bundle b;

    public zzbcq(zzbcy zzbcyVar, Activity activity, Bundle bundle) {
        this.f4548a = activity;
        this.b = bundle;
    }

    @Override // com.google.android.gms.internal.ads.zzbcx
    public final void a(Application.ActivityLifecycleCallbacks activityLifecycleCallbacks) {
        activityLifecycleCallbacks.onActivityCreated(this.f4548a, this.b);
    }
}
