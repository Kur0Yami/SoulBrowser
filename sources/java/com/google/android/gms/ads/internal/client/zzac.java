package com.google.android.gms.ads.internal.client;

import android.app.Activity;
import android.os.IBinder;
import android.os.IInterface;
import android.os.RemoteException;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamic.RemoteCreator;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbwv;
import com.google.android.gms.internal.ads.zzbww;
import com.google.android.gms.internal.ads.zzbwx;
import com.google.android.gms.internal.ads.zzbwy;
import com.google.android.gms.internal.ads.zzbxb;
import com.google.android.gms.internal.ads.zzbxv;
import com.google.android.gms.internal.ads.zzbxx;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzac extends zzba {
    public final /* synthetic */ Activity b;

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ zzaz f2978c;

    public zzac(zzaz zzazVar, Activity activity) {
        this.b = activity;
        this.f2978c = zzazVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final /* bridge */ /* synthetic */ Object a() {
        zzaz.a(this.b, "ad_overlay");
        return null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object b() {
        Object zzbwwVar;
        Activity activity = this.b;
        zzbgk.a(activity);
        boolean booleanValue = ((Boolean) zzbd.zzc().a(zzbgk.ac)).booleanValue();
        zzaz zzazVar = this.f2978c;
        if (booleanValue) {
            try {
                return zzbwx.zzI(((zzbxb) com.google.android.gms.ads.internal.util.client.zzs.zza(activity, "com.google.android.gms.ads.ChimeraAdOverlayCreatorImpl", zzab.f2977a)).C(new ObjectWrapper(activity)));
            } catch (RemoteException | com.google.android.gms.ads.internal.util.client.zzr | NullPointerException e) {
                zzbxx c2 = zzbxv.c(activity.getApplicationContext());
                zzazVar.g = c2;
                c2.a("ClientApiBroker.createAdOverlay", e);
                return null;
            }
        }
        zzbwv zzbwvVar = zzazVar.e;
        zzbwvVar.getClass();
        try {
            IBinder C = ((zzbxb) zzbwvVar.getRemoteCreatorInstance(activity)).C(new ObjectWrapper(activity));
            if (C == null) {
                return null;
            }
            IInterface queryLocalInterface = C.queryLocalInterface("com.google.android.gms.ads.internal.overlay.client.IAdOverlay");
            if (queryLocalInterface instanceof zzbwy) {
                zzbwwVar = (zzbwy) queryLocalInterface;
            } else {
                zzbwwVar = new zzbww(C);
            }
            return zzbwwVar;
        } catch (RemoteException e2) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not create remote AdOverlay.", e2);
            return null;
        } catch (RemoteCreator.RemoteCreatorException e3) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not create remote AdOverlay.", e3);
            return null;
        }
    }

    @Override // com.google.android.gms.ads.internal.client.zzba
    public final Object c(zzcr zzcrVar) {
        return zzcrVar.zzg(new ObjectWrapper(this.b));
    }
}
