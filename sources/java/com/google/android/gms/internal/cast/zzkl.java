package com.google.android.gms.internal.cast;

/* loaded from: classes.dex */
public final class zzkl {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f9749a = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
    public static final zzkp b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.cast.zzkp] */
    /* JADX WARN: Type inference failed for: r2v2 */
    /* JADX WARN: Type inference failed for: r2v3 */
    /* JADX WARN: Type inference failed for: r2v4 */
    static {
        ?? obj;
        int i = 0;
        while (true) {
            if (i < 2) {
                obj = 0;
                try {
                    obj = (zzkp) Class.forName(f9749a[i]).asSubclass(zzkp.class).getDeclaredConstructor(null).newInstance(null);
                } catch (Throwable unused) {
                }
                if (obj != 0) {
                    break;
                } else {
                    i++;
                }
            } else {
                obj = new Object();
                break;
            }
        }
        b = obj;
    }
}
