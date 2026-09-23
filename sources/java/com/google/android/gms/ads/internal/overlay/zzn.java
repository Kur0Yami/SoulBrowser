package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.AdActivity;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzdir;
import com.google.android.gms.internal.ads.zzdxe;

/* loaded from: classes.dex */
public final class zzn {
    public static final void zza(Context context, AdOverlayInfoParcel adOverlayInfoParcel, boolean z, @Nullable zzdxe zzdxeVar) {
        Context context2;
        zzaa zzaaVar;
        if (adOverlayInfoParcel.zzk == 4 && adOverlayInfoParcel.zzc == null) {
            com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel.zzb;
            if (zzaVar != null) {
                zzaVar.onAdClicked();
            }
            zzdir zzdirVar = adOverlayInfoParcel.zzu;
            if (zzdirVar != null) {
                zzdirVar.P();
            }
            Activity zzj = adOverlayInfoParcel.zzd.zzj();
            zzc zzcVar = adOverlayInfoParcel.zza;
            if (zzcVar != null && zzcVar.zzj && zzj != null) {
                context2 = zzj;
            } else {
                context2 = context;
            }
            com.google.android.gms.ads.internal.zzt.zza();
            zzad zzadVar = adOverlayInfoParcel.zzi;
            if (zzcVar != null) {
                zzaaVar = zzcVar.zzi;
            } else {
                zzaaVar = null;
            }
            zza.zzb(context2, zzcVar, zzadVar, zzaaVar, zzdxeVar, adOverlayInfoParcel.zzq);
            return;
        }
        Intent intent = new Intent();
        intent.setClassName(context, AdActivity.CLASS_NAME);
        intent.putExtra("com.google.android.gms.ads.internal.overlay.useClientJar", adOverlayInfoParcel.zzm.isClientJar);
        intent.putExtra("shouldCallOnOverlayOpened", z);
        Bundle bundle = new Bundle(1);
        bundle.putParcelable("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", adOverlayInfoParcel);
        intent.putExtra("com.google.android.gms.ads.inernal.overlay.AdOverlayInfo", bundle);
        if (!(context instanceof Activity)) {
            intent.addFlags(268435456);
        }
        if (((Boolean) zzbd.zzc().a(zzbgk.xe)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            com.google.android.gms.ads.internal.util.zzs.zzae(context, intent, zzdxeVar, adOverlayInfoParcel.zzq);
        } else {
            com.google.android.gms.ads.internal.zzt.zzc();
            com.google.android.gms.ads.internal.util.zzs.zzaa(context, intent);
        }
    }
}
