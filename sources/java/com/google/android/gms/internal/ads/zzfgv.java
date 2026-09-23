package com.google.android.gms.internal.ads;

import android.os.Parcel;
import com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzfgv implements OnAdMetadataChangedListener, zzdby, zzdan, zzdak, zzdba, zzddb, zzffg, zzdir {

    /* renamed from: c, reason: collision with root package name */
    public final zzfjv f7342c;
    public final AtomicReference f = new AtomicReference();
    public final AtomicReference g = new AtomicReference();
    public final AtomicReference h = new AtomicReference();
    public final AtomicReference i = new AtomicReference();
    public final AtomicReference j = new AtomicReference();
    public final AtomicReference k = new AtomicReference();
    public final AtomicReference l = new AtomicReference();
    public zzfgv m = null;

    public zzfgv(zzfjv zzfjvVar) {
        this.f7342c = zzfjvVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void J() {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.J();
        } else {
            zzfey.a(this.i, zzfgq.f7337a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void P() {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.P();
        } else {
            zzfey.a(this.h, zzfgl.f7332a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdan
    public final void S(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.S(zzeVar);
            return;
        }
        final int i = zzeVar.zza;
        zzfex zzfexVar = new zzfex() { // from class: com.google.android.gms.internal.ads.zzfgi
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((zzcam) obj).c(com.google.android.gms.ads.internal.client.zze.this);
            }
        };
        AtomicReference atomicReference = this.g;
        zzfey.a(atomicReference, zzfexVar);
        zzfey.a(atomicReference, new zzfex() { // from class: com.google.android.gms.internal.ads.zzffz
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((zzcam) obj).zzf(i);
            }
        });
        zzfey.a(this.i, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfga
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((zzbzs) obj).h(i);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void U(final zzbzj zzbzjVar, final String str, final String str2) {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.U(zzbzjVar, str, str2);
            return;
        }
        zzfey.a(this.h, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfgb
            @Override // com.google.android.gms.internal.ads.zzfex
            public final void zza(Object obj) {
                zzbzj zzbzjVar2 = zzbzj.this;
                ((zzcai) obj).R(new zzcaw(zzbzjVar2.f4989c, zzbzjVar2.f));
            }
        });
        zzfey.a(this.j, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfgc
            @Override // com.google.android.gms.internal.ads.zzfex
            public final void zza(Object obj) {
                zzcan zzcanVar = (zzcan) obj;
                zzbzj zzbzjVar2 = zzbzj.this;
                zzcaw zzcawVar = new zzcaw(zzbzjVar2.f4989c, zzbzjVar2.f);
                Parcel I1 = zzcanVar.I1();
                zzbcd.e(I1, zzcawVar);
                I1.writeString(str);
                I1.writeString(str2);
                zzcanVar.r2(2, I1);
            }
        });
        zzfey.a(this.i, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfgd
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((zzbzs) obj).e4(zzbzj.this);
            }
        });
        zzfey.a(this.k, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfge
            @Override // com.google.android.gms.internal.ads.zzfex
            public final void zza(Object obj) {
                zzbzn zzbznVar = (zzbzn) obj;
                Parcel I1 = zzbznVar.I1();
                zzbcd.e(I1, zzbzj.this);
                I1.writeString(str);
                I1.writeString(str2);
                zzbznVar.r2(2, I1);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzddb
    public final void a(final com.google.android.gms.ads.internal.client.zzt zztVar) {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.a(zztVar);
        } else {
            zzfey.a(this.l, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfgh
                @Override // com.google.android.gms.internal.ads.zzfex
                public final /* synthetic */ void zza(Object obj) {
                    ((com.google.android.gms.ads.internal.client.zzdt) obj).zze(com.google.android.gms.ads.internal.client.zzt.this);
                }
            });
        }
    }

    @Override // com.google.android.gms.internal.ads.zzffg
    public final void b(zzffg zzffgVar) {
        this.m = (zzfgv) zzffgVar;
    }

    @Override // com.google.android.gms.internal.ads.zzdir
    public final void d0() {
    }

    @Override // com.google.android.gms.internal.ads.zzdba
    public final void g(final com.google.android.gms.ads.internal.client.zze zzeVar) {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.g(zzeVar);
            return;
        }
        zzfex zzfexVar = new zzfex() { // from class: com.google.android.gms.internal.ads.zzfgf
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((zzcai) obj).c4(com.google.android.gms.ads.internal.client.zze.this);
            }
        };
        AtomicReference atomicReference = this.h;
        zzfey.a(atomicReference, zzfexVar);
        zzfey.a(atomicReference, new zzfex() { // from class: com.google.android.gms.internal.ads.zzfgg
            @Override // com.google.android.gms.internal.ads.zzfex
            public final /* synthetic */ void zza(Object obj) {
                ((zzcai) obj).e(com.google.android.gms.ads.internal.client.zze.this.zza);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void i0() {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.i0();
            return;
        }
        zzfgm zzfgmVar = zzfgm.f7333a;
        AtomicReference atomicReference = this.h;
        zzfey.a(atomicReference, zzfgmVar);
        zzfey.a(this.i, zzfgo.f7335a);
        zzfey.a(atomicReference, zzfgj.f7330a);
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void o() {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.o();
            return;
        }
        zzfju zzfjuVar = this.f7342c.f7421a;
        if (zzfjuVar != null) {
            zzfkv zzfkvVar = ((zzfku) zzfjuVar).f7442a;
            synchronized (zzfkvVar) {
                zzfkvVar.e = 1;
                zzfkvVar.b();
            }
        }
        zzfey.a(this.h, zzfgk.f7331a);
        zzfey.a(this.i, zzfgp.f7336a);
    }

    @Override // com.google.android.gms.ads.rewarded.OnAdMetadataChangedListener
    public final void onAdMetadataChanged() {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.onAdMetadataChanged();
        } else {
            zzfey.a(this.f, zzfgu.f7341a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zze() {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.zze();
        } else {
            zzfey.a(this.i, zzfgr.f7338a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdak
    public final void zzf() {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.zzf();
        } else {
            zzfey.a(this.i, zzfgs.f7339a);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzdby
    public final void zzg() {
        zzfgv zzfgvVar = this.m;
        if (zzfgvVar != null) {
            zzfgvVar.zzg();
        } else {
            zzfey.a(this.g, zzfgn.f7334a);
            zzfey.a(this.i, zzfgt.f7340a);
        }
    }
}
