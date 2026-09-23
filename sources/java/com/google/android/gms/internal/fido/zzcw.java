package com.google.android.gms.internal.fido;

import java.io.Serializable;

/* loaded from: classes3.dex */
final class zzcw extends zzcs implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final zzcw f10289c = new Object();

    @Override // com.google.android.gms.internal.fido.zzcs
    public final zzcs a() {
        return zzcq.f10288c;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        if (comparable == comparable2) {
            return 0;
        }
        return comparable2.compareTo(comparable);
    }

    public final String toString() {
        return "Ordering.natural().reverse()";
    }
}
