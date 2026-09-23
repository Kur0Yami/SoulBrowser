package com.google.android.gms.internal.consent_sdk;

/* loaded from: classes.dex */
final class zzdl extends zzdn {
    @Override // com.google.android.gms.internal.consent_sdk.zzdn
    public final int b(int i) {
        return i + 1;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdn
    public final int c(int i) {
        String str = this.g;
        int length = str.length();
        zzdj.b(i, length);
        while (i < length) {
            if (str.charAt(i) == ',') {
                return i;
            }
            i++;
        }
        return -1;
    }
}
