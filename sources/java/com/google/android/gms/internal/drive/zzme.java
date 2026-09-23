package com.google.android.gms.internal.drive;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzme implements zzlo {

    /* renamed from: a, reason: collision with root package name */
    public final zzlq f10244a;
    public final String b;

    /* renamed from: c, reason: collision with root package name */
    public final Object[] f10245c;
    public final int d;

    public zzme(zzkk zzkkVar, String str, Object[] objArr) {
        this.f10244a = zzkkVar;
        this.b = str;
        this.f10245c = objArr;
        char charAt = str.charAt(0);
        if (charAt < 55296) {
            this.d = charAt;
            return;
        }
        int i = charAt & 8191;
        int i2 = 13;
        int i3 = 1;
        while (true) {
            int i4 = i3 + 1;
            char charAt2 = str.charAt(i3);
            if (charAt2 >= 55296) {
                i |= (charAt2 & 8191) << i2;
                i2 += 13;
                i3 = i4;
            } else {
                this.d = i | (charAt2 << i2);
                return;
            }
        }
    }

    @Override // com.google.android.gms.internal.drive.zzlo
    public final int a() {
        if ((this.d & 1) == 1) {
            return 1;
        }
        return 2;
    }

    @Override // com.google.android.gms.internal.drive.zzlo
    public final boolean b() {
        if ((this.d & 2) == 2) {
            return true;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.drive.zzlo
    public final zzlq c() {
        return this.f10244a;
    }
}
