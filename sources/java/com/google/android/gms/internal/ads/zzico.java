package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
final class zzico implements zzibz {

    /* renamed from: a, reason: collision with root package name */
    public final zzicc f8940a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f8941c;
    public final int d;

    public zzico(zzicc zziccVar, String str, Object[] objArr) {
        this.f8940a = zziccVar;
        this.b = str;
        this.f8941c = objArr;
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

    @Override // com.google.android.gms.internal.ads.zzibz
    public final boolean zza() {
        return (this.d & 2) == 2;
    }

    @Override // com.google.android.gms.internal.ads.zzibz
    public final zzicc zzb() {
        return this.f8940a;
    }

    @Override // com.google.android.gms.internal.ads.zzibz
    public final int zzc() {
        int i = this.d;
        if ((i & 1) != 0) {
            return 1;
        }
        return (i & 4) == 4 ? 3 : 2;
    }
}
