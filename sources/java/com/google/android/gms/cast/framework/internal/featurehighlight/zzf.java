package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zzf extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f3490a;
    public final /* synthetic */ zzh b;

    public zzf(zzh zzhVar, Runnable runnable) {
        this.f3490a = runnable;
        Objects.requireNonNull(zzhVar);
        this.b = zzhVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        zzh zzhVar = this.b;
        zzhVar.setVisibility(8);
        zzhVar.k = null;
        this.f3490a.run();
    }
}
