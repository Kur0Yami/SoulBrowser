package com.google.android.gms.internal.measurement;

import java.util.logging.Logger;

/* loaded from: classes3.dex */
public abstract class zzjj extends zzir {
    public static final /* synthetic */ int b = 0;

    /* renamed from: a, reason: collision with root package name */
    public zzjk f10378a;

    static {
        Logger.getLogger(zzjj.class.getName());
        boolean z = zzmv.e;
    }

    public static int a(int i) {
        if ((i & (-128)) == 0) {
            return 1;
        }
        if ((i & (-16384)) == 0) {
            return 2;
        }
        if (((-2097152) & i) == 0) {
            return 3;
        }
        return (i & (-268435456)) == 0 ? 4 : 5;
    }
}
