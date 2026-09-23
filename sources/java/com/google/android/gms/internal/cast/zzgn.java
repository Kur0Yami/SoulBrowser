package com.google.android.gms.internal.cast;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import androidx.collection.SimpleArrayMap;

/* loaded from: classes.dex */
public class zzgn extends AnimatorListenerAdapter {

    /* renamed from: a, reason: collision with root package name */
    public final SimpleArrayMap f9704a = new SimpleArrayMap(0);

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationCancel(Animator animator) {
        this.f9704a.put(animator, Boolean.TRUE);
    }

    @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
    public final void onAnimationStart(Animator animator) {
        this.f9704a.put(animator, Boolean.FALSE);
    }
}
