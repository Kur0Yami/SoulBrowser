package com.google.android.gms.internal.fido;

import android.support.v4.media.a;
import com.google.android.gms.fido.fido2.api.common.PublicKeyCredentialParameters;

/* loaded from: classes3.dex */
final class zzbn extends zzbl {

    /* renamed from: c, reason: collision with root package name */
    public final PublicKeyCredentialParameters f10279c;

    public zzbn(PublicKeyCredentialParameters publicKeyCredentialParameters) {
        this.f10279c = publicKeyCredentialParameters;
    }

    @Override // com.google.android.gms.internal.fido.zzbl
    public final Object a() {
        return this.f10279c;
    }

    @Override // com.google.android.gms.internal.fido.zzbl
    public final boolean b() {
        return true;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzbn) {
            return this.f10279c.equals(((zzbn) obj).f10279c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f10279c.hashCode() + 1502476572;
    }

    public final String toString() {
        return a.l("Optional.of(", this.f10279c.toString(), ")");
    }
}
