package com.google.android.gms.internal.drive;

import java.nio.charset.Charset;
import java.util.List;
import java.util.logging.Logger;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzjt implements zzns {

    /* renamed from: a, reason: collision with root package name */
    public final zzjr f10209a;

    public zzjt(zzjr zzjrVar) {
        Charset charset = zzkm.f10222a;
        if (zzjrVar != null) {
            this.f10209a = zzjrVar;
            zzjrVar.f10208a = this;
            return;
        }
        throw new NullPointerException("output");
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void A(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                long longValue = ((Long) list.get(i4)).longValue();
                i3 += zzjr.A((longValue >> 63) ^ (longValue << 1));
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                long longValue2 = ((Long) list.get(i2)).longValue();
                zzjrVar.x((longValue2 >> 63) ^ (longValue2 << 1));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            long longValue3 = ((Long) list.get(i2)).longValue();
            zzjrVar.a(i, (longValue3 >> 63) ^ (longValue3 << 1));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void B(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzjr.A(((Long) list.get(i4)).longValue());
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.x(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.a(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void C(float f, int i) {
        zzjr zzjrVar = this.f10209a;
        zzjrVar.getClass();
        zzjrVar.t(i, Float.floatToRawIntBits(f));
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void D(int i, zzjc zzjcVar) {
        this.f10209a.b(i, zzjcVar);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void E(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                int intValue = ((Integer) list.get(i4)).intValue();
                i3 += zzjr.i((intValue >> 31) ^ (intValue << 1));
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                int intValue2 = ((Integer) list.get(i2)).intValue();
                zzjrVar.C((intValue2 >> 31) ^ (intValue2 << 1));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            int intValue3 = ((Integer) list.get(i2)).intValue();
            zzjrVar.s(i, (intValue3 >> 31) ^ (intValue3 << 1));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void F(int i, List list, zzmf zzmfVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            G(i, list.get(i2), zzmfVar);
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void G(int i, Object obj, zzmf zzmfVar) {
        this.f10209a.d(i, (zzlq) obj, zzmfVar);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void H(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Double) list.get(i4)).getClass();
                Logger logger = zzjr.b;
                i3 += 8;
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.z(Double.doubleToRawLongBits(((Double) list.get(i2)).doubleValue()));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            double doubleValue = ((Double) list.get(i2)).doubleValue();
            zzjrVar.getClass();
            zzjrVar.q(i, Double.doubleToRawLongBits(doubleValue));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void I(int i, List list) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            this.f10209a.b(i, (zzjc) list.get(i2));
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void J(int i, List list, zzmf zzmfVar) {
        for (int i2 = 0; i2 < list.size(); i2++) {
            y(i, list.get(i2), zzmfVar);
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void K(double d, int i) {
        zzjr zzjrVar = this.f10209a;
        zzjrVar.getClass();
        zzjrVar.q(i, Double.doubleToRawLongBits(d));
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void L(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Float) list.get(i4)).getClass();
                Logger logger = zzjr.b;
                i3 += 4;
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.f(Float.floatToRawIntBits(((Float) list.get(i2)).floatValue()));
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            float floatValue = ((Float) list.get(i2)).floatValue();
            zzjrVar.getClass();
            zzjrVar.t(i, Float.floatToRawIntBits(floatValue));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void M(int i, List list) {
        boolean z = list instanceof zzkz;
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzkz zzkzVar = (zzkz) list;
            while (i2 < list.size()) {
                Object q0 = zzkzVar.q0(i2);
                if (q0 instanceof String) {
                    zzjrVar.e(i, (String) q0);
                } else {
                    zzjrVar.b(i, (zzjc) q0);
                }
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.e(i, (String) list.get(i2));
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void a(int i, String str) {
        this.f10209a.e(i, str);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void b(int i, long j) {
        this.f10209a.a(i, (j >> 63) ^ (j << 1));
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void c(int i, long j) {
        this.f10209a.a(i, j);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void d(int i, int i2) {
        this.f10209a.s(i, i2);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void e(int i, int i2) {
        this.f10209a.t(i, i2);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void f(int i, int i2) {
        this.f10209a.s(i, (i2 >> 31) ^ (i2 << 1));
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void g(int i, long j) {
        this.f10209a.q(i, j);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void h(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Boolean) list.get(i4)).getClass();
                Logger logger = zzjr.b;
                i3++;
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.o(((Boolean) list.get(i2)).booleanValue() ? (byte) 1 : (byte) 0);
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.l(i, ((Boolean) list.get(i2)).booleanValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void i(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzjr.h(((Integer) list.get(i4)).intValue());
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.B(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.p(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void j(int i) {
        this.f10209a.j(i, 4);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void k(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzjr.h(((Integer) list.get(i4)).intValue());
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.B(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.p(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void l(int i, boolean z) {
        this.f10209a.l(i, z);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void m(int i, int i2) {
        this.f10209a.p(i, i2);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void n(int i, Object obj) {
        boolean z = obj instanceof zzjc;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.k(i, (zzjc) obj);
        } else {
            zzjrVar.c(i, (zzlq) obj);
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void o(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzjr.A(((Long) list.get(i4)).longValue());
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.x(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.a(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void p(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                Logger logger = zzjr.b;
                i3 += 8;
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.z(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.q(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void q(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                Logger logger = zzjr.b;
                i3 += 4;
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.f(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.t(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void r(int i, long j) {
        this.f10209a.a(i, j);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void s(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                i3 += zzjr.i(((Integer) list.get(i4)).intValue());
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.C(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.s(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void t(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Integer) list.get(i4)).getClass();
                Logger logger = zzjr.b;
                i3 += 4;
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.f(((Integer) list.get(i2)).intValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.t(i, ((Integer) list.get(i2)).intValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void u(int i) {
        this.f10209a.j(i, 3);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void v(int i, int i2) {
        this.f10209a.p(i, i2);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void w(int i, long j) {
        this.f10209a.q(i, j);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void x(int i, List list, boolean z) {
        int i2 = 0;
        zzjr zzjrVar = this.f10209a;
        if (z) {
            zzjrVar.j(i, 2);
            int i3 = 0;
            for (int i4 = 0; i4 < list.size(); i4++) {
                ((Long) list.get(i4)).getClass();
                Logger logger = zzjr.b;
                i3 += 8;
            }
            zzjrVar.C(i3);
            while (i2 < list.size()) {
                zzjrVar.z(((Long) list.get(i2)).longValue());
                i2++;
            }
            return;
        }
        while (i2 < list.size()) {
            zzjrVar.q(i, ((Long) list.get(i2)).longValue());
            i2++;
        }
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void y(int i, Object obj, zzmf zzmfVar) {
        zzjr zzjrVar = this.f10209a;
        zzjrVar.j(i, 3);
        zzmfVar.b((zzlq) obj, zzjrVar.f10208a);
        zzjrVar.j(i, 4);
    }

    @Override // com.google.android.gms.internal.drive.zzns
    public final void z(int i, int i2) {
        this.f10209a.t(i, i2);
    }
}
