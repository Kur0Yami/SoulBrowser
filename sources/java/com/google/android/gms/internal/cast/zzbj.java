package com.google.android.gms.internal.cast;

import android.app.Activity;
import android.preference.PreferenceManager;
import android.view.ViewGroup;
import com.google.android.gms.cast.framework.IntroductoryOverlay;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbj implements com.google.android.gms.cast.framework.internal.featurehighlight.zzg {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Activity f9628a;
    public final /* synthetic */ com.google.android.gms.cast.framework.internal.featurehighlight.zzh b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzbk f9629c;

    public zzbj(zzbk zzbkVar, Activity activity, com.google.android.gms.cast.framework.internal.featurehighlight.zzh zzhVar) {
        this.f9628a = activity;
        this.b = zzhVar;
        this.f9629c = zzbkVar;
    }

    @Override // com.google.android.gms.cast.framework.internal.featurehighlight.zzg
    public final void zza() {
        if (!this.f9629c.j) {
            return;
        }
        final Activity activity = this.f9628a;
        PreferenceManager.getDefaultSharedPreferences(activity).edit().putBoolean("googlecast-introOverlayShown", true).apply();
        this.b.d(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbi
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzbk zzbkVar = zzbj.this.f9629c;
                if (zzbkVar.j) {
                    ((ViewGroup) activity.getWindow().getDecorView()).removeView(zzbkVar);
                    IntroductoryOverlay.OnOverlayDismissedListener onOverlayDismissedListener = zzbkVar.g;
                    if (onOverlayDismissedListener != null) {
                        onOverlayDismissedListener.a();
                    }
                    zzbkVar.c();
                }
            }
        });
    }

    @Override // com.google.android.gms.cast.framework.internal.featurehighlight.zzg
    public final void zzb() {
        if (!this.f9629c.j) {
            return;
        }
        final Activity activity = this.f9628a;
        PreferenceManager.getDefaultSharedPreferences(activity).edit().putBoolean("googlecast-introOverlayShown", true).apply();
        this.b.c(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbh
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzbk zzbkVar = zzbj.this.f9629c;
                if (zzbkVar.j) {
                    ((ViewGroup) activity.getWindow().getDecorView()).removeView(zzbkVar);
                    IntroductoryOverlay.OnOverlayDismissedListener onOverlayDismissedListener = zzbkVar.g;
                    if (onOverlayDismissedListener != null) {
                        onOverlayDismissedListener.a();
                    }
                    zzbkVar.c();
                }
            }
        });
    }
}
