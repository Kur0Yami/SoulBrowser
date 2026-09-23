package com.google.android.gms.internal.ads;

import java.util.Collections;
import java.util.Set;
import java.util.concurrent.Executor;

/* loaded from: classes.dex */
public final class zzdxt {
    public static final Set a(zzdyd zzdydVar, Executor executor) {
        if (((Boolean) zzbim.f4719a.c()).booleanValue()) {
            return Collections.singleton(new zzdij(zzdydVar, executor));
        }
        return Collections.EMPTY_SET;
    }
}
