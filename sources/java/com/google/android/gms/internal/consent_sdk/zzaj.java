package com.google.android.gms.internal.consent_sdk;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzaj implements zzay {

    /* renamed from: a, reason: collision with root package name */
    public final zzah f9929a;
    public zzbs b;

    @Override // com.google.android.gms.internal.consent_sdk.zzay
    public final /* bridge */ /* synthetic */ zzay a(zzbs zzbsVar) {
        this.b = zzbsVar;
        return this;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzay
    public final zzaz zzb() {
        zzbs zzbsVar = this.b;
        if (zzbsVar != null) {
            return new zzak(this.f9929a, zzbsVar);
        }
        throw new IllegalStateException(String.valueOf(zzbs.class.getCanonicalName()).concat(" must be set"));
    }
}
