package com.google.android.gms.internal.p000authapi;

import android.content.Context;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.ComplianceOptions;

/* loaded from: classes.dex */
public final class zbaz {
    public static ApiMetadata a(Context context) {
        return ApiMetadata.fromComplianceOptions(ComplianceOptions.newBuilder(context).build());
    }
}
