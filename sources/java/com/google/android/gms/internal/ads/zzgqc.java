package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.util.List;

/* loaded from: classes.dex */
final class zzgqc implements Serializable, zzgqb {

    /* renamed from: c, reason: collision with root package name */
    public final List f8206c;

    public final boolean equals(Object obj) {
        if (obj instanceof zzgqc) {
            return this.f8206c.equals(((zzgqc) obj).f8206c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f8206c.hashCode() + 306654252;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder("Predicates.and(");
        boolean z = true;
        for (Object obj : this.f8206c) {
            if (!z) {
                sb.append(',');
            }
            sb.append(obj);
            z = false;
        }
        sb.append(')');
        return sb.toString();
    }

    @Override // com.google.android.gms.internal.ads.zzgqb
    public final boolean zza(Object obj) {
        int i = 0;
        while (true) {
            List list = this.f8206c;
            if (i < list.size()) {
                if (!((zzgqb) list.get(i)).zza(obj)) {
                    return false;
                }
                i++;
            } else {
                return true;
            }
        }
    }
}
