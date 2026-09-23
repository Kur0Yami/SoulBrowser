package com.google.android.gms.internal.ads;

import j$.util.DesugarCollections;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
final class zzant implements zzalt {

    /* renamed from: a, reason: collision with root package name */
    public final List f4251a;
    public final long[] b;

    /* renamed from: c, reason: collision with root package name */
    public final long[] f4252c;

    public zzant(ArrayList arrayList) {
        this.f4251a = DesugarCollections.unmodifiableList(new ArrayList(arrayList));
        int size = arrayList.size();
        this.b = new long[size + size];
        for (int i = 0; i < arrayList.size(); i++) {
            zzanj zzanjVar = (zzanj) arrayList.get(i);
            long[] jArr = this.b;
            int i2 = i + i;
            jArr[i2] = zzanjVar.b;
            jArr[i2 + 1] = zzanjVar.f4239c;
        }
        long[] jArr2 = this.b;
        long[] copyOf = Arrays.copyOf(jArr2, jArr2.length);
        this.f4252c = copyOf;
        Arrays.sort(copyOf);
    }

    /* JADX WARN: Type inference failed for: r11v0, types: [java.lang.Object, com.google.android.gms.internal.ads.zzcw] */
    @Override // com.google.android.gms.internal.ads.zzalt
    public final ArrayList b(long j) {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = new ArrayList();
        int i = 0;
        while (true) {
            List list = this.f4251a;
            if (i >= list.size()) {
                break;
            }
            int i2 = i + i;
            long[] jArr = this.b;
            if (jArr[i2] <= j && j < jArr[i2 + 1]) {
                zzanj zzanjVar = (zzanj) list.get(i);
                zzcx zzcxVar = zzanjVar.f4238a;
                if (zzcxVar.e == -3.4028235E38f) {
                    arrayList2.add(zzanjVar);
                } else {
                    arrayList.add(zzcxVar);
                }
            }
            i++;
        }
        Collections.sort(arrayList2, zzans.f4250c);
        for (int i3 = 0; i3 < arrayList2.size(); i3++) {
            zzcx zzcxVar2 = ((zzanj) arrayList2.get(i3)).f4238a;
            ?? obj = new Object();
            obj.f5522a = zzcxVar2.f5553a;
            obj.b = zzcxVar2.d;
            obj.f5523c = zzcxVar2.b;
            obj.d = zzcxVar2.f5554c;
            obj.g = zzcxVar2.g;
            obj.h = zzcxVar2.h;
            obj.i = zzcxVar2.i;
            obj.j = zzcxVar2.l;
            obj.k = zzcxVar2.m;
            obj.l = zzcxVar2.j;
            obj.m = zzcxVar2.k;
            obj.n = zzcxVar2.n;
            obj.o = zzcxVar2.o;
            obj.p = zzcxVar2.p;
            obj.e = (-1) - i3;
            obj.f = 1;
            arrayList.add(obj.b());
        }
        return arrayList;
    }

    @Override // com.google.android.gms.internal.ads.zzalt
    public final int zza() {
        return this.f4252c.length;
    }

    @Override // com.google.android.gms.internal.ads.zzalt
    public final long zzb(int i) {
        boolean z;
        boolean z2 = false;
        if (i >= 0) {
            z = true;
        } else {
            z = false;
        }
        zzgqa.a(z);
        long[] jArr = this.f4252c;
        if (i < jArr.length) {
            z2 = true;
        }
        zzgqa.a(z2);
        return jArr[i];
    }
}
