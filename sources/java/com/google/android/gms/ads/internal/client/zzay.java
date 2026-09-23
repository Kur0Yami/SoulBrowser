package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.view.View;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbkg;
import com.google.android.gms.internal.ads.zzbkh;
import com.google.android.gms.internal.ads.zzbki;
import com.google.android.gms.internal.ads.zzbkl;
import com.google.android.gms.internal.ads.zzblv;
import com.google.android.gms.internal.ads.zzbxv;
import com.google.android.gms.internal.ads.zzbxx;
import java.util.HashMap;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzay extends zzba {
    public final /* synthetic */ View b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ HashMap f3000c;
    public final /* synthetic */ HashMap d;
    public final /* synthetic */ zzaz e;

    public zzay(zzaz zzazVar, View view, HashMap hashMap, HashMap hashMap2) {
        this.b = view;
        this.f3000c = hashMap;
        this.d = hashMap2;
        this.e = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object a() {
        zzaz.a(this.b.getContext(), "native_ad_view_holder_delegate");
        return new zzfo();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object b() {
        Object zzbkgVar;
        View view = this.b;
        zzbgk.a(view.getContext());
        boolean booleanValue = ((Boolean) zzbd.zzc().a(zzbgk.ac)).booleanValue();
        zzaz zzazVar = this.e;
        HashMap hashMap = this.d;
        HashMap hashMap2 = this.f3000c;
        if (booleanValue) {
            try {
                return zzbkh.zze(((zzbkl) com.google.android.gms.ads.internal.util.client.zzs.zza(view.getContext(), "com.google.android.gms.ads.ChimeraNativeAdViewHolderDelegateCreatorImpl", zzax.f2999a)).k0(new ObjectWrapper(view), new ObjectWrapper(hashMap2), new ObjectWrapper(hashMap)));
            } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException e) {
                zzbxx c2 = zzbxv.c(view.getContext());
                zzazVar.g = c2;
                c2.a("ClientApiBroker.createNativeAdViewHolderDelegate", e);
                return null;
            }
        }
        zzblv zzblvVar = zzazVar.f;
        zzblvVar.getClass();
        try {
            IBinder k0 = ((zzbkl) zzblvVar.getRemoteCreatorInstance(view.getContext())).k0(new ObjectWrapper(view), new ObjectWrapper(hashMap2), new ObjectWrapper(hashMap));
            if (k0 == null) {
                return null;
            }
            IInterface queryLocalInterface = k0.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewHolderDelegate");
            if (queryLocalInterface instanceof zzbki) {
                zzbkgVar = (zzbki) queryLocalInterface;
            } else {
                zzbkgVar = new zzbkg(k0);
            }
            return zzbkgVar;
        } catch (RemoteException e2) {
            e = e2;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e3) {
            e = e3;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not create remote NativeAdViewHolderDelegate.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        return zzcrVar.zzk(new ObjectWrapper(this.b), new ObjectWrapper(this.f3000c), new ObjectWrapper(this.d));
    }
}
