package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.view.GestureDetector;
import android.view.MotionEvent;
import android.view.View;

/* loaded from: classes.dex */
final class zzb extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ View f3486c;
    public final /* synthetic */ zzg f;

    public zzb(zzh zzhVar, View view, zzg zzgVar) {
        this.f3486c = view;
        this.f = zzgVar;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        View view = this.f3486c;
        if (view.getParent() != null) {
            view.performClick();
        }
        this.f.zza();
        return true;
    }
}
