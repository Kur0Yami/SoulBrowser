package com.google.android.gms.internal.consent_sdk;

import android.support.v4.media.a;

/* loaded from: classes.dex */
final class zzph extends zzpk {
    @Override // com.google.android.gms.internal.consent_sdk.zzpk, com.google.android.gms.internal.consent_sdk.zzpm
    public final byte a(int i) {
        if (((47 - (i + 1)) | i) < 0) {
            if (i < 0) {
                throw new ArrayIndexOutOfBoundsException(a.e(i, "Index < 0: "));
            }
            throw new ArrayIndexOutOfBoundsException(a.f(i, "Index > length: ", ", 47"));
        }
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpk, com.google.android.gms.internal.consent_sdk.zzpm
    public final byte c(int i) {
        return this.g[i];
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzpk, com.google.android.gms.internal.consent_sdk.zzpm
    public final int g() {
        return 47;
    }
}
