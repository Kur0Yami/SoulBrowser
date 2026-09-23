package com.google.android.gms.internal.cast;

import android.animation.Animator;
import android.animation.AnimatorSet;
import androidx.collection.SimpleArrayMap;

/* loaded from: classes.dex */
public final class zzgp extends zzgn {
    public final AnimatorSet b;
    public int d;
    public final zzgt e = new zzgo(this);

    /* renamed from: c, reason: collision with root package name */
    public final int f9706c = -1;

    public zzgp(AnimatorSet animatorSet) {
        this.b = animatorSet;
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationEnd(Animator animator) {
        SimpleArrayMap simpleArrayMap = this.f9704a;
        if (simpleArrayMap.containsKey(animator) && ((Boolean) simpleArrayMap.get(animator)).booleanValue()) {
            return;
        }
        ((zzgw) zzgw.f9710a.get()).a(this.e);
    }
}
