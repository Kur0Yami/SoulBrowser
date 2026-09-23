package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.nativead.NativeAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbwf extends NativeAd.AdChoicesInfo {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f4943a = new ArrayList();
    public final String b;

    public zzbwf(zzbjr zzbjrVar) {
        zzbjy zzbjyVar;
        try {
            this.b = zzbjrVar.zzb();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            this.b = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        try {
            ArrayList zzc = zzbjrVar.zzc();
            int size = zzc.size();
            int i = 0;
            while (i < size) {
                Object obj = zzc.get(i);
                i++;
                if (obj instanceof IBinder) {
                    zzbjyVar = zzbjx.c5((IBinder) obj);
                } else {
                    zzbjyVar = null;
                }
                if (zzbjyVar != null) {
                    this.f4943a.add(new zzbwh(zzbjyVar));
                }
            }
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
        }
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final List getImages() {
        return this.f4943a;
    }

    @Override // com.google.android.gms.ads.nativead.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.b;
    }
}
