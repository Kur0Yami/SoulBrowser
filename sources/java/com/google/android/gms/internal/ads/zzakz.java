package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.Arrays;

/* loaded from: classes.dex */
public final class zzakz implements zzafv {

    /* renamed from: a, reason: collision with root package name */
    public final int f4149a;
    public final zzgwv b;

    public zzakz(int i, int[] iArr) {
        zzgwv zzgwvVar;
        this.f4149a = i;
        if (iArr != null) {
            int[] copyOf = Arrays.copyOf(iArr, iArr.length);
            zzgwvVar = new zzgwv(copyOf.length, copyOf);
        } else {
            zzgwvVar = zzgwv.g;
        }
        this.b = zzgwvVar;
    }

    public final String toString() {
        zzgwv zzgwvVar = this.b;
        ArrayList arrayList = new ArrayList(zzgwvVar.f);
        int i = 0;
        while (true) {
            int i2 = zzgwvVar.f;
            if (i < i2) {
                zzgqa.i(i, i2);
                arrayList.add(zzfj.x(zzgwvVar.f8280c[i]));
                i++;
            } else {
                String x = zzfj.x(this.f4149a);
                String obj = arrayList.toString();
                StringBuilder sb = new StringBuilder(androidx.work.impl.workers.a.d(x.length() + 37, 1, obj));
                sb.append("UnsupportedBrands{major=");
                sb.append(x);
                sb.append(", compatible=");
                sb.append(obj);
                sb.append("}");
                return sb.toString();
            }
        }
    }
}
