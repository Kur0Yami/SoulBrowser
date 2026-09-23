package com.google.android.gms.internal.ads;

import android.view.Surface;
import java.util.ArrayDeque;
import java.util.List;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzabn implements zzadl {

    /* renamed from: a, reason: collision with root package name */
    public final zzacm f3875a;
    public final zzacn b;

    /* renamed from: c, reason: collision with root package name */
    public final zzacu f3876c;
    public final ArrayDeque d;
    public Surface e;
    public zzv f;
    public long g;
    public zzadi h;
    public Executor i;
    public zzacj j;

    public zzabn(zzacm zzacmVar, zzacn zzacnVar, zzdn zzdnVar) {
        this.f3875a = zzacmVar;
        this.b = zzacnVar;
        zzacmVar.k = zzdnVar;
        this.f3876c = new zzacu(new zzabm(this), zzacmVar, zzacnVar);
        this.d = new ArrayDeque();
        this.f = new zzv(new zzt());
        this.g = -9223372036854775807L;
        this.h = zzadi.f3923a;
        this.i = zzabi.f3870c;
        this.j = zzabg.f3868c;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void a(float f) {
        this.f3875a.g(f);
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void b(zzadi zzadiVar) {
        this.h = zzadiVar;
        this.i = zzgyb.f8301c;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void c(long j, long j2) {
        try {
            this.f3876c.a(j, j2);
        } catch (zzit e) {
            throw new zzadk(e, this.f);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void d(Surface surface, zzes zzesVar) {
        this.e = surface;
        this.f3875a.c(surface);
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final boolean e(long j, zzadj zzadjVar) {
        this.d.add(zzadjVar);
        zzacu zzacuVar = this.f3876c;
        zzeg zzegVar = zzacuVar.e;
        int i = zzegVar.f6468c;
        long[] jArr = zzegVar.d;
        int length = jArr.length;
        if (i == length) {
            int i2 = length + length;
            if (i2 >= 0) {
                long[] jArr2 = new long[i2];
                int i3 = zzegVar.f6467a;
                int i4 = length - i3;
                System.arraycopy(jArr, i3, jArr2, 0, i4);
                System.arraycopy(zzegVar.d, 0, jArr2, i4, i3);
                zzegVar.f6467a = 0;
                zzegVar.b = zzegVar.f6468c - 1;
                zzegVar.d = jArr2;
                zzegVar.e = i2 - 1;
                jArr = jArr2;
            } else {
                throw new IllegalStateException();
            }
        }
        int i5 = (zzegVar.b + 1) & zzegVar.e;
        zzegVar.b = i5;
        jArr[i5] = j;
        zzegVar.f6468c++;
        zzacuVar.g = j;
        zzacuVar.i = -9223372036854775807L;
        this.i.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzabh
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzabn.this.h.zza();
            }
        });
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void f(List list) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void g(long j) {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void h(zzv zzvVar, long j, int i, List list) {
        long j2;
        long j3;
        zzgqa.f(list.isEmpty());
        int i2 = zzvVar.t;
        int i3 = zzvVar.u;
        zzv zzvVar2 = this.f;
        int i4 = zzvVar2.t;
        zzacu zzacuVar = this.f3876c;
        if (i2 != i4 || i3 != zzvVar2.u) {
            long j4 = zzacuVar.g;
            if (j4 == -9223372036854775807L) {
                j2 = 0;
            } else {
                j2 = j4 + 1;
            }
            zzacuVar.f3911c.a(j2, new zzbv(1.0f, i2, i3));
        }
        float f = zzvVar.x;
        if (f != this.f.x) {
            this.f3875a.d(f);
        }
        this.f = zzvVar;
        if (j != this.g) {
            if (zzacuVar.e.f6468c == 0) {
                zzacuVar.f3910a.a(i);
                zzacuVar.k = j;
            } else {
                zzff zzffVar = zzacuVar.d;
                long j5 = zzacuVar.g;
                if (j5 == -9223372036854775807L) {
                    j3 = -4611686018427387904L;
                } else {
                    j3 = j5 + 1;
                }
                zzffVar.a(j3, Long.valueOf(j));
            }
            this.g = j;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final boolean i(zzv zzvVar) {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void j(zzacj zzacjVar) {
        this.j = zzacjVar;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void l(int i) {
        zzact zzactVar = this.f3875a.b;
        if (zzactVar.j == i) {
            return;
        }
        zzactVar.j = i;
        zzactVar.c(true);
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zza() {
        this.b.a();
        this.f3875a.b();
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzb() {
        this.b.a();
        zzacm zzacmVar = this.f3875a;
        zzacmVar.f3902c = false;
        zzacmVar.h = -9223372036854775807L;
        zzact zzactVar = zzacmVar.b;
        zzactVar.d = false;
        zzacp zzacpVar = zzactVar.f3909c;
        if (zzacpVar != null) {
            zzacpVar.b();
        }
        zzactVar.d();
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final boolean zze() {
        return true;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzf() {
        throw new UnsupportedOperationException();
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzg(boolean z) {
        boolean z2;
        if (z) {
            zzacm zzacmVar = this.f3875a;
            zzacmVar.b.a();
            zzacmVar.g = -9223372036854775807L;
            zzacmVar.e = -9223372036854775807L;
            zzacmVar.d = Math.min(zzacmVar.d, 1);
            zzacmVar.h = -9223372036854775807L;
        }
        this.b.a();
        zzacu zzacuVar = this.f3876c;
        zzeg zzegVar = zzacuVar.e;
        boolean z3 = false;
        zzegVar.f6467a = 0;
        zzegVar.b = -1;
        zzegVar.f6468c = 0;
        zzacuVar.g = -9223372036854775807L;
        zzacuVar.h = -9223372036854775807L;
        zzacuVar.i = -9223372036854775807L;
        zzff zzffVar = zzacuVar.d;
        if (zzffVar.c() > 0) {
            if (zzffVar.c() > 0) {
                z2 = true;
            } else {
                z2 = false;
            }
            zzgqa.a(z2);
            while (zzffVar.c() > 1) {
                zzffVar.d();
            }
            Object d = zzffVar.d();
            d.getClass();
            zzacuVar.k = ((Long) d).longValue();
        }
        zzff zzffVar2 = zzacuVar.f3911c;
        if (zzffVar2.c() > 0) {
            if (zzffVar2.c() > 0) {
                z3 = true;
            }
            zzgqa.a(z3);
            while (zzffVar2.c() > 1) {
                zzffVar2.d();
            }
            Object d2 = zzffVar2.d();
            d2.getClass();
            zzffVar2.a(0L, (zzbv) d2);
        }
        this.d.clear();
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final boolean zzh(boolean z) {
        return this.f3875a.e(z);
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzi() {
        zzacu zzacuVar = this.f3876c;
        long j = zzacuVar.g;
        if (j == -9223372036854775807L) {
            j = Long.MIN_VALUE;
            zzacuVar.g = Long.MIN_VALUE;
            zzacuVar.h = Long.MIN_VALUE;
        }
        zzacuVar.i = j;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final boolean zzj() {
        zzacu zzacuVar = this.f3876c;
        long j = zzacuVar.i;
        if (j != -9223372036854775807L && zzacuVar.h == j) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final Surface zzk() {
        Surface surface = this.e;
        surface.getClass();
        return surface;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzq() {
        this.e = null;
        this.f3875a.c(null);
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzt() {
        zzacm zzacmVar = this.f3875a;
        if (zzacmVar.d == 0) {
            zzacmVar.d = 1;
        }
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzw(boolean z) {
        zzacm zzacmVar = this.f3875a;
        zzacmVar.i = z;
        zzacmVar.h = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzadl
    public final void zzx() {
    }
}
