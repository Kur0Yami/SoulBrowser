package com.google.android.gms.ads.internal;

import android.app.Activity;
import android.content.Context;
import android.view.View;
import android.widget.FrameLayout;
import com.google.android.gms.ads.internal.client.zzbt;
import com.google.android.gms.ads.internal.client.zzbx;
import com.google.android.gms.ads.internal.client.zzck;
import com.google.android.gms.ads.internal.client.zzcq;
import com.google.android.gms.ads.internal.client.zzdb;
import com.google.android.gms.ads.internal.client.zzdw;
import com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel;
import com.google.android.gms.ads.internal.overlay.zzac;
import com.google.android.gms.ads.internal.overlay.zzag;
import com.google.android.gms.ads.internal.overlay.zzai;
import com.google.android.gms.ads.internal.overlay.zzaj;
import com.google.android.gms.ads.internal.overlay.zzv;
import com.google.android.gms.ads.internal.overlay.zzw;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbkc;
import com.google.android.gms.internal.ads.zzbki;
import com.google.android.gms.internal.ads.zzbon;
import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbwr;
import com.google.android.gms.internal.ads.zzbwy;
import com.google.android.gms.internal.ads.zzbzp;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzccj;
import com.google.android.gms.internal.ads.zzclg;
import com.google.android.gms.internal.ads.zzdof;
import com.google.android.gms.internal.ads.zzdoh;
import com.google.android.gms.internal.ads.zzdyv;
import com.google.android.gms.internal.ads.zzepr;
import com.google.android.gms.internal.ads.zzfcu;
import com.google.android.gms.internal.ads.zzfeh;
import com.google.android.gms.internal.ads.zzffx;
import com.google.android.gms.internal.ads.zzfhk;
import java.util.HashMap;

/* loaded from: classes.dex */
public class ClientApi extends zzcq {
    @KeepForSdk
    public ClientApi() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzb(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzbsz zzbszVar, int i) {
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        zzfeh l = zzclg.e(context, zzbszVar, i).l();
        l.b(context);
        l.a(zzrVar);
        l.zzc(str);
        return l.zza().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzc(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzbsz zzbszVar, int i) {
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        zzffx p = zzclg.e(context, zzbszVar, i).p();
        p.b(context);
        p.a(zzrVar);
        p.zzc(str);
        return p.zza().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbt zzd(IObjectWrapper iObjectWrapper, String str, zzbsz zzbszVar, int i) {
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        return new zzepr(zzclg.e(context, zzbszVar, i), context, str);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbkc zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        return new zzdoh((FrameLayout) ObjectWrapper.f2(iObjectWrapper), (FrameLayout) ObjectWrapper.f2(iObjectWrapper2));
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbzp zzf(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i) {
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        zzfhk s = zzclg.e(context, zzbszVar, i).s();
        s.b(context);
        return s.zza().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbwy zzg(IObjectWrapper iObjectWrapper) {
        Activity activity = (Activity) ObjectWrapper.f2(iObjectWrapper);
        AdOverlayInfoParcel zza = AdOverlayInfoParcel.zza(activity.getIntent());
        if (zza == null) {
            return new zzw(activity);
        }
        int i = zza.zzk;
        if (i != 1) {
            if (i != 2) {
                if (i != 3) {
                    if (i != 4) {
                        if (i != 5) {
                            return new zzw(activity);
                        }
                        return new zzag(activity);
                    }
                    return new zzac(activity, zza);
                }
                return new zzaj(activity);
            }
            return new zzai(activity);
        }
        return new zzv(activity);
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzck zzh(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i) {
        return zzclg.e((Context) ObjectWrapper.f2(iObjectWrapper), zzbszVar, i).j();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzdb zzi(IObjectWrapper iObjectWrapper, int i) {
        return zzclg.e((Context) ObjectWrapper.f2(iObjectWrapper), null, i).i();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzj(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, int i) {
        return new zzs((Context) ObjectWrapper.f2(iObjectWrapper), zzrVar, str, new VersionInfoParcel(ModuleDescriptor.MODULE_VERSION, i, true, false));
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbki zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        return new zzdof((View) ObjectWrapper.f2(iObjectWrapper), (HashMap) ObjectWrapper.f2(iObjectWrapper2), (HashMap) ObjectWrapper.f2(iObjectWrapper3));
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzcaf zzl(IObjectWrapper iObjectWrapper, String str, zzbsz zzbszVar, int i) {
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        zzfhk s = zzclg.e(context, zzbszVar, i).s();
        s.b(context);
        s.a(str);
        return s.zza().zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzm(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.client.zzr zzrVar, String str, zzbsz zzbszVar, int i) {
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        zzfcu n = zzclg.e(context, zzbszVar, i).n();
        n.a(str);
        n.b(context);
        return n.zza().zza();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzccj zzn(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i) {
        return zzclg.e((Context) ObjectWrapper.f2(iObjectWrapper), zzbszVar, i).u();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbwr zzo(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i) {
        return zzclg.e((Context) ObjectWrapper.f2(iObjectWrapper), zzbszVar, i).w();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzboq zzp(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i, zzbon zzbonVar) {
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        zzdyv a2 = zzclg.e(context, zzbszVar, i).a();
        a2.b(context);
        a2.a(zzbonVar);
        return a2.zza().zzb();
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzdw zzq(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i) {
        return zzclg.e((Context) ObjectWrapper.f2(iObjectWrapper), zzbszVar, i).c();
    }
}
