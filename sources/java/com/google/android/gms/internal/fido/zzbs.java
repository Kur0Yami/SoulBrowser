package com.google.android.gms.internal.fido;

import android.support.v4.media.a;
import java.io.Serializable;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzbs implements Serializable, zzbp {

    /* renamed from: c, reason: collision with root package name */
    public final Object f10280c;

    public zzbs(Object obj) {
        this.f10280c = obj;
    }

    public final boolean equals(Object obj) {
        if (obj instanceof zzbs) {
            return zzbk.a(this.f10280c, ((zzbs) obj).f10280c);
        }
        return false;
    }

    public final int hashCode() {
        return Arrays.hashCode(new Object[]{this.f10280c});
    }

    public final String toString() {
        return a.l("Suppliers.ofInstance(", this.f10280c.toString(), ")");
    }
}
