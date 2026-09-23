package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import j$.util.Objects;

/* loaded from: classes.dex */
final class zze extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Runnable f3489a;
    public final /* synthetic */ zzh b;

    public zze(zzh zzhVar, Runnable runnable) {
        this.f3489a = runnable;
        Objects.requireNonNull(zzhVar);
        this.b = zzhVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        zzh zzhVar = this.b;
        zzhVar.setVisibility(8);
        zzhVar.k = null;
        this.f3489a.run();
    }
}
