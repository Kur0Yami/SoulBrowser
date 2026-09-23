package com.google.android.gms.internal.ads;

import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzfdr implements zzdan, zzdcj, zzffg, com.google.android.gms.ads.internal.overlay.zzr, zzddb, zzdba, zzdir {

    /* renamed from: c, reason: collision with root package name */
    public final zzfjv f7252c;
    public final AtomicReference f = new AtomicReference();
    public final AtomicReference g = new AtomicReference();
    public final AtomicReference h = new AtomicReference();
    public final AtomicReference i = new AtomicReference();
    public final AtomicReference j = new AtomicReference();
    public final AtomicReference k = new AtomicReference();
    public zzfdr l = null;

    public zzfdr(zzfjv zzfjvVar) {
        this.f7252c = zzfjvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void P() {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.P();
        } else {
            zzfey.a(this.h, zzfdp.f7250a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void S(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.S(zzeVar);
            return;
        }
        zzfex zzfexVar = new zzfex() { // from class: com.google.android.gms.internal.ads.zzfdh
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((zzbeg) obj).zzd(com.google.android.gms.ads.internal.client.zze.this);
            }
        };
        AtomicReference atomicReference = this.f;
        zzfey.a(atomicReference, zzfexVar);
        zzfey.a(atomicReference, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfdi
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((zzbeg) obj).zzc(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddb
    public final void a(final com.google.android.gms.ads.internal.client.zzt zztVar) {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.a(zztVar);
        } else {
            zzfey.a(this.k, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfdl
                @Override // com.google.android.gms.internal.ads.zzfex
                public final /* synthetic */ void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.client.zzdt) obj).zze(com.google.android.gms.ads.internal.client.zzt.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzffg
    public final void b(zzffg zzffgVar) {
        this.l = (zzfdr) zzffgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void d0() {
    }

    public final void f(final zzcsx zzcsxVar) {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.f(zzcsxVar);
        } else {
            zzfey.a(this.f, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfdg
                @Override // com.google.android.gms.internal.ads.zzfex
                public final /* synthetic */ void zza(Object obj) {
                    ((zzbeg) obj).r4(zzcsx.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void g(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.g(zzeVar);
        } else {
            zzfey.a(this.h, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfdk
                @Override // com.google.android.gms.internal.ads.zzfex
                public final /* synthetic */ void zza(Object obj) {
                    ((zzbek) obj).zze(com.google.android.gms.ads.internal.client.zze.this);
                }
            });
        }
    }

    public final void i() {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.i();
            return;
        }
        zzfju zzfjuVar = this.f7252c.f7421a;
        if (zzfjuVar != null) {
            zzfkv zzfkvVar = ((zzfku) zzfjuVar).f7442a;
            synchronized (zzfkvVar) {
                zzfkvVar.e = 1;
                zzfkvVar.b();
            }
        }
        zzfey.a(this.g, zzfdm.f7247a);
        zzfey.a(this.h, zzfdq.f7251a);
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdS() {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.zzdS();
        } else {
            zzfey.a(this.j, zzfdd.f7238a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdT(final int i) {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.zzdT(i);
        } else {
            zzfey.a(this.j, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfdj
                @Override // com.google.android.gms.internal.ads.zzfex
                public final /* synthetic */ void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.overlay.zzr) obj).zzdT(i);
                }
            });
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdo() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdp() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdq() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdv() {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.zzdv();
        } else {
            zzfey.a(this.j, zzfde.f7239a);
        }
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdw() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdx() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdy() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzdz() {
    }

    @Override // com.google.android.gms.ads.internal.overlay.zzr
    public final void zzh() {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.zzh();
            return;
        }
        zzfey.a(this.j, zzfdf.f7240a);
        zzfdn zzfdnVar = zzfdn.f7248a;
        AtomicReference atomicReference = this.h;
        zzfey.a(atomicReference, zzfdnVar);
        zzfey.a(atomicReference, zzfdo.f7249a);
    }

    @Override // com.google.android.gms.internal.ads.zzdcj
    public final void zzl() {
        zzfdr zzfdrVar = this.l;
        if (zzfdrVar != null) {
            zzfdrVar.zzl();
        } else {
            zzfey.a(this.i, zzfdc.f7237a);
        }
    }
}
