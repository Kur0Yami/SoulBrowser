package com.google.android.gms.internal.cast;

import android.content.Context;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;

/* loaded from: classes.dex */
public final class zzff {
    public static ApiMetadata a(Context context) {
        return ApiMetadata.fromComplianceOptions(ComplianceOptions.newBuilder(context).build());
    }
}
