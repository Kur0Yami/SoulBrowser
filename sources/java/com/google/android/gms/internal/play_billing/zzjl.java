package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
public enum zzjl implements zzfx {
    BROADCAST_ACTION_UNSPECIFIED(0),
    PURCHASES_UPDATED_ACTION(1),
    LOCAL_PURCHASES_UPDATED_ACTION(2),
    ALTERNATIVE_BILLING_ACTION(3);


    /* renamed from: c, reason: collision with root package name */
    public final int f11551c;

    zzjl(int i) {
        this.f11551c = i;
    }

    @Override // java.lang.Enum
    public final String toString() {
        return Integer.toString(this.f11551c);
    }

    @Override // com.google.android.gms.internal.play_billing.zzfx
    public final int zza() {
        return this.f11551c;
    }
}
