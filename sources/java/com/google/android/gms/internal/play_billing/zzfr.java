package com.google.android.gms.internal.play_billing;

import com.google.android.gms.internal.play_billing.zzfr;
import com.google.android.gms.internal.play_billing.zzfv;

/* loaded from: classes3.dex */
public class zzfr<MessageType extends zzfv<MessageType, BuilderType>, BuilderType extends zzfr<MessageType, BuilderType>> extends zzef<MessageType, BuilderType> {

    /* renamed from: c, reason: collision with root package name */
    public final zzfv f11504c;
    public zzfv f;

    public zzfr(zzfv zzfvVar) {
        this.f11504c = zzfvVar;
        if (!zzfvVar.g()) {
            this.f = zzfvVar.m();
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    @Override // com.google.android.gms.internal.play_billing.zzef
    /* renamed from: b */
    public final zzfr clone() {
        zzfr zzfrVar = (zzfr) this.f11504c.i(5);
        zzfrVar.f = d();
        return zzfrVar;
    }

    public final zzfv c() {
        zzfv d = d();
        d.getClass();
        if (zzfv.h(d, true)) {
            return d;
        }
        throw new zzib();
    }

    @Override // com.google.android.gms.internal.play_billing.zzef
    public final Object clone() {
        zzfr zzfrVar = (zzfr) this.f11504c.i(5);
        zzfrVar.f = d();
        return zzfrVar;
    }

    public final zzfv d() {
        if (!this.f.g()) {
            return this.f;
        }
        this.f.p();
        return this.f;
    }

    public final void e() {
        if (!this.f.g()) {
            f();
        }
    }

    public final void f() {
        zzfv m = this.f11504c.m();
        zzhj.f11527c.a(m.getClass()).f(m, this.f);
        this.f = m;
    }
}
