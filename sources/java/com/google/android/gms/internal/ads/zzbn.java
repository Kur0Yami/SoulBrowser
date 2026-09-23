package com.google.android.gms.internal.ads;

import java.util.List;

/* loaded from: classes.dex */
public final class zzbn {
    public static final zzbn b;

    /* renamed from: a, reason: collision with root package name */
    public final zzgtd f4770a;

    static {
        zzgvs zzgvsVar = zzgtd.f;
        b = new zzbn(zzguy.i);
        String str = zzfj.f7405a;
        Integer.toString(0, 36);
    }

    public zzbn(List list) {
        this.f4770a = zzgtd.v(list);
    }

    public final boolean a(int i) {
        int i2 = 0;
        while (true) {
            zzgtd zzgtdVar = this.f4770a;
            if (i2 >= zzgtdVar.size()) {
                return false;
            }
            zzbm zzbmVar = (zzbm) zzgtdVar.get(i2);
            boolean[] zArr = zzbmVar.e;
            int length = zArr.length;
            int i3 = 0;
            while (true) {
                if (i3 >= length) {
                    break;
                }
                if (zArr[i3]) {
                    if (zzbmVar.b.f4646c == i) {
                        return true;
                    }
                } else {
                    i3++;
                }
            }
            i2++;
        }
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj != null && zzbn.class == obj.getClass()) {
            return this.f4770a.equals(((zzbn) obj).f4770a);
        }
        return false;
    }

    public final int hashCode() {
        return this.f4770a.hashCode();
    }
}
