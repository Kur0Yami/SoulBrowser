package com.google.android.gms.internal.consent_sdk;

import com.google.android.gms.internal.consent_sdk.zzqj;
import com.google.android.gms.internal.consent_sdk.zzqm;

/* loaded from: classes.dex */
public class zzqj<MessageType extends zzqm<MessageType, BuilderType>, BuilderType extends zzqj<MessageType, BuilderType>> extends zzoz<MessageType, BuilderType> {

    /* renamed from: c, reason: collision with root package name */
    public final zzqm f10084c;
    public zzqm f;

    public zzqj(zzqm zzqmVar) {
        this.f10084c = zzqmVar;
        if (!zzqmVar.e()) {
            this.f = (zzqm) zzqmVar.f(4);
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzoz
    /* renamed from: b */
    public final zzqj clone() {
        zzqj zzqjVar = (zzqj) this.f10084c.f(5);
        zzqjVar.f = d();
        return zzqjVar;
    }

    public final zzqm c() {
        zzqm d = d();
        d.getClass();
        boolean z = true;
        byte byteValue = ((Byte) d.f(1)).byteValue();
        if (byteValue != 1) {
            if (byteValue == 0) {
                z = false;
            } else {
                z = zzrx.f10104c.a(d.getClass()).b(d);
                d.f(2);
            }
        }
        if (z) {
            return d;
        }
        throw new RuntimeException("Message was missing required fields.  (Lite runtime could not determine which fields were missing).");
    }

    @Override // com.google.android.gms.internal.consent_sdk.zzoz
    public final Object clone() {
        zzqj zzqjVar = (zzqj) this.f10084c.f(5);
        zzqjVar.f = d();
        return zzqjVar;
    }

    public final zzqm d() {
        if (!this.f.e()) {
            return this.f;
        }
        this.f.j();
        return this.f;
    }

    public final void e() {
        if (!this.f.e()) {
            zzqm zzqmVar = (zzqm) this.f10084c.f(4);
            zzrx.f10104c.a(zzqmVar.getClass()).e(zzqmVar, this.f);
            this.f = zzqmVar;
        }
    }
}
