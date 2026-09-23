package com.google.android.gms.internal.common;

/* loaded from: classes.dex */
public final class zzj {
    public static Object a(Class cls, String str, zzi... zziVarArr) {
        int length = zziVarArr.length;
        Class<?>[] clsArr = new Class[length];
        Object[] objArr = new Object[length];
        for (int i = 0; i < zziVarArr.length; i++) {
            zzi zziVar = zziVarArr[i];
            zziVar.getClass();
            clsArr[i] = zziVar.f9913a;
            objArr[i] = zziVarArr[i].b;
        }
        return cls.getDeclaredMethod(str, clsArr).invoke(null, objArr);
    }
}
