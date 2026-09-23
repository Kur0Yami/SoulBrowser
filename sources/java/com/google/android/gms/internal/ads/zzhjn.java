package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class zzhjn {

    /* renamed from: a, reason: collision with root package name */
    public final HashMap f8596a = new HashMap();

    public final void a(zzhxc zzhxcVar, Object obj) {
        List list;
        byte[] bArr = zzhxcVar.f8863a;
        if (bArr.length != 0 && bArr.length != 5) {
            throw new GeneralSecurityException("PrefixMap only supports 0 and 5 byte prefixes");
        }
        HashMap hashMap = this.f8596a;
        if (hashMap.containsKey(zzhxcVar)) {
            list = (List) hashMap.get(zzhxcVar);
        } else {
            ArrayList arrayList = new ArrayList();
            hashMap.put(zzhxcVar, arrayList);
            list = arrayList;
        }
        list.add(obj);
    }
}
