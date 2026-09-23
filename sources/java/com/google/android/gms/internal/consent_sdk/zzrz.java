package com.google.android.gms.internal.consent_sdk;

/* loaded from: classes.dex */
final class zzrz implements zzrn {

    /* renamed from: a, reason: collision with root package name */
    public final zzrq f10106a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f10107c;
    public final int d;

    public zzrz(zzrq zzrqVar, String str, Object[] objArr) {
        this.f10106a = zzrqVar;
        this.b = str;
        this.f10107c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char charAt2 = str.charAt(i2);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            } else {
                this.d = i | (charAt2 << i3);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrn
    public final zzrq zza() {
        return this.f10106a;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrn
    public final boolean zzb() {
        return (this.d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzrn
    public final int zzc() {
        int i = this.d;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }
}
