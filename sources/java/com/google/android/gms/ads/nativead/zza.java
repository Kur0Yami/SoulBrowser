package com.google.android.gms.ads.nativead;

import android.os.RemoteException;
import android.widget.ImageView;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.internal.ads.zzbjm;
import com.google.android.gms.internal.ads.zzbkc;

/* loaded from: classes.dex */
final /* synthetic */ class zza implements zzbjm {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NativeAdView f3208a;

    @Override // com.google.android.gms.internal.ads.zzbjm
    public final void a(ImageView.ScaleType scaleType) {
        zzbkc zzbkcVar = this.f3208a.f;
        if (zzbkcVar != null && scaleType != null) {
            try {
                zzbkcVar.zzdB(new ObjectWrapper(scaleType));
            } catch (RemoteException e) {
                zzo.zzg("Unable to call setMediaViewImageScaleType on delegate", e);
            }
        }
    }
}
