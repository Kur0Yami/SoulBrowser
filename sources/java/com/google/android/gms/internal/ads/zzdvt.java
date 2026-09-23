package com.google.android.gms.internal.ads;

import com.google.android.gms.internal.ads.zzbfp;

/* loaded from: classes.dex */
public final class zzdvt implements zzddq, zzdby, zzdan, zzdbe, com.google.android.gms.ads.internal.client.zza, zzdgb {

    /* renamed from: c, reason: collision with root package name */
    public final zzbfj f6190c;
    public boolean f = false;

    public zzdvt(zzbfj zzbfjVar, zzffn zzffnVar) {
        this.f6190c = zzbfjVar;
        zzbfjVar.b(2);
        if (zzffnVar != null) {
            zzbfjVar.b(1101);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void B(final zzbfp.zzb zzbVar) {
        zzbfi zzbfiVar = new zzbfi() { // from class: com.google.android.gms.internal.ads.zzdvq
            @Override // com.google.android.gms.internal.ads.zzbfi
            public final void a(zzbfp.zzt.zza zzaVar) {
                zzaVar.k();
                ((zzbfp.zzt) zzaVar.f).G(zzbfp.zzb.this);
            }
        };
        zzbfj zzbfjVar = this.f6190c;
        zzbfjVar.a(zzbfiVar);
        zzbfjVar.b(1102);
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void K(final zzbfp.zzb zzbVar) {
        zzbfi zzbfiVar = new zzbfi() { // from class: com.google.android.gms.internal.ads.zzdvp
            @Override // com.google.android.gms.internal.ads.zzbfi
            public final void a(zzbfp.zzt.zza zzaVar) {
                zzaVar.k();
                ((zzbfp.zzt) zzaVar.f).G(zzbfp.zzb.this);
            }
        };
        zzbfj zzbfjVar = this.f6190c;
        zzbfjVar.a(zzbfiVar);
        zzbfjVar.b(1103);
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void N(final zzfic zzficVar) {
        this.f6190c.a(new zzbfi() { // from class: com.google.android.gms.internal.ads.zzdvs
            @Override // com.google.android.gms.internal.ads.zzbfi
            public final void a(zzbfp.zzt.zza zzaVar) {
                zzbfp.zza.zzb zzbVar = (zzbfp.zza.zzb) ((zzbfp.zzt) zzaVar.f).F().v();
                zzbfp.zzi.zza zzaVar2 = (zzbfp.zzi.zza) ((zzbfp.zzt) zzaVar.f).F().G().v();
                String str = zzfic.this.b.b.b;
                zzaVar2.k();
                ((zzbfp.zzi) zzaVar2.f).E(str);
                zzbVar.k();
                ((zzbfp.zza) zzbVar.f).F((zzbfp.zzi) zzaVar2.m());
                zzaVar.k();
                ((zzbfp.zzt) zzaVar.f).K((zzbfp.zza) zzbVar.m());
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void S(com.google.android.gms.ads.internal.client.zze zzeVar) {
        int i = zzeVar.zza;
        zzbfj zzbfjVar = this.f6190c;
        switch (i) {
            case 1:
                zzbfjVar.b(101);
                return;
            case 2:
                zzbfjVar.b(102);
                return;
            case 3:
                zzbfjVar.b(5);
                return;
            case 4:
                zzbfjVar.b(103);
                return;
            case 5:
                zzbfjVar.b(104);
                return;
            case 6:
                zzbfjVar.b(105);
                return;
            case 7:
                zzbfjVar.b(106);
                return;
            default:
                zzbfjVar.b(4);
                return;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void Z(final zzbfp.zzb zzbVar) {
        zzbfi zzbfiVar = new zzbfi() { // from class: com.google.android.gms.internal.ads.zzdvr
            @Override // com.google.android.gms.internal.ads.zzbfi
            public final void a(zzbfp.zzt.zza zzaVar) {
                zzaVar.k();
                ((zzbfp.zzt) zzaVar.f).G(zzbfp.zzb.this);
            }
        };
        zzbfj zzbfjVar = this.f6190c;
        zzbfjVar.a(zzbfiVar);
        zzbfjVar.b(1104);
    }

    @Override // com.google.android.gms.internal.ads.zzddq
    public final void f(zzbza zzbzaVar) {
    }

    @Override // com.google.android.gms.internal.ads.zzdbe
    public final synchronized void n() {
        this.f6190c.b(6);
    }

    @Override // com.google.android.gms.ads.internal.client.zza
    public final synchronized void onAdClicked() {
        if (!this.f) {
            this.f6190c.b(7);
            this.f = true;
        } else {
            this.f6190c.b(8);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void q(boolean z) {
        int i;
        if (true != z) {
            i = 1106;
        } else {
            i = 1105;
        }
        this.f6190c.b(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void v(boolean z) {
        int i;
        if (true != z) {
            i = 1108;
        } else {
            i = 1107;
        }
        this.f6190c.b(i);
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final void zzg() {
        this.f6190c.b(3);
    }

    @Override // com.google.android.gms.internal.ads.zzdgb
    public final void zzo() {
        this.f6190c.b(1109);
    }
}
