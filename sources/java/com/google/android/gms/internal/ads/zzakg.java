package com.google.android.gms.internal.ads;

import kotlin.KotlinVersion;
import kotlin.UByte;
import kotlin.uuid.Uuid;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzakg {

    /* renamed from: a, reason: collision with root package name */
    public final zzaga f4122a;
    public zzaky d;
    public zzakb e;
    public int f;
    public int g;
    public int h;
    public int i;
    public final zzv j;
    public boolean m;
    public final zzakx b = new zzakx();

    /* renamed from: c, reason: collision with root package name */
    public final zzer f4123c = new zzer();
    public final zzer k = new zzer(1);
    public final zzer l = new zzer();

    public zzakg(zzaga zzagaVar, zzaky zzakyVar, zzakb zzakbVar, zzv zzvVar) {
        this.f4122a = zzagaVar;
        this.d = zzakyVar;
        this.e = zzakbVar;
        this.j = zzvVar;
        this.d = zzakyVar;
        this.e = zzakbVar;
        zzagaVar.e(zzvVar);
        a();
    }

    public final void a() {
        zzakx zzakxVar = this.b;
        zzakxVar.d = 0;
        zzakxVar.p = 0L;
        zzakxVar.q = false;
        zzakxVar.k = false;
        zzakxVar.o = false;
        zzakxVar.m = null;
        this.f = 0;
        this.h = 0;
        this.g = 0;
        this.i = 0;
        this.m = false;
    }

    public final int b() {
        int i;
        if (!this.m) {
            i = this.d.g[this.f];
        } else if (this.b.j[this.f]) {
            i = 1;
        } else {
            i = 0;
        }
        if (e() != null) {
            return i | 1073741824;
        }
        return i;
    }

    public final boolean c() {
        this.f++;
        if (!this.m) {
            return false;
        }
        int i = this.g + 1;
        this.g = i;
        int[] iArr = this.b.g;
        int i2 = this.h;
        if (i != iArr[i2]) {
            return true;
        }
        this.h = i2 + 1;
        this.g = 0;
        return false;
    }

    public final int d(int i, int i2) {
        zzer zzerVar;
        boolean z;
        boolean z2;
        int i3;
        zzakw e = e();
        if (e == null) {
            return 0;
        }
        int i4 = e.d;
        zzakx zzakxVar = this.b;
        if (i4 != 0) {
            zzerVar = zzakxVar.n;
        } else {
            byte[] bArr = e.e;
            String str = zzfj.f7405a;
            i4 = bArr.length;
            zzer zzerVar2 = this.l;
            zzerVar2.z(bArr, i4);
            zzerVar = zzerVar2;
        }
        int i5 = this.f;
        if (zzakxVar.k && zzakxVar.l[i5]) {
            z = true;
        } else {
            z = false;
        }
        if (z || i2 != 0) {
            z2 = true;
        } else {
            z2 = false;
        }
        if (true != z2) {
            i3 = 0;
        } else {
            i3 = Uuid.SIZE_BITS;
        }
        zzer zzerVar3 = this.k;
        zzerVar3.f6834a[0] = (byte) (i3 | i4);
        zzerVar3.E(0);
        zzaga zzagaVar = this.f4122a;
        zzagaVar.c(zzerVar3, 1, 1);
        zzagaVar.c(zzerVar, i4, 1);
        if (!z2) {
            return i4 + 1;
        }
        zzer zzerVar4 = this.f4123c;
        if (!z) {
            zzerVar4.y(8);
            byte[] bArr2 = zzerVar4.f6834a;
            bArr2[0] = 0;
            bArr2[1] = 1;
            bArr2[2] = 0;
            bArr2[3] = (byte) i2;
            bArr2[4] = (byte) ((i >> 24) & KotlinVersion.MAX_COMPONENT_VALUE);
            bArr2[5] = (byte) ((i >> 16) & KotlinVersion.MAX_COMPONENT_VALUE);
            bArr2[6] = (byte) ((i >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
            bArr2[7] = (byte) (i & KotlinVersion.MAX_COMPONENT_VALUE);
            zzagaVar.c(zzerVar4, 8, 1);
            return i4 + 9;
        }
        int i6 = i4 + 1;
        zzer zzerVar5 = zzakxVar.n;
        int L = zzerVar5.L();
        zzerVar5.G(-2);
        int i7 = (L * 6) + 2;
        if (i2 != 0) {
            zzerVar4.y(i7);
            byte[] bArr3 = zzerVar4.f6834a;
            zzerVar5.H(bArr3, 0, i7);
            int i8 = (((bArr3[2] & UByte.MAX_VALUE) << 8) | (bArr3[3] & UByte.MAX_VALUE)) + i2;
            bArr3[2] = (byte) ((i8 >> 8) & KotlinVersion.MAX_COMPONENT_VALUE);
            bArr3[3] = (byte) (i8 & KotlinVersion.MAX_COMPONENT_VALUE);
        } else {
            zzerVar4 = zzerVar5;
        }
        zzagaVar.c(zzerVar4, i7, 1);
        return i6 + i7;
    }

    public final zzakw e() {
        if (this.m) {
            zzakx zzakxVar = this.b;
            zzakb zzakbVar = zzakxVar.f4145a;
            String str = zzfj.f7405a;
            int i = zzakbVar.f4117a;
            zzakw zzakwVar = zzakxVar.m;
            if (zzakwVar == null) {
                zzakwVar = this.d.f4147a.l[i];
            }
            if (zzakwVar != null && zzakwVar.f4143a) {
                return zzakwVar;
            }
            return null;
        }
        return null;
    }
}
