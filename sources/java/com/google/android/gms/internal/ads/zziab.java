package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes.dex */
public final class zziab {
    public static volatile zziab b;

    /* renamed from: c, reason: collision with root package name */
    public static final zziab f8905c = new zziab();

    /* renamed from: a, reason: collision with root package name */
    public final Map f8906a = Collections.EMPTY_MAP;

    public static zziab a() {
        zziab zziabVar = b;
        if (zziabVar != null) {
            return zziabVar;
        }
        synchronized (zziab.class) {
            try {
                zziab zziabVar2 = b;
                if (zziabVar2 != null) {
                    return zziabVar2;
                }
                int i = zzhyy.f8889a;
                zziab b2 = zziaj.b();
                b = b2;
                return b2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
