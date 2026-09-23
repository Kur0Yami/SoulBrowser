package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzbf {

    /* renamed from: a, reason: collision with root package name */
    public final String[] f3123a;
    public final double[] b;

    /* renamed from: c, reason: collision with root package name */
    public final double[] f3124c;
    public final int[] d;
    public int e;

    public zzbf(zzbe zzbeVar) {
        ArrayList arrayList = zzbeVar.b;
        int size = arrayList.size();
        this.f3123a = (String[]) zzbeVar.f3121a.toArray(new String[size]);
        int size2 = arrayList.size();
        double[] dArr = new double[size2];
        for (int i = 0; i < size2; i++) {
            dArr[i] = ((Double) arrayList.get(i)).doubleValue();
        }
        this.b = dArr;
        ArrayList arrayList2 = zzbeVar.f3122c;
        int size3 = arrayList2.size();
        double[] dArr2 = new double[size3];
        for (int i2 = 0; i2 < size3; i2++) {
            dArr2[i2] = ((Double) arrayList2.get(i2)).doubleValue();
        }
        this.f3124c = dArr2;
        this.d = new int[size];
        this.e = 0;
    }

    public final void zza(double d) {
        this.e++;
        int i = 0;
        while (true) {
            double[] dArr = this.f3124c;
            if (i < dArr.length) {
                double d2 = dArr[i];
                if (d2 <= d && d < this.b[i]) {
                    int[] iArr = this.d;
                    iArr[i] = iArr[i] + 1;
                }
                if (d >= d2) {
                    i++;
                } else {
                    return;
                }
            } else {
                return;
            }
        }
    }

    public final List zzb() {
        String[] strArr = this.f3123a;
        ArrayList arrayList = new ArrayList(strArr.length);
        for (int i = 0; i < strArr.length; i++) {
            String str = strArr[i];
            double d = this.f3124c[i];
            double d2 = this.b[i];
            int i2 = this.d[i];
            arrayList.add(new zzbd(str, d, d2, i2 / this.e, i2));
        }
        return arrayList;
    }
}
