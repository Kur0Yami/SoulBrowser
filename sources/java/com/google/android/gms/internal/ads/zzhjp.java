package com.google.android.gms.internal.ads;

import java.util.ArrayList;
import java.util.List;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzhjp {
    public static final zzhxc b = zzhxc.a(new byte[0]);

    /* renamed from: a, reason: collision with root package name */
    public final Map f8598a;

    public final Iterable a(byte[] bArr) {
        List list;
        zzhxc zzhxcVar = b;
        Map map = this.f8598a;
        List list2 = (List) map.get(zzhxcVar);
        int i = 5;
        if (bArr.length >= 5) {
            int length = bArr.length;
            if (5 > length) {
                i = length;
            }
            list = (List) map.get(new zzhxc(bArr, i));
        } else {
            list = null;
        }
        if (list2 == null && list == null) {
            return new ArrayList();
        }
        if (list2 == null) {
            return list;
        }
        if (list == null) {
            return list2;
        }
        return new zzhjm(this, list, list2);
    }
}
