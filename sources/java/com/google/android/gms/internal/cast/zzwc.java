package com.google.android.gms.internal.cast;

import com.google.android.gms.internal.cast.zzwb;
import java.lang.reflect.Field;
import java.security.PrivilegedExceptionAction;
import sun.misc.Unsafe;

/* loaded from: classes.dex */
final /* synthetic */ class zzwc implements PrivilegedExceptionAction {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzwc f9858a = new Object();

    @Override // java.security.PrivilegedExceptionAction
    public final /* synthetic */ Object run() {
        Unsafe unsafe = zzwb.zzd.f9854a;
        for (Field field : Unsafe.class.getDeclaredFields()) {
            field.setAccessible(true);
            Object obj = field.get(null);
            if (Unsafe.class.isInstance(obj)) {
                return (Unsafe) Unsafe.class.cast(obj);
            }
        }
        throw new NoSuchFieldError("the Unsafe");
    }
}
