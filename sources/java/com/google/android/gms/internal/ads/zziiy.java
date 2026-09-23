package com.google.android.gms.internal.ads;

/* loaded from: classes.dex */
public abstract class zziiy {
    public static zziiy b(Class cls) {
        if (System.getProperty("java.vm.name").equalsIgnoreCase("Dalvik")) {
            return new zziit(cls.getSimpleName());
        }
        return new zziiv(cls.getSimpleName());
    }

    public abstract void a(String str);
}
