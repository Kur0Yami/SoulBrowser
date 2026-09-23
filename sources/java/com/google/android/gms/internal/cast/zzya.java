package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzya;
import com.google.android.gms.internal.cast.zzyd;

/* loaded from: classes.dex */
public class zzya<MessageType extends zzyd<MessageType, BuilderType>, BuilderType extends zzya<MessageType, BuilderType>> extends zzwy<MessageType, BuilderType> {

    /* renamed from: c, reason: collision with root package name */
    public final zzyd f9881c;
    public zzyd f;

    public zzya(zzyd zzydVar) {
        this.f9881c = zzydVar;
        if (!zzydVar.l()) {
            this.f = (zzyd) zzydVar.j(4, null);
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    @Override // com.google.android.gms.internal.cast.zzwy
    /* renamed from: b */
    public final zzya clone() {
        zzya zzyaVar = (zzya) this.f9881c.j(5, null);
        zzyaVar.f = d();
        return zzyaVar;
    }

    public final void c() {
        if (!this.f.l()) {
            zzyd zzydVar = (zzyd) this.f9881c.j(4, null);
            zzzp.f9899c.a(zzydVar.getClass()).c(zzydVar, this.f);
            this.f = zzydVar;
        }
    }

    @Override // com.google.android.gms.internal.cast.zzwy
    public final Object clone() {
        zzya zzyaVar = (zzya) this.f9881c.j(5, null);
        zzyaVar.f = d();
        return zzyaVar;
    }

    public final zzyd d() {
        if (!this.f.l()) {
            return this.f;
        }
        zzyd zzydVar = this.f;
        zzydVar.getClass();
        zzzp.f9899c.a(zzydVar.getClass()).h(zzydVar);
        zzydVar.m();
        return this.f;
    }

    public final zzyd e() {
        zzyd d = d();
        d.getClass();
        boolean z = true;
        zzyd zzydVar = null;
        byte byteValue = ((Byte) d.j(1, null)).byteValue();
        if (byteValue != 1) {
            if (byteValue == 0) {
                z = false;
            } else {
                boolean b = zzzp.f9899c.a(d.getClass()).b(d);
                if (true == b) {
                    zzydVar = d;
                }
                d.j(2, zzydVar);
                z = b;
            }
        }
        if (z) {
            return d;
        }
        throw new RuntimeException("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }
}
