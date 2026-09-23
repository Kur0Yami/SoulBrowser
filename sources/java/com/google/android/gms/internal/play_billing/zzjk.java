package com.google.android.gms.internal.play_billing;

/* loaded from: classes3.dex */
final class zzjk implements zzfy {

    /* renamed from: a, reason: collision with root package name */
    public static final zzfy f11550a = new Object();

    @Override // com.google.android.gms.internal.play_billing.zzfy
    public final boolean j(int i) {
        zzjl zzjlVar;
        if (i != 0) {
            zzjlVar = i != 1 ? i != 2 ? i != 3 ? null : zzjl.ALTERNATIVE_BILLING_ACTION : zzjl.LOCAL_PURCHASES_UPDATED_ACTION : zzjl.PURCHASES_UPDATED_ACTION;
        } else {
            zzjlVar = zzjl.BROADCAST_ACTION_UNSPECIFIED;
        }
        return zzjlVar != null;
    }
}
