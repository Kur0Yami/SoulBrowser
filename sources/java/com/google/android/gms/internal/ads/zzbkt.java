package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.RemoteException;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.formats.MediaView;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public final class zzbkt {

    /* renamed from: a, reason: collision with root package name */
    public final zzbks f4752a;

    public zzbkt(zzbks zzbksVar) {
        Context context;
        this.f4752a = zzbksVar;
        try {
            context = (Context) ObjectWrapper.f2(zzbksVar.zzm());
        } catch (RemoteException | NullPointerException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e);
            context = null;
        }
        if (context != null) {
            try {
                this.f4752a.zzn(new ObjectWrapper(new MediaView(context)));
            } catch (RemoteException e2) {
                com.google.android.gms.ads.internal.util.client.zzo.zzg(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, e2);
            }
        }
    }
}
