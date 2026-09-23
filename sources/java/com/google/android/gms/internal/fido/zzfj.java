package com.google.android.gms.internal.fido;

/* loaded from: classes3.dex */
public final class zzfj {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f10307a = {"com.google.common.flogger.util.StackWalkerStackGetter", "com.google.common.flogger.util.JavaLangAccessStackGetter"};
    public static final zzfn b;

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v0, types: [java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v1, types: [com.google.android.gms.internal.fido.zzfn] */
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
                    obj = (zzfn) Class.forName(f10307a[i]).asSubclass(zzfn.class).getDeclaredConstructor(null).newInstance(null);
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
