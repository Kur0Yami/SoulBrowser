package com.google.android.gms.ads.nativead;

import android.os.RemoteException;
import com.google.android.gms.ads.MediaContent;
import com.google.android.gms.ads.internal.client.zzfe;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.internal.ads.zzbjk;
import com.google.android.gms.internal.ads.zzbkc;

/* loaded from: classes.dex */
final /* synthetic */ class zzb implements zzbjk {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ NativeAdView f3209a;

    public final /* synthetic */ void a(MediaContent mediaContent) {
        zzbkc zzbkcVar = this.f3209a.f;
        if (zzbkcVar == null) {
            return;
        }
        try {
            if (mediaContent instanceof zzfe) {
                zzbkcVar.zzdD(((zzfe) mediaContent).zzc());
            } else if (mediaContent == null) {
                zzbkcVar.zzdD(null);
            } else {
                zzo.zzd("Use MediaContent provided by NativeAd.getMediaContent");
            }
        } catch (RemoteException e) {
            zzo.zzg("Unable to call setMediaContent on delegate", e);
        }
    }
}
