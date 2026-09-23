package com.google.android.gms.ads.internal.overlay;

import android.app.Activity;
import android.content.Intent;
import android.os.Bundle;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.client.zzbd;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.ads.zzbde;
import com.google.android.gms.internal.ads.zzbgk;
import com.google.android.gms.internal.ads.zzbwx;
import com.google.android.gms.internal.ads.zzdir;

/* loaded from: classes.dex */
public final class zzac extends zzbwx implements zzbde {

    /* renamed from: c, reason: collision with root package name */
    public final AdOverlayInfoParcel f3054c;
    public final Activity f;
    public final boolean j;
    public boolean g = false;
    public boolean h = false;
    public boolean i = false;
    public boolean k = false;
    public boolean l = false;

    /* JADX WARN: Code restructure failed: missing block: B:6:0x0046, code lost:
    
        if (((java.lang.Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(com.google.android.gms.internal.ads.zzbgk.J5)).booleanValue() != false) goto L8;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzac(android.app.Activity r3, com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel r4) {
        /*
            r2 = this;
            r2.<init>()
            r0 = 0
            r2.g = r0
            r2.h = r0
            r2.i = r0
            r2.k = r0
            r2.l = r0
            r2.f3054c = r4
            r2.f = r3
            com.google.android.gms.internal.ads.zzbgb r3 = com.google.android.gms.internal.ads.zzbgk.E5
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r3 = r1.a(r3)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 != 0) goto L48
            com.google.android.gms.internal.ads.zzbgb r3 = com.google.android.gms.internal.ads.zzbgk.F5
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r3 = r1.a(r3)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 != 0) goto L48
            com.google.android.gms.internal.ads.zzbgb r3 = com.google.android.gms.internal.ads.zzbgk.J5
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r3 = r1.a(r3)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto L79
        L48:
            com.google.android.gms.ads.internal.overlay.zzc r3 = r4.zza
            if (r3 == 0) goto L79
            boolean r3 = r3.zzj
            if (r3 == 0) goto L79
            java.lang.String r3 = android.os.Build.MANUFACTURER
            com.google.android.gms.internal.ads.zzbgb r4 = com.google.android.gms.internal.ads.zzbgk.H5
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r1.a(r4)
            java.lang.String r4 = (java.lang.String) r4
            boolean r3 = r3.matches(r4)
            if (r3 == 0) goto L79
            java.lang.String r3 = android.os.Build.MODEL
            com.google.android.gms.internal.ads.zzbgb r4 = com.google.android.gms.internal.ads.zzbgk.I5
            com.google.android.gms.internal.ads.zzbgi r1 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r1.a(r4)
            java.lang.String r4 = (java.lang.String) r4
            boolean r3 = r3.matches(r4)
            if (r3 == 0) goto L79
            r0 = 1
        L79:
            r2.j = r0
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.ads.internal.overlay.zzac.<init>(android.app.Activity, com.google.android.gms.ads.internal.overlay.AdOverlayInfoParcel):void");
    }

    public final synchronized void c5() {
        try {
            if (!this.h) {
                zzr zzrVar = this.f3054c.zzc;
                if (zzrVar != null) {
                    zzrVar.zzdT(4);
                }
                this.h = true;
                if (this.j) {
                    if (((Boolean) zzbd.zzc().a(zzbgk.J5)).booleanValue()) {
                        com.google.android.gms.ads.internal.zzt.zzg().c(this);
                    }
                }
            }
        } catch (Throwable th) {
            throw th;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzH(int i, String[] strArr, int[] iArr) {
    }

    @Override // com.google.android.gms.internal.ads.zzbde
    public final void zza(boolean z) {
        if (z) {
            if (this.l) {
                int i = com.google.android.gms.ads.internal.util.zze.zza;
                com.google.android.gms.ads.internal.util.client.zzo.zzd("Foregrounded: finishing activity from LauncherOverlay");
                this.f.finish();
                return;
            }
            return;
        }
        this.l = true;
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zze() {
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzf() {
        zzr zzrVar = this.f3054c.zzc;
        if (zzrVar != null) {
            zzrVar.zzdv();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final boolean zzg() {
        if (((Boolean) zzbd.zzc().a(zzbgk.F5)).booleanValue() && this.j && this.k) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzh(@Nullable Bundle bundle) {
        zzr zzrVar;
        boolean booleanValue = ((Boolean) zzbd.zzc().a(zzbgk.ja)).booleanValue();
        Activity activity = this.f;
        if (booleanValue && !this.i) {
            activity.requestWindowFeature(1);
        }
        boolean z = false;
        if (bundle != null && bundle.getBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", false)) {
            z = true;
        }
        AdOverlayInfoParcel adOverlayInfoParcel = this.f3054c;
        if (adOverlayInfoParcel == null) {
            activity.finish();
            return;
        }
        if (z) {
            activity.finish();
            return;
        }
        if (bundle == null) {
            com.google.android.gms.ads.internal.client.zza zzaVar = adOverlayInfoParcel.zzb;
            if (zzaVar != null) {
                zzaVar.onAdClicked();
            }
            zzdir zzdirVar = adOverlayInfoParcel.zzu;
            if (zzdirVar != null) {
                zzdirVar.P();
            }
            if (activity.getIntent() != null && activity.getIntent().getBooleanExtra("shouldCallOnOverlayOpened", true) && (zzrVar = adOverlayInfoParcel.zzc) != null) {
                zzrVar.zzh();
            }
        }
        if (this.j) {
            if (((Boolean) zzbd.zzc().a(zzbgk.J5)).booleanValue()) {
                com.google.android.gms.ads.internal.zzt.zzg().b(this);
            }
        }
        zzc zzcVar = adOverlayInfoParcel.zza;
        zzad zzadVar = adOverlayInfoParcel.zzi;
        com.google.android.gms.ads.internal.zzt.zza();
        zzaa zzaaVar = zzcVar.zzi;
        Activity activity2 = this.f;
        if (!zza.zzb(activity2, zzcVar, zzadVar, zzaaVar, null, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED)) {
            activity2.finish();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzi() {
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzj() {
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzk() {
        if (this.g) {
            com.google.android.gms.ads.internal.util.zze.zza("LauncherOverlay finishing activity");
            this.f.finish();
            return;
        }
        this.g = true;
        this.k = true;
        zzr zzrVar = this.f3054c.zzc;
        if (zzrVar != null) {
            zzrVar.zzdx();
        }
        if (this.j) {
            if (((Boolean) zzbd.zzc().a(zzbgk.E5)).booleanValue()) {
                com.google.android.gms.ads.internal.util.zzs.zza.postDelayed(new Runnable() { // from class: com.google.android.gms.ads.internal.overlay.zzab
                    @Override // java.lang.Runnable
                    public final /* synthetic */ void run() {
                        zzac zzacVar = zzac.this;
                        if (zzacVar.k) {
                            zzacVar.f.finish();
                        }
                    }
                }, ((Integer) zzbd.zzc().a(zzbgk.G5)).intValue());
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzl() {
        this.k = false;
        zzr zzrVar = this.f3054c.zzc;
        if (zzrVar != null) {
            zzrVar.zzdw();
        }
        if (this.f.isFinishing()) {
            c5();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzm(int i, int i2, Intent intent) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzn(IObjectWrapper iObjectWrapper) {
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzo(Bundle bundle) {
        bundle.putBoolean("com.google.android.gms.ads.internal.overlay.hasResumed", this.g);
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzp() {
        if (this.f.isFinishing()) {
            c5();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzq() {
        if (this.f.isFinishing()) {
            c5();
        }
    }

    @Override // com.google.android.gms.internal.ads.zzbwy
    public final void zzs() {
        this.i = true;
    }
}
