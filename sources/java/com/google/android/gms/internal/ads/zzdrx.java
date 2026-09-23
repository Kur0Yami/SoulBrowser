package com.google.android.gms.internal.ads;

import android.view.MotionEvent;
import com.google.android.gms.ads.nativead.NativeCustomFormatAd;
import org.json.JSONObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdrx implements zzbjl {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzdry f6082a;

    public zzdrx(zzdry zzdryVar) {
        this.f6082a = zzdryVar;
    }

    @Override // com.google.android.gms.internal.ads.zzbjl
    public final void a(MotionEvent motionEvent) {
    }

    @Override // com.google.android.gms.internal.ads.zzbjl
    public final void zza() {
        zzdnh zzdnhVar = this.f6082a.h;
        if (zzdnhVar != null) {
            synchronized (zzdnhVar) {
                zzdnhVar.n.i(NativeCustomFormatAd.ASSET_NAME_VIDEO);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbjl
    public final JSONObject zzc() {
        return null;
    }

    @Override // com.google.android.gms.internal.ads.zzbjl
    public final JSONObject zzd() {
        return null;
    }
}
