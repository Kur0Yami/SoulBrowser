package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Map;

/* loaded from: classes.dex */
public final class zzhhs {

    /* renamed from: a, reason: collision with root package name */
    public final Map f8561a;
    public final Map b;

    public /* synthetic */ zzhhs(Map map, Map map2) {
        this.f8561a = map;
        this.b = map2;
    }

    public final Enum a(Object obj) {
        Enum r0 = (Enum) this.b.get(obj);
        if (r0 != null) {
            return r0;
        }
        throw new GeneralSecurityException("Unable to convert object enum: ".concat(String.valueOf(obj)));
    }

    public final Object b(Enum r3) {
        Object obj = this.f8561a.get(r3);
        if (obj != null) {
            return obj;
        }
        throw new GeneralSecurityException("Unable to convert proto enum: ".concat(String.valueOf(r3)));
    }
}
