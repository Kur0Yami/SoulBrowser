package com.google.android.gms.internal.fido;

import java.io.Serializable;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zzcq extends zzcs implements Serializable {

    /* renamed from: c, reason: collision with root package name */
    public static final zzcq f10288c = new Object();

    @Override // com.google.android.gms.internal.fido.zzcs
    public final zzcs a() {
        return zzcw.f10289c;
    }

    @Override // java.util.Comparator
    public final /* bridge */ /* synthetic */ int compare(Object obj, Object obj2) {
        Comparable comparable = (Comparable) obj;
        Comparable comparable2 = (Comparable) obj2;
        comparable.getClass();
        comparable2.getClass();
        return comparable.compareTo(comparable2);
    }

    public final String toString() {
        return "Ordering.natural()";
    }
}
