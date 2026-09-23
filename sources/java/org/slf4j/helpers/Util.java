package org.slf4j.helpers;

/* loaded from: classes4.dex */
public final class Util {

    /* renamed from: a, reason: collision with root package name */
    public static ClassContextSecurityManager f22696a = null;
    public static boolean b = false;

    /* loaded from: classes4.dex */
    public static final class ClassContextSecurityManager extends SecurityManager {
        @Override // java.lang.SecurityManager
        public final Class[] getClassContext() {
            return super.getClassContext();
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r0v8, types: [java.lang.SecurityManager] */
    public static Class a() {
        int i;
        ClassContextSecurityManager classContextSecurityManager;
        ClassContextSecurityManager classContextSecurityManager2 = f22696a;
        ClassContextSecurityManager classContextSecurityManager3 = classContextSecurityManager2;
        if (classContextSecurityManager2 == null) {
            if (b) {
                classContextSecurityManager3 = null;
            } else {
                try {
                    classContextSecurityManager = new SecurityManager();
                } catch (SecurityException unused) {
                    classContextSecurityManager = null;
                }
                f22696a = classContextSecurityManager;
                b = true;
                classContextSecurityManager3 = classContextSecurityManager;
            }
        }
        if (classContextSecurityManager3 == null) {
            return null;
        }
        Class[] classContext = classContextSecurityManager3.getClassContext();
        String name = Util.class.getName();
        int i2 = 0;
        while (i2 < classContext.length && !name.equals(classContext[i2].getName())) {
            i2++;
        }
        if (i2 < classContext.length && (i = i2 + 2) < classContext.length) {
            return classContext[i];
        }
        throw new IllegalStateException("Failed to find org.slf4j.helpers.Util or its caller in the stack; this should not happen");
    }

    public static final void b(String str) {
        System.err.println("SLF4J: " + str);
    }

    public static final void c(String str, Throwable th) {
        System.err.println(str);
        System.err.println("Reported exception:");
        th.printStackTrace();
    }
}
