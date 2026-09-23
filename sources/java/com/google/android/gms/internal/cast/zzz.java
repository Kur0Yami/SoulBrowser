package com.google.android.gms.internal.cast;

import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;

/* loaded from: classes.dex */
final /* synthetic */ class zzz implements zzhg {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzz f9889a = new Object();

    @Override // com.google.android.gms.internal.cast.zzhg
    public final Object zza() {
        Logger logger = zzaa.v;
        Logger logger2 = CastContext.l;
        Preconditions.checkMainThread("Must be called from the main thread.");
        CastContext castContext = (CastContext) Preconditions.checkNotNull(CastContext.n);
        castContext.getClass();
        Preconditions.checkMainThread("Must be called from the main thread.");
        return castContext.e.f3467c;
    }
}
