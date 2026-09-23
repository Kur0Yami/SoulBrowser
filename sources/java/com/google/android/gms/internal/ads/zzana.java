package com.google.android.gms.internal.ads;

import java.util.Map;

/* loaded from: classes.dex */
final class zzana {
    public static zzanb a(zzanb zzanbVar, String[] strArr, Map map) {
        int length;
        int i = 0;
        if (zzanbVar == null) {
            if (strArr == null) {
                return null;
            }
            int length2 = strArr.length;
            if (length2 == 1) {
                return (zzanb) map.get(strArr[0]);
            }
            if (length2 > 1) {
                zzanb zzanbVar2 = new zzanb();
                while (i < length2) {
                    zzanbVar2.c((zzanb) map.get(strArr[i]));
                    i++;
                }
                return zzanbVar2;
            }
        } else {
            if (strArr != null && strArr.length == 1) {
                zzanbVar.c((zzanb) map.get(strArr[0]));
                return zzanbVar;
            }
            if (strArr != null && (length = strArr.length) > 1) {
                while (i < length) {
                    zzanbVar.c((zzanb) map.get(strArr[i]));
                    i++;
                }
            }
        }
        return zzanbVar;
    }
}
