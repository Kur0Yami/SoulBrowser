package com.google.android.gms.ads.internal.overlay;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;

/* loaded from: classes.dex */
final class zzs extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzu f3065a;

    public zzs(zzu zzuVar) {
        this.f3065a = zzuVar;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        zzu zzuVar = this.f3065a;
        zzuVar.setEnabled(true);
        zzuVar.f3066c.setEnabled(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        zzu zzuVar = this.f3065a;
        zzuVar.setEnabled(true);
        zzuVar.f3066c.setEnabled(true);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        zzu zzuVar = this.f3065a;
        zzuVar.setEnabled(false);
        zzuVar.f3066c.setEnabled(false);
    }
}
