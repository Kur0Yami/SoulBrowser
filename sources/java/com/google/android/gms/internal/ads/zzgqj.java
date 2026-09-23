package com.google.android.gms.internal.ads;

import java.util.Iterator;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzgqj implements Iterable {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CharSequence f8209c;
    public final /* synthetic */ zzgqp f;

    public zzgqj(zzgqp zzgqpVar, CharSequence charSequence) {
        this.f8209c = charSequence;
        this.f = zzgqpVar;
    }

    @Override // java.lang.Iterable
    public final Iterator iterator() {
        CharSequence charSequence = this.f8209c;
        zzgqp zzgqpVar = this.f;
        return zzgqpVar.f8212a.a(zzgqpVar, charSequence);
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append('[');
        zzgpu.a(sb, iterator(), ", ");
        sb.append(']');
        return sb.toString();
    }
}
