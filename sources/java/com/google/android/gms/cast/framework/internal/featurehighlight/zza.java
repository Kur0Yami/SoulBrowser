package com.google.android.gms.cast.framework.internal.featurehighlight;

import android.view.GestureDetector;
import android.view.MotionEvent;
import com.google.android.gms.internal.cast.zzgz;

/* loaded from: classes.dex */
final class zza extends GestureDetector.SimpleOnGestureListener {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzh f3485c;

    public zza(zzh zzhVar) {
        this.f3485c = zzhVar;
    }

    @Override // android.view.GestureDetector.SimpleOnGestureListener, android.view.GestureDetector.OnGestureListener
    public final boolean onSingleTapUp(MotionEvent motionEvent) {
        zzh zzhVar = this.f3485c;
        zzg zzgVar = zzhVar.o;
        float x = motionEvent.getX();
        float y = motionEvent.getY();
        if (zzgVar != null) {
            if (zzhVar.g.contains(Math.round(x), Math.round(y))) {
                OuterHighlightDrawable outerHighlightDrawable = zzhVar.h;
                if (zzgz.a(x, y, outerHighlightDrawable.i, outerHighlightDrawable.j) < outerHighlightDrawable.g) {
                    return true;
                }
            }
            zzhVar.o.zzb();
            return true;
        }
        return true;
    }
}
