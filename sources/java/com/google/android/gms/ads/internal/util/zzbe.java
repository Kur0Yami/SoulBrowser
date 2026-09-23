package com.google.android.gms.ads.internal.util;

import java.util.ArrayList;

/* loaded from: classes.dex */
public final class zzbe {

    /* renamed from: a, reason: collision with root package name */
    public final ArrayList f3121a = new ArrayList();
    public final ArrayList b = new ArrayList();

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3122c = new ArrayList();

    public final zzbe zza(String str, double d, double d2) {
        ArrayList arrayList;
        ArrayList arrayList2;
        ArrayList arrayList3;
        int i = 0;
        while (true) {
            arrayList = this.f3121a;
            int size = arrayList.size();
            arrayList2 = this.b;
            arrayList3 = this.f3122c;
            if (i >= size) {
                break;
            }
            double doubleValue = ((Double) arrayList3.get(i)).doubleValue();
            double doubleValue2 = ((Double) arrayList2.get(i)).doubleValue();
            if (d < doubleValue || (doubleValue == d && d2 < doubleValue2)) {
                break;
            }
            i++;
        }
        arrayList.add(i, str);
        arrayList3.add(i, Double.valueOf(d));
        arrayList2.add(i, Double.valueOf(d2));
        return this;
    }

    public final zzbf zzb() {
        return new zzbf(this);
    }
}
