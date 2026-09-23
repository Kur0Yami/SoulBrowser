package com.google.gson.internal;

import com.google.gson.ReflectionAccessFilter;
import java.lang.reflect.AccessibleObject;
import java.util.Collections;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class ReflectionAccessFilterHelper {

    /* loaded from: classes3.dex */
    public static abstract class AccessChecker {

        /* renamed from: a, reason: collision with root package name */
        public static final AccessChecker f12694a;

        /* renamed from: com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker$2, reason: invalid class name */
        /* loaded from: classes3.dex */
        public class AnonymousClass2 extends AccessChecker {
            @Override // com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker
            public final boolean a(Object obj, AccessibleObject accessibleObject) {
                return true;
            }
        }

        /* JADX WARN: Multi-variable type inference failed */
        /* JADX WARN: Removed duplicated region for block: B:5:0x001f  */
        /* JADX WARN: Type inference failed for: r1v3 */
        /* JADX WARN: Type inference failed for: r1v4, types: [com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker] */
        /* JADX WARN: Type inference failed for: r1v5, types: [java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v6 */
        /* JADX WARN: Type inference failed for: r1v7 */
        static {
            /*
                int r0 = com.google.gson.internal.JavaVersion.f12686a
                r1 = 9
                if (r0 < r1) goto L1c
                java.lang.Class<java.lang.reflect.AccessibleObject> r0 = java.lang.reflect.AccessibleObject.class
                java.lang.String r1 = "canAccess"
                r2 = 1
                java.lang.Class[] r2 = new java.lang.Class[r2]     // Catch: java.lang.NoSuchMethodException -> L1c
                java.lang.Class<java.lang.Object> r3 = java.lang.Object.class
                r4 = 0
                r2[r4] = r3     // Catch: java.lang.NoSuchMethodException -> L1c
                java.lang.reflect.Method r0 = r0.getDeclaredMethod(r1, r2)     // Catch: java.lang.NoSuchMethodException -> L1c
                com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker$1 r1 = new com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker$1     // Catch: java.lang.NoSuchMethodException -> L1c
                r1.<init>()     // Catch: java.lang.NoSuchMethodException -> L1c
                goto L1d
            L1c:
                r1 = 0
            L1d:
                if (r1 != 0) goto L24
                com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker$2 r1 = new com.google.gson.internal.ReflectionAccessFilterHelper$AccessChecker$2
                r1.<init>()
            L24:
                com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker.f12694a = r1
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.gson.internal.ReflectionAccessFilterHelper.AccessChecker.<clinit>():void");
        }

        public abstract boolean a(Object obj, AccessibleObject accessibleObject);
    }

    public static boolean a(Object obj, AccessibleObject accessibleObject) {
        return AccessChecker.f12694a.a(obj, accessibleObject);
    }

    public static ReflectionAccessFilter.FilterResult b(Class cls) {
        Iterator it = Collections.EMPTY_LIST.iterator();
        while (it.hasNext()) {
            ReflectionAccessFilter.FilterResult a2 = ((ReflectionAccessFilter) it.next()).a(cls);
            if (a2 != ReflectionAccessFilter.FilterResult.f) {
                return a2;
            }
        }
        return ReflectionAccessFilter.FilterResult.f12674c;
    }
}
