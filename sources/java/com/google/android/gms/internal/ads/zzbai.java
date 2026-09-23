package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public final class zzbai extends zzbbh {
    public zzbai(zzazt zzaztVar, zzavs zzavsVar, int i) {
        super(zzaztVar, "0k0HoJtCvAtrnTz0UbiSqrs0BGKzSTMoo+ZxCfyJrLcMn8tbsvf/NG2/ui2bKbWP", "z6GzXqyR8kvBYJKVLhMc9mqmsbq6ZkNeWqgTkONnpqg=", zzavsVar, i, 5);
    }

    @Override // com.google.android.gms.internal.ads.zzbbh
    public final void a() {
        zzavs zzavsVar = this.d;
        zzavsVar.k();
        ((zzawp) zzavsVar.f).K0(-1L);
        zzavsVar.k();
        ((zzawp) zzavsVar.f).L0(-1L);
        int[] iArr = (int[]) this.e.invoke(null, this.f4531a.f4510a);
        synchronized (zzavsVar) {
            long j = iArr[0];
            zzavsVar.k();
            ((zzawp) zzavsVar.f).K0(j);
            long j2 = iArr[1];
            zzavsVar.k();
            ((zzawp) zzavsVar.f).L0(j2);
            int i = iArr[2];
            if (i != Integer.MIN_VALUE) {
                zzavsVar.k();
                ((zzawp) zzavsVar.f).b0(i);
            }
        }
    }
}
