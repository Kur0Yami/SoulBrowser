package com.google.android.gms.internal.auth;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgh implements zzfu {

    /* renamed from: a, reason: collision with root package name */
    public final zzfx f9555a;
    public final Object[] b;

    /* renamed from: c, reason: collision with root package name */
    public final int f9556c;

    public zzgh(zzhs zzhsVar, Object[] objArr) {
        this.f9555a = zzhsVar;
        this.b = objArr;
        char charAt = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(0);
        if (charAt < 55296) {
            this.f9556c = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 1;
        int i3 = 13;
        while (true) {
            int i4 = i2 + 1;
            char charAt2 = "\u0001\u0001\u0000\u0000\u0001\u0001\u0001\u0000\u0001\u0000\u0001\u001a".charAt(i2);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i3;
                i3 += 13;
                i2 = i4;
            } else {
                this.f9556c = i | (charAt2 << i3);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.auth.zzfu
    public final zzfx zza() {
        return this.f9555a;
    }

    @Override // com.google.android.gms.internal.auth.zzfu
    public final boolean zzb() {
        return (this.f9556c & 2) == 2;
    }

    @Override // com.google.android.gms.internal.auth.zzfu
    public final int zzc() {
        return (this.f9556c & 1) != 0 ? 1 : 2;
    }
}
