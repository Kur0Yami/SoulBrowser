package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import android.app.Dialog;
import android.os.Bundle;
import com.google.android.ump.ConsentForm;
import j$.util.Objects;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
final class zzbb implements Application.ActivityLifecycleCallbacks {

    /* renamed from: c, reason: collision with root package name */
    public final Activity f9944c;
    public final /* synthetic */ zzbe f;

    public zzbb(zzbe zzbeVar, Activity activity) {
        Objects.requireNonNull(zzbeVar);
        this.f = zzbeVar;
        this.f9944c = activity;
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityCreated(Activity activity, Bundle bundle) {
        zzbe zzbeVar = this.f;
        Dialog dialog = zzbeVar.g;
        AtomicReference atomicReference = zzbeVar.l;
        if (dialog != null && zzbeVar.m) {
            dialog.setOwnerActivity(activity);
            zzbz zzbzVar = zzbeVar.b;
            if (zzbzVar != null) {
                zzbzVar.f9963a = activity;
            }
            zzbb zzbbVar = (zzbb) atomicReference.getAndSet(null);
            if (zzbbVar != null) {
                zzbbVar.f.f9946a.unregisterActivityLifecycleCallbacks(zzbbVar);
                zzbb zzbbVar2 = new zzbb(zzbeVar, activity);
                zzbeVar.f9946a.registerActivityLifecycleCallbacks(zzbbVar2);
                atomicReference.set(zzbbVar2);
            }
            Dialog dialog2 = zzbeVar.g;
            if (dialog2 != null) {
                dialog2.show();
            }
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityDestroyed(Activity activity) {
        Dialog dialog;
        if (activity == this.f9944c) {
            boolean isChangingConfigurations = activity.isChangingConfigurations();
            zzbe zzbeVar = this.f;
            if (isChangingConfigurations && zzbeVar.m && (dialog = zzbeVar.g) != null) {
                dialog.dismiss();
                return;
            }
            zzg zzgVar = new zzg(3, "Activity is destroyed.");
            Dialog dialog2 = zzbeVar.g;
            if (dialog2 != null) {
                dialog2.dismiss();
                zzbeVar.g = null;
            }
            zzbeVar.b.f9963a = null;
            zzbb zzbbVar = (zzbb) zzbeVar.l.getAndSet(null);
            if (zzbbVar != null) {
                zzbbVar.f.f9946a.unregisterActivityLifecycleCallbacks(zzbbVar);
            }
            ConsentForm.OnConsentFormDismissedListener onConsentFormDismissedListener = (ConsentForm.OnConsentFormDismissedListener) zzbeVar.k.getAndSet(null);
            if (onConsentFormDismissedListener == null) {
                return;
            }
            zzbeVar.d(zzgVar);
            zzgVar.a();
            onConsentFormDismissedListener.a();
        }
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityPaused(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityResumed(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivitySaveInstanceState(Activity activity, Bundle bundle) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStarted(Activity activity) {
    }

    @Override // android.app.Application.ActivityLifecycleCallbacks
    public final void onActivityStopped(Activity activity) {
    }
}
