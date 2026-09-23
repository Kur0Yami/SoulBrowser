package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.MotionEvent;
import android.widget.RelativeLayout;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.ads.internal.util.zzat;

@VisibleForTesting
/* loaded from: classes.dex */
final class zzi extends RelativeLayout {

    /* renamed from: c, reason: collision with root package name */
    public final zzat f3059c;
    public boolean f;

    public zzi(Context context, String str, String str2, String str3) {
        super(context);
        zzat zzatVar = new zzat(context, str);
        this.f3059c = zzatVar;
        zzatVar.zzd(str2);
        zzatVar.zzc(str3);
    }

    @Override // android.view.ViewGroup
    public final boolean onInterceptTouchEvent(MotionEvent motionEvent) {
        if (!this.f) {
            this.f3059c.zza(motionEvent);
            return false;
        }
        return false;
    }
}
