package com.google.android.gms.ads.internal.client;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import android.widget.FrameLayout;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbka;
import com.google.android.gms.internal.ads.zzbkb;
import com.google.android.gms.internal.ads.zzbkc;
import com.google.android.gms.internal.ads.zzbkf;
import com.google.android.gms.internal.ads.zzblu;
import com.google.android.gms.internal.ads.zzbxv;
import com.google.android.gms.internal.ads.zzbxx;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaw extends zzba {
    public final /* synthetic */ FrameLayout b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ FrameLayout f2998c;
    public final /* synthetic */ Context d;
    public final /* synthetic */ zzaz e;

    public zzaw(zzaz zzazVar, FrameLayout frameLayout, FrameLayout frameLayout2, Context context) {
        this.b = frameLayout;
        this.f2998c = frameLayout2;
        this.d = context;
        this.e = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object a() {
        zzaz.a(this.d, "native_ad_view_delegate");
        return new zzfn();
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object b() {
        Object zzbkaVar;
        Context context = this.d;
        zzbgk.a(context);
        boolean booleanValue = ((Boolean) zzbd.zzc().a(zzbgk.ac)).booleanValue();
        zzaz zzazVar = this.e;
        FrameLayout frameLayout = this.f2998c;
        FrameLayout frameLayout2 = this.b;
        if (booleanValue) {
            try {
                return zzbkb.zzdF(((zzbkf) com.google.android.gms.ads.internal.util.client.zzs.zza(context, "com.google.android.gms.ads.ChimeraNativeAdViewDelegateCreatorImpl", zzav.f2997a)).S3(new ObjectWrapper(context), new ObjectWrapper(frameLayout2), new ObjectWrapper(frameLayout)));
            } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException e) {
                zzbxx c2 = zzbxv.c(context);
                zzazVar.g = c2;
                c2.a("ClientApiBroker.createNativeAdViewDelegate", e);
                return null;
            }
        }
        zzblu zzbluVar = zzazVar.d;
        zzbluVar.getClass();
        try {
            IBinder S3 = ((zzbkf) zzbluVar.getRemoteCreatorInstance(context)).S3(new ObjectWrapper(context), new ObjectWrapper(frameLayout2), new ObjectWrapper(frameLayout));
            if (S3 == null) {
                return null;
            }
            IInterface queryLocalInterface = S3.queryLocalInterface("com.google.android.gms.ads.internal.formats.client.INativeAdViewDelegate");
            if (queryLocalInterface instanceof zzbkc) {
                zzbkaVar = (zzbkc) queryLocalInterface;
            } else {
                zzbkaVar = new zzbka(S3);
            }
            return zzbkaVar;
        } catch (RemoteException e2) {
            e = e2;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not create remote NativeAdViewDelegate.", e);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e3) {
            e = e3;
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not create remote NativeAdViewDelegate.", e);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        return zzcrVar.zze(new ObjectWrapper(this.b), new ObjectWrapper(this.f2998c));
    }
}
