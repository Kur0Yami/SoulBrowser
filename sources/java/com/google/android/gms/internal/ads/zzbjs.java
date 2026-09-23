package com.google.android.gms.internal.ads;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.formats.NativeAd;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbjs extends NativeAd.AdChoicesInfo {

    /* renamed from: a, reason: collision with root package name */
    public final zzbjr f4744a;
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final String f4745c;

    public zzbjs(zzbjr zzbjrVar) {
        zzbjy zzbjyVar;
        this.f4744a = zzbjrVar;
        try {
            this.f4745c = zzbjrVar.zzb();
        } catch (RemoteException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            this.f4745c = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        }
        try {
            ArrayList zzc = zzbjrVar.zzc();
            int size = zzc.size();
            int i = 0;
            while (i < size) {
                Object obj = zzc.get(i);
                i++;
                if (obj instanceof IBinder) {
                    IBinder iBinder = (IBinder) obj;
                    IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdImage");
                    if (queryLocalInterface instanceof zzbjy) {
                        zzbjyVar = (zzbjy) queryLocalInterface;
                    } else {
                        zzbjyVar = new zzbjw(iBinder);
                    }
                } else {
                    zzbjyVar = null;
                }
                if (zzbjyVar != null) {
                    this.b.add(new zzbjz(zzbjyVar));
                }
            }
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
        }
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final List getImages() {
        return this.b;
    }

    @Override // com.google.android.gms.ads.formats.NativeAd.AdChoicesInfo
    public final CharSequence getText() {
        return this.f4745c;
    }
}
