package com.google.android.gms.internal.consent_sdk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzdt extends zzdq {
    public final zzdv g;

    public zzdt(zzdv zzdvVar, int i) {
        super(zzdvVar.size(), i);
        this.g = zzdvVar;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzdq
    public final Object a(int i) {
        return this.g.get(i);
    }
}
