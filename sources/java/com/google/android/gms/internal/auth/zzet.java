package com.google.android.gms.internal.auth;

import com.google.android.gms.internal.auth.zzet;
import com.google.android.gms.internal.auth.zzev;

/* loaded from: classes.dex */
public class zzet<MessageType extends zzev<MessageType, BuilderType>, BuilderType extends zzet<MessageType, BuilderType>> extends zzdp<MessageType, BuilderType> {

    /* renamed from: c, reason: collision with root package name */
    public final zzev f9539c;
    public zzev f;

    public zzet(zzhs zzhsVar) {
        this.f9539c = zzhsVar;
        if (!zzhsVar.g()) {
            this.f = zzhsVar.b();
            return;
        }
        throw new IllegalArgumentException("Default instance must be immutable.");
    }

    @Override // com.google.android.gms.internal.auth.zzdp
    /* renamed from: a */
    public final zzet clone() {
        zzev zzevVar;
        zzet zzetVar = (zzet) this.f9539c.h(5);
        if (!this.f.g()) {
            zzevVar = this.f;
        } else {
            zzev zzevVar2 = this.f;
            zzevVar2.getClass();
            zzgf.f9553c.a(zzevVar2.getClass()).f(zzevVar2);
            zzevVar2.d();
            zzevVar = this.f;
        }
        zzetVar.f = zzevVar;
        return zzetVar;
    }

    @Override // com.google.android.gms.internal.auth.zzdp
    public final Object clone() {
        zzev zzevVar;
        zzet zzetVar = (zzet) this.f9539c.h(5);
        if (!this.f.g()) {
            zzevVar = this.f;
        } else {
            zzev zzevVar2 = this.f;
            zzevVar2.getClass();
            zzgf.f9553c.a(zzevVar2.getClass()).f(zzevVar2);
            zzevVar2.d();
            zzevVar = this.f;
        }
        zzetVar.f = zzevVar;
        return zzetVar;
    }
}
