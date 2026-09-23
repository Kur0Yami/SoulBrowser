package com.google.android.gms.cast.internal;

import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzam implements zzat {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzat f3613a;
    public final /* synthetic */ zzar b;

    public zzam(zzar zzarVar, zzat zzatVar) {
        this.f3613a = zzatVar;
        Objects.requireNonNull(zzarVar);
        this.b = zzarVar;
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void a(long j, long j2, long j3, String str) {
        zzat zzatVar = this.f3613a;
        if (zzatVar != null) {
            zzatVar.a(j, j2, j3, str);
        }
    }

    @Override // com.google.android.gms.cast.internal.zzat
    public final void b(String str, long j, int i, Object obj, long j2, long j3) {
        this.b.g = null;
        zzat zzatVar = this.f3613a;
        if (zzatVar != null) {
            zzatVar.b(str, j, i, obj, j2, j3);
        }
    }
}
