package com.google.android.gms.internal.ads;

import j$.util.Optional;
import java.util.ArrayDeque;

/* loaded from: classes.dex */
public final class zzaun {

    /* renamed from: a, reason: collision with root package name */
    public final zzauj f4424a;
    public final zzaug b = new zzaug();

    /* renamed from: c, reason: collision with root package name */
    public final zzaub f4425c;

    public zzaun(zzauj zzaujVar, zzaub zzaubVar) {
        this.f4424a = zzaujVar;
        this.f4425c = zzaubVar;
    }

    public final Optional a() {
        zzatc zzatcVar;
        try {
            ArrayDeque arrayDeque = this.b.f4421a;
            if (!arrayDeque.isEmpty()) {
                zzaud zzaudVar = (zzaud) arrayDeque.pop();
                long j = zzaudVar.f4419a;
                long j2 = zzaudVar.b;
                long j3 = zzaudVar.f4420c;
                zzauj zzaujVar = this.f4424a;
                if (zzaujVar.b < j2) {
                    return Optional.of(zzatc.L);
                }
                this.f4425c.a(j);
                if (j3 == 0) {
                    while (zzaujVar.b > j2) {
                        zzaujVar.c();
                    }
                }
                return Optional.empty();
            }
            throw new Exception();
        } catch (zzatz e) {
            e = e;
            throw new AssertionError(zzatu.a("CEiv6BFfPnitUE+D"), e);
        } catch (zzaua e2) {
            e = e2;
            throw new AssertionError(zzatu.a("CEiv6BFfPnitUE+D"), e);
        } catch (zzauf unused) {
            zzatcVar = zzatc.B;
            return Optional.of(zzatcVar);
        } catch (zzauh unused2) {
            zzatcVar = zzatc.L;
            return Optional.of(zzatcVar);
        }
    }
}
