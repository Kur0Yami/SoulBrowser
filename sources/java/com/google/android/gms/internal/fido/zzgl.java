package com.google.android.gms.internal.fido;

import j$.util.Objects;
import java.util.Comparator;

/* loaded from: classes3.dex */
final class zzgl {

    /* renamed from: a, reason: collision with root package name */
    public static final Comparator f10320a;

    static {
        Comparator comparator;
        try {
            Object[] enumConstants = Class.forName(zzgl.class.getName().concat("$UnsafeComparator")).getEnumConstants();
            Objects.requireNonNull(enumConstants);
            comparator = (Comparator) enumConstants[0];
        } catch (Throwable unused) {
            comparator = zzgk.f10319c;
        }
        f10320a = comparator;
    }
}
