package com.google.android.gms.internal.cast;

import android.animation.AnimatorSet;
import androidx.collection.SimpleArrayMap;

/* loaded from: classes.dex */
final class zzgo extends zzgt {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzgp f9705c;

    public zzgo(zzgp zzgpVar) {
        this.f9705c = zzgpVar;
    }

    @Override // com.google.android.gms.internal.cast.zzgt
    public final void a() {
        zzgp zzgpVar = this.f9705c;
        zzgpVar.d++;
        AnimatorSet animatorSet = zzgpVar.b;
        SimpleArrayMap simpleArrayMap = zzgpVar.f9704a;
        if ((!simpleArrayMap.containsKey(animatorSet) || !((Boolean) simpleArrayMap.get(animatorSet)).booleanValue()) && !animatorSet.isStarted()) {
            if (zzgpVar.f9706c == -1 || zzgpVar.d < 0) {
                animatorSet.start();
            }
        }
    }
}
