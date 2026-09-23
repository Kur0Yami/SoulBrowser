package com.google.android.gms.internal.play_billing;

import java.util.Collections;
import java.util.Map;

/* loaded from: classes3.dex */
public final class zzfh {
    public static volatile zzfh b;

    /* renamed from: c, reason: collision with root package name */
    public static final zzfh f11497c = new zzfh();

    /* renamed from: a, reason: collision with root package name */
    public final Map f11498a = Collections.EMPTY_MAP;

    public static zzfh a() {
        zzfh zzfhVar = b;
        if (zzfhVar != null) {
            return zzfhVar;
        }
        synchronized (zzfh.class) {
            try {
                zzfh zzfhVar2 = b;
                if (zzfhVar2 != null) {
                    return zzfhVar2;
                }
                int i = zzei.f11487a;
                zzfh b2 = zzfp.b();
                b = b2;
                return b2;
            } catch (Throwable th) {
                throw th;
            }
        }
    }
}
