package com.google.android.gms.ads.internal.client;

import android.os.RemoteException;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbpt;
import com.google.android.gms.internal.ads.zzbsz;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzfm extends zzda {

    /* renamed from: c, reason: collision with root package name */
    public zzbpt f3039c;

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zze() {
        com.google.android.gms.ads.internal.util.client.zzo.zzf("The initialization is not processed because MobileAdsSettingsManager is not created successfully.");
        com.google.android.gms.ads.internal.util.client.zzf.zza.post(new Runnable() { // from class: com.google.android.gms.ads.internal.client.zzfl
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzbpt zzbptVar = zzfm.this.f3039c;
                if (zzbptVar != null) {
                    try {
                        zzbptVar.F3(Collections.EMPTY_LIST);
                    } catch (RemoteException e) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzj("Could not notify onComplete event.", e);
                    }
                }
            }
        });
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzf(float f) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzg(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzh(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzi(IObjectWrapper iObjectWrapper, String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzj(@Nullable String str, IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final float zzk() {
        return 1.0f;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final boolean zzl() {
        return false;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final String zzm() {
        return RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzn(@Nullable String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzo(zzbsz zzbszVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzp(zzbpt zzbptVar) {
        this.f3039c = zzbptVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final List zzq() {
        return Collections.EMPTY_LIST;
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzr(zzfv zzfvVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzs() {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzt(zzdn zzdnVar) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzu(boolean z) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzv(String str) {
    }

    @Override // com.google.android.gms.ads.internal.client.zzdb
    public final void zzw() {
    }
}
