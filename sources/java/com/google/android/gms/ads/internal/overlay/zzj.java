package com.google.android.gms.ads.internal.overlay;

import android.content.Context;
import android.view.ViewGroup;
import android.view.ViewParent;
import androidx.annotation.VisibleForTesting;
import com.google.android.gms.internal.ads.zzcir;

@VisibleForTesting
/* loaded from: classes.dex */
public final class zzj {
    public final int zza;
    public final ViewGroup.LayoutParams zzb;
    public final ViewGroup zzc;
    public final Context zzd;

    public zzj(zzcir zzcirVar) {
        this.zzb = zzcirVar.getLayoutParams();
        ViewParent parent = zzcirVar.getParent();
        this.zzd = zzcirVar.m();
        if (parent instanceof ViewGroup) {
            ViewGroup viewGroup = (ViewGroup) parent;
            this.zzc = viewGroup;
            this.zza = viewGroup.indexOfChild(zzcirVar.zzE());
            viewGroup.removeView(zzcirVar.zzE());
            zzcirVar.n0(true);
            return;
        }
        throw new Exception("Could not get the parent of the WebView for an overlay.");
    }
}
