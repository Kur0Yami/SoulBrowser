package com.google.android.gms.cast.framework;

import android.os.Bundle;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.Map;

/* loaded from: classes.dex */
public class CastReasonCodes {

    /* renamed from: a, reason: collision with root package name */
    public final Map f3470a;

    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes.dex */
    public @interface CastReasonType {
    }

    public CastReasonCodes(Bundle bundle) {
        this.f3470a = com.google.android.gms.internal.cast.zzaz.a("com.google.android.gms.cast.MAP_CAST_STATUS_CODES_TO_CAST_REASON_CODES", bundle);
    }
}
