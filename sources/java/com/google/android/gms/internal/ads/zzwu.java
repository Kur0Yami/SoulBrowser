package com.google.android.gms.internal.ads;

import com.google.android.gms.ads.RequestConfiguration;
import java.util.ArrayList;
import java.util.Collections;
import java.util.HashMap;
import java.util.IdentityHashMap;

/* loaded from: classes.dex */
final class zzwu implements zzwe, zzwd {

    /* renamed from: c, reason: collision with root package name */
    public final zzwe[] f9352c;
    public final boolean[] f;
    public final IdentityHashMap g;
    public final ArrayList h = new ArrayList();
    public final HashMap i = new HashMap();
    public zzwd j;
    public zzyh k;
    public zzwe[] l;
    public zzvq m;

    public zzwu(long[] jArr, zzwe... zzweVarArr) {
        this.f9352c = zzweVarArr;
        zzgvs zzgvsVar = zzgtd.f;
        zzgtd zzgtdVar = zzguy.i;
        this.m = new zzvq(zzgtdVar, zzgtdVar);
        this.g = new IdentityHashMap();
        this.l = new zzwe[0];
        this.f = new boolean[zzweVarArr.length];
        for (int i = 0; i < zzweVarArr.length; i++) {
            long j = jArr[i];
            if (j != 0) {
                this.f[i] = true;
                this.f9352c[i] = new zzye(zzweVarArr[i], j);
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean a(zzli zzliVar) {
        ArrayList arrayList = this.h;
        if (!arrayList.isEmpty()) {
            int size = arrayList.size();
            for (int i = 0; i < size; i++) {
                ((zzwe) arrayList.get(i)).a(zzliVar);
            }
            return false;
        }
        return this.m.a(zzliVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long b(long j) {
        long b = this.l[0].b(j);
        int i = 1;
        while (true) {
            zzwe[] zzweVarArr = this.l;
            if (i < zzweVarArr.length) {
                if (zzweVarArr[i].b(b) == b) {
                    i++;
                } else {
                    throw new IllegalStateException("Unexpected child seekToUs result.");
                }
            } else {
                return b;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long c(long j, zzmq zzmqVar) {
        zzwe zzweVar;
        zzwe[] zzweVarArr = this.l;
        if (zzweVarArr.length > 0) {
            zzweVar = zzweVarArr[0];
        } else {
            zzweVar = this.f9352c[0];
        }
        return zzweVar.c(j, zzmqVar);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void d(long j) {
        for (zzwe zzweVar : this.l) {
            zzweVar.d(j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwd
    public final void e(zzwe zzweVar) {
        zzwe[] zzweVarArr;
        ArrayList arrayList = this.h;
        arrayList.remove(zzweVar);
        if (!arrayList.isEmpty()) {
            return;
        }
        int i = 0;
        int i2 = 0;
        while (true) {
            zzweVarArr = this.f9352c;
            if (i >= zzweVarArr.length) {
                break;
            }
            i2 += zzweVarArr[i].zzd().f9388a;
            i++;
        }
        zzbg[] zzbgVarArr = new zzbg[i2];
        int i3 = 0;
        for (int i4 = 0; i4 < zzweVarArr.length; i4++) {
            zzyh zzd = zzweVarArr[i4].zzd();
            int i5 = zzd.f9388a;
            int i6 = 0;
            while (i6 < i5) {
                zzbg a2 = zzd.a(i6);
                int i7 = a2.f4645a;
                zzv[] zzvVarArr = new zzv[i7];
                int i8 = 0;
                while (i8 < i7) {
                    zzv zzvVar = a2.d[i8];
                    zzvVar.getClass();
                    zzt zztVar = new zzt(zzvVar);
                    String str = zzvVar.f9308a;
                    if (str == null) {
                        str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    zzwe[] zzweVarArr2 = zzweVarArr;
                    StringBuilder sb = new StringBuilder(str.length() + androidx.work.impl.workers.a.a(i4, 1));
                    sb.append(i4);
                    sb.append(":");
                    sb.append(str);
                    zztVar.f9265a = sb.toString();
                    zzvVarArr[i8] = new zzv(zztVar);
                    i8++;
                    zzweVarArr = zzweVarArr2;
                }
                zzwe[] zzweVarArr3 = zzweVarArr;
                String str2 = a2.b;
                StringBuilder sb2 = new StringBuilder(androidx.work.impl.workers.a.a(i4, 1) + String.valueOf(str2).length());
                sb2.append(i4);
                sb2.append(":");
                sb2.append(str2);
                zzbg zzbgVar = new zzbg(sb2.toString(), zzvVarArr);
                this.i.put(zzbgVar, a2);
                zzbgVarArr[i3] = zzbgVar;
                i6++;
                i3++;
                zzweVarArr = zzweVarArr3;
            }
        }
        this.k = new zzyh(zzbgVarArr);
        zzwd zzwdVar = this.j;
        zzwdVar.getClass();
        zzwdVar.e(this);
    }

    @Override // com.google.android.gms.internal.ads.zzxx
    public final /* bridge */ /* synthetic */ void f(zzxy zzxyVar) {
        zzwd zzwdVar = this.j;
        zzwdVar.getClass();
        zzwdVar.f(this);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long g(zzzw[] zzzwVarArr, boolean[] zArr, zzxw[] zzxwVarArr, boolean[] zArr2, long j) {
        int length;
        IdentityHashMap identityHashMap;
        zzxw zzxwVar;
        int[] iArr;
        int[] iArr2;
        Integer num;
        int intValue;
        int length2 = zzzwVarArr.length;
        int[] iArr3 = new int[length2];
        int[] iArr4 = new int[length2];
        int i = 0;
        int i2 = 0;
        while (true) {
            length = zzzwVarArr.length;
            identityHashMap = this.g;
            if (i2 >= length) {
                break;
            }
            zzxw zzxwVar2 = zzxwVarArr[i2];
            if (zzxwVar2 == null) {
                num = null;
            } else {
                num = (Integer) identityHashMap.get(zzxwVar2);
            }
            if (num == null) {
                intValue = -1;
            } else {
                intValue = num.intValue();
            }
            iArr3[i2] = intValue;
            zzzw zzzwVar = zzzwVarArr[i2];
            if (zzzwVar != null) {
                String str = zzzwVar.zza().b;
                iArr4[i2] = Integer.parseInt(str.substring(0, str.indexOf(":")));
            } else {
                iArr4[i2] = -1;
            }
            i2++;
        }
        identityHashMap.clear();
        zzxw[] zzxwVarArr2 = new zzxw[length];
        zzxw[] zzxwVarArr3 = new zzxw[length];
        zzzw[] zzzwVarArr2 = new zzzw[length];
        zzwe[] zzweVarArr = this.f9352c;
        ArrayList arrayList = new ArrayList(zzweVarArr.length);
        long j2 = j;
        int i3 = 0;
        while (i3 < zzweVarArr.length) {
            int i4 = i;
            while (i4 < zzzwVarArr.length) {
                if (iArr3[i4] == i3) {
                    zzxwVar = zzxwVarArr[i4];
                } else {
                    zzxwVar = null;
                }
                zzxwVarArr3[i4] = zzxwVar;
                if (iArr4[i4] == i3) {
                    zzzw zzzwVar2 = zzzwVarArr[i4];
                    zzzwVar2.getClass();
                    iArr = iArr4;
                    iArr2 = iArr3;
                    zzbg zzbgVar = (zzbg) this.i.get(zzzwVar2.zza());
                    zzbgVar.getClass();
                    zzzwVarArr2[i4] = new zzwt(zzzwVar2, zzbgVar);
                } else {
                    iArr = iArr4;
                    iArr2 = iArr3;
                    zzzwVarArr2[i4] = null;
                }
                i4++;
                iArr4 = iArr;
                iArr3 = iArr2;
            }
            int[] iArr5 = iArr4;
            int[] iArr6 = iArr3;
            ArrayList arrayList2 = arrayList;
            zzwe[] zzweVarArr2 = zzweVarArr;
            int i5 = i3;
            long g = zzweVarArr[i3].g(zzzwVarArr2, zArr, zzxwVarArr3, zArr2, j2);
            if (i5 == 0) {
                j2 = g;
            } else if (g != j2) {
                throw new IllegalStateException("Children enabled at different positions.");
            }
            boolean z = false;
            for (int i6 = 0; i6 < zzzwVarArr.length; i6++) {
                boolean z2 = true;
                if (iArr5[i6] == i5) {
                    zzxw zzxwVar3 = zzxwVarArr3[i6];
                    zzxwVar3.getClass();
                    zzxwVarArr2[i6] = zzxwVar3;
                    identityHashMap.put(zzxwVar3, Integer.valueOf(i5));
                    z = true;
                } else if (iArr6[i6] == i5) {
                    if (zzxwVarArr3[i6] != null) {
                        z2 = false;
                    }
                    zzgqa.f(z2);
                }
            }
            if (z) {
                arrayList2.add(zzweVarArr2[i5]);
            }
            i3 = i5 + 1;
            arrayList = arrayList2;
            zzweVarArr = zzweVarArr2;
            iArr4 = iArr5;
            iArr3 = iArr6;
            i = 0;
        }
        int i7 = i;
        ArrayList arrayList3 = arrayList;
        System.arraycopy(zzxwVarArr2, i7, zzxwVarArr, i7, length);
        this.l = (zzwe[]) arrayList3.toArray(new zzwe[i7]);
        this.m = new zzvq(arrayList3, zzgud.b(arrayList3, zzws.f9351a));
        return j2;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void h(zzwd zzwdVar, long j) {
        this.j = zzwdVar;
        ArrayList arrayList = this.h;
        zzwe[] zzweVarArr = this.f9352c;
        Collections.addAll(arrayList, zzweVarArr);
        for (zzwe zzweVar : zzweVarArr) {
            zzweVar.h(this, j);
        }
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final void i(long j) {
        this.m.i(j);
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final void zzc() {
        int i = 0;
        while (true) {
            zzwe[] zzweVarArr = this.f9352c;
            if (i < zzweVarArr.length) {
                zzweVarArr[i].zzc();
                i++;
            } else {
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final zzyh zzd() {
        zzyh zzyhVar = this.k;
        zzyhVar.getClass();
        return zzyhVar;
    }

    @Override // com.google.android.gms.internal.ads.zzwe
    public final long zzh() {
        long j = -9223372036854775807L;
        for (zzwe zzweVar : this.l) {
            long zzh = zzweVar.zzh();
            if (zzh != -9223372036854775807L) {
                if (j == -9223372036854775807L) {
                    for (zzwe zzweVar2 : this.l) {
                        if (zzweVar2 == zzweVar) {
                            break;
                        }
                        if (zzweVar2.b(zzh) != zzh) {
                            throw new IllegalStateException("Unexpected child seekToUs result.");
                        }
                    }
                    j = zzh;
                } else if (zzh != j) {
                    throw new IllegalStateException("Conflicting discontinuities.");
                }
            } else if (j != -9223372036854775807L && zzweVar.b(j) != j) {
                throw new IllegalStateException("Unexpected child seekToUs result.");
            }
        }
        return j;
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzi() {
        return this.m.zzi();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final long zzl() {
        return this.m.zzl();
    }

    @Override // com.google.android.gms.internal.ads.zzxy
    public final boolean zzn() {
        return this.m.zzn();
    }
}
