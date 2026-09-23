package com.google.android.gms.internal.ads;

import android.net.Uri;
import android.os.Looper;

/* loaded from: classes.dex */
public final class zzxo extends zzvf implements zzxc {
    public final zzha h;
    public final zzwy i;
    public final int k;
    public boolean n;
    public boolean o;
    public zzhz p;
    public zzak q;
    public final zztk j = zztk.f9271a;
    public boolean l = true;
    public long m = -9223372036854775807L;

    public /* synthetic */ zzxo(zzak zzakVar, zzha zzhaVar, zzwy zzwyVar, zzaaq zzaaqVar, int i) {
        this.q = zzakVar;
        this.h = zzhaVar;
        this.i = zzwyVar;
        this.k = i;
    }

    @Override // com.google.android.gms.internal.ads.zzvf, com.google.android.gms.internal.ads.zzwi
    public final synchronized void d(zzak zzakVar) {
        this.q = zzakVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void i(zzwe zzweVar) {
        zzxk zzxkVar = (zzxk) zzweVar;
        if (zzxkVar.y) {
            for (zzxv zzxvVar : zzxkVar.v) {
                zzxvVar.r();
                if (zzxvVar.g != null) {
                    zzxvVar.g = null;
                    zzxvVar.f = null;
                }
            }
        }
        zzaaz zzaazVar = zzxkVar.n;
        zzaau zzaauVar = zzaazVar.b;
        if (zzaauVar != null) {
            zzaauVar.a(true);
        }
        zzabe zzabeVar = (zzabe) zzaazVar.f3859a;
        zzabeVar.execute(new zzaax(zzxkVar));
        zzaas.f3855a.zza(zzabeVar.f3867c);
        zzxkVar.s.removeCallbacksAndMessages(null);
        zzxkVar.t = null;
        zzxkVar.Q = true;
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final zzwe j(zzwg zzwgVar, zzaah zzaahVar, long j) {
        zzhb zza = this.h.zza();
        zzhz zzhzVar = this.p;
        if (zzhzVar != null) {
            zza.c(zzhzVar);
        }
        zzag zzagVar = zzJ().b;
        zzagVar.getClass();
        Uri uri = zzagVar.f3994a;
        this.g.getClass();
        return new zzxk(uri, zza, new zzvi(((zzxm) this.i).f9366a), this.j, new zztf(this.d.b, zzwgVar), new zzwq(this.f9314c.b, zzwgVar), this, zzaahVar, this.k, zzfj.s(-9223372036854775807L));
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void m(zzhz zzhzVar) {
        this.p = zzhzVar;
        Looper.myLooper().getClass();
        this.g.getClass();
        s();
    }

    @Override // com.google.android.gms.internal.ads.zzvf
    public final void o() {
    }

    public final void q(long j, zzafr zzafrVar, boolean z) {
        if (j == -9223372036854775807L) {
            j = this.m;
        }
        boolean zzb = zzafrVar.zzb();
        if (!this.l && this.m == j && this.n == zzb && this.o == z) {
            return;
        }
        this.m = j;
        this.n = zzb;
        this.o = z;
        this.l = false;
        s();
    }

    public final void s() {
        zzaf zzafVar;
        long j = this.m;
        boolean z = this.n;
        boolean z2 = this.o;
        zzak zzJ = zzJ();
        if (z2) {
            zzafVar = zzJ.f4115c;
        } else {
            zzafVar = null;
        }
        zzbf zzyaVar = new zzya(j, j, z, zzJ, zzafVar);
        if (this.l) {
            zzyaVar = new zzvu(zzyaVar);
        }
        p(zzyaVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final synchronized zzak zzJ() {
        return this.q;
    }

    @Override // com.google.android.gms.internal.ads.zzwi
    public final void zzt() {
    }
}
