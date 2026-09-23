package com.google.android.gms.internal.ads;

import java.util.Arrays;

/* loaded from: classes.dex */
public class zzyq implements zzzw {

    /* renamed from: a, reason: collision with root package name */
    public final zzbg f9392a;
    public final int b;

    /* renamed from: c, reason: collision with root package name */
    public final int[] f9393c;
    public final zzv[] d;
    public int e;

    public zzyq(zzbg zzbgVar, int[] iArr) {
        boolean z;
        int length = iArr.length;
        if (length > 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.f(z);
        zzbgVar.getClass();
        zzv[] zzvVarArr = zzbgVar.d;
        this.f9392a = zzbgVar;
        this.b = length;
        this.d = new zzv[length];
        for (int i = 0; i < iArr.length; i++) {
            this.d[i] = zzvVarArr[iArr[i]];
        }
        Arrays.sort(this.d, zzyp.f9391c);
        this.f9393c = new int[this.b];
        for (int i2 = 0; i2 < this.b; i2++) {
            int[] iArr2 = this.f9393c;
            zzv zzvVar = this.d[i2];
            int i3 = 0;
            while (true) {
                if (i3 < zzvVarArr.length) {
                    if (zzvVar == zzvVarArr[i3]) {
                        break;
                    } else {
                        i3++;
                    }
                } else {
                    i3 = -1;
                    break;
                }
            }
            iArr2[i2] = i3;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && getClass() == obj.getClass()) {
            zzyq zzyqVar = (zzyq) obj;
            if (this.f9392a.equals(zzyqVar.f9392a) && Arrays.equals(this.f9393c, zzyqVar.f9393c)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        int i = this.e;
        if (i == 0) {
            int hashCode = Arrays.hashCode(this.f9393c) + (System.identityHashCode(this.f9392a) * 31);
            this.e = hashCode;
            return hashCode;
        }
        return i;
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final int p(int i) {
        for (int i2 = 0; i2 < this.b; i2++) {
            if (this.f9393c[i2] == i) {
                return i2;
            }
        }
        return -1;
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final zzbg zza() {
        return this.f9392a;
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final zzv zzb(int i) {
        return this.d[i];
    }

    @Override // com.google.android.gms.internal.ads.zzzw
    public final zzv zzc() {
        return this.d[0];
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final int zze() {
        return this.f9393c.length;
    }

    @Override // com.google.android.gms.internal.ads.zzaab
    public final int zzf(int i) {
        return this.f9393c[i];
    }

    @Override // com.google.android.gms.internal.ads.zzzw
    public final int zzh() {
        return this.f9393c[0];
    }
}
