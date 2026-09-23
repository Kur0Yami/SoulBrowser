package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.ads.a;
import java.nio.charset.Charset;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* loaded from: classes3.dex */
public final class zzdt extends zzfv implements zzhd {
    private static final zzdt zzb;
    private zzga zzd = zzhk.i;

    static {
        zzdt zzdtVar = new zzdt();
        zzb = zzdtVar;
        zzfv.e(zzdt.class, zzdtVar);
    }

    public static zzds q() {
        return (zzds) zzb.j();
    }

    public static void r(zzdt zzdtVar, ArrayList arrayList) {
        zzga zzgaVar = zzdtVar.zzd;
        if (!zzgaVar.zzc()) {
            int size = zzgaVar.size();
            zzdtVar.zzd = zzgaVar.f(size + size);
        }
        List list = zzdtVar.zzd;
        Charset charset = zzgb.f11506a;
        int size2 = arrayList.size();
        if (list instanceof ArrayList) {
            ((ArrayList) list).ensureCapacity(list.size() + size2);
        } else if (list instanceof zzhk) {
            zzhk zzhkVar = (zzhk) list;
            int i = zzhkVar.g + size2;
            int length = zzhkVar.f.length;
            if (i > length) {
                if (length != 0) {
                    while (length < i) {
                        length = a.e(length, 3, 2, 1, 10);
                    }
                    zzhkVar.f = Arrays.copyOf(zzhkVar.f, length);
                } else {
                    zzhkVar.f = new Object[Math.max(i, 10)];
                }
            }
        }
        int size3 = list.size();
        int size4 = arrayList.size();
        for (int i2 = 0; i2 < size4; i2++) {
            Object obj = arrayList.get(i2);
            if (obj == null) {
                String f = android.support.v4.media.a.f(list.size() - size3, "Element at index ", " is null.");
                int size5 = list.size();
                while (true) {
                    size5--;
                    if (size5 < size3) {
                        break;
                    } else {
                        list.remove(size5);
                    }
                }
                throw new NullPointerException(f);
            }
            list.add(obj);
        }
    }

    @Override // com.google.android.gms.internal.play_billing.zzfv
    public final Object i(int i) {
        int i2 = i - 1;
        if (i2 != 0) {
            if (i2 != 2) {
                if (i2 != 3) {
                    if (i2 != 4) {
                        if (i2 == 5) {
                            return zzb;
                        }
                        throw null;
                    }
                    return new zzfr(zzb);
                }
                return new zzdt();
            }
            return new zzhl(zzb, "\u0004\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001b", new Object[]{"zzd", zzdr.class});
        }
        return (byte) 1;
    }
}
