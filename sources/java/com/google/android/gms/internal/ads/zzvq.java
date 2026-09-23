package com.google.android.gms.internal.ads;

import java.util.List;
import kotlin.jvm.internal.LongCompanionObject;

/* loaded from: classes.dex */
public final class zzvq implements zzxy {

    /* renamed from: c, reason: collision with root package name */
    public final zzgtd f9327c;
    public long f;

    /* JADX WARN: Type inference failed for: r0v1, types: [com.google.android.gms.internal.ads.zzgta, com.google.android.gms.internal.ads.zzgsx] */
    public zzvq(List list, List list2) {
        boolean z;
        zzgvs zzgvsVar = zzgtd.f;
        ?? zzgsxVar = new zzgsx(4);
        if (list.size() == list2.size()) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        for (int i = 0; i < list.size(); i++) {
            zzgsxVar.c(new zzvp((zzxy) list.get(i), (List) list2.get(i)));
        }
        this.f9327c = zzgsxVar.f();
        this.f = -9223372036854775807L;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean a(zzli zzliVar) {
        boolean z;
        boolean z2;
        boolean z3 = false;
        do {
            long zzl = zzl();
            if (zzl == Long.MIN_VALUE) {
                break;
            }
            int i = 0;
            z = false;
            while (true) {
                zzguy zzguyVar = (zzguy) this.f9327c;
                if (i >= zzguyVar.h) {
                    break;
                }
                long zzl2 = ((zzvp) zzguyVar.get(i)).f9326c.zzl();
                if (zzl2 != Long.MIN_VALUE && zzl2 <= zzliVar.f9087a) {
                    z2 = true;
                } else {
                    z2 = false;
                }
                if (zzl2 == zzl || z2) {
                    z |= ((zzvp) zzguyVar.get(i)).f9326c.a(zzliVar);
                }
                i++;
            }
            z3 |= z;
        } while (z);
        return z3;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final void i(long j) {
        int i = 0;
        while (true) {
            zzgtd zzgtdVar = this.f9327c;
            if (i < ((zzguy) zzgtdVar).h) {
                ((zzvp) ((zzguy) zzgtdVar).get(i)).i(j);
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzi() {
        int i = 0;
        long j = Long.MAX_VALUE;
        long j2 = Long.MAX_VALUE;
        while (true) {
            zzgtd zzgtdVar = this.f9327c;
            if (i >= ((zzguy) zzgtdVar).h) {
                break;
            }
            zzvp zzvpVar = (zzvp) ((zzguy) zzgtdVar).get(i);
            long zzi = zzvpVar.zzi();
            zzgtd zzgtdVar2 = zzvpVar.f;
            if ((zzgtdVar2.contains(1) || zzgtdVar2.contains(2) || zzgtdVar2.contains(4)) && zzi != Long.MIN_VALUE) {
                j = Math.min(j, zzi);
            }
            if (zzi != Long.MIN_VALUE) {
                j2 = Math.min(j2, zzi);
            }
            i++;
        }
        if (j != LongCompanionObject.MAX_VALUE) {
            this.f = j;
            return j;
        }
        if (j2 == LongCompanionObject.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        long j3 = this.f;
        if (j3 != -9223372036854775807L) {
            return j3;
        }
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzl() {
        int i = 0;
        long j = Long.MAX_VALUE;
        while (true) {
            zzgtd zzgtdVar = this.f9327c;
            if (i >= ((zzguy) zzgtdVar).h) {
                break;
            }
            long zzl = ((zzvp) ((zzguy) zzgtdVar).get(i)).zzl();
            if (zzl != Long.MIN_VALUE) {
                j = Math.min(j, zzl);
            }
            i++;
        }
        if (j == LongCompanionObject.MAX_VALUE) {
            return Long.MIN_VALUE;
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean zzn() {
        int i = 0;
        while (true) {
            zzgtd zzgtdVar = this.f9327c;
            if (i >= ((zzguy) zzgtdVar).h) {
                return false;
            }
            if (((zzvp) ((zzguy) zzgtdVar).get(i)).zzn()) {
                return true;
            }
            i++;
        }
    }
}
