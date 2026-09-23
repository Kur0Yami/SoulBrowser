package com.google.android.gms.internal.ads;

import java.security.GeneralSecurityException;
import java.util.Iterator;
import java.util.concurrent.CopyOnWriteArrayList;

/* loaded from: classes.dex */
public final class zzhal {

    /* renamed from: a, reason: collision with root package name */
    public static final CopyOnWriteArrayList f8329a = new CopyOnWriteArrayList();

    public static zzhak a(String str) {
        Iterator it = f8329a.iterator();
        while (it.hasNext()) {
            zzhak zzhakVar = (zzhak) it.next();
            if (zzhakVar.zza()) {
                return zzhakVar;
            }
        }
        throw new GeneralSecurityException("No KMS client does support: ".concat(String.valueOf(str)));
    }
}
