package com.google.android.gms.internal.auth;

import android.os.Build;
import android.os.UserManager;

/* loaded from: classes.dex */
public final class zzcc {

    /* renamed from: a, reason: collision with root package name */
    public static UserManager f9503a;
    public static volatile boolean b;

    static {
        boolean z;
        if (Build.VERSION.SDK_INT >= 24) {
            z = true;
        } else {
            z = false;
        }
        b = !z;
    }

    /* JADX WARN: Code restructure failed: missing block: B:27:0x003f, code lost:
    
        if (r4.isUserRunning(android.os.Process.myUserHandle()) == false) goto L28;
     */
    /* JADX WARN: Code restructure failed: missing block: B:28:0x0041, code lost:
    
        r8 = true;
     */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(android.content.Context r8) {
        /*
            int r0 = android.os.Build.VERSION.SDK_INT
            r1 = 24
            r2 = 0
            if (r0 < r1) goto L61
            boolean r0 = com.google.android.gms.internal.auth.zzcc.b
            if (r0 == 0) goto Lc
            goto L5e
        Lc:
            java.lang.Class<com.google.android.gms.internal.auth.zzcc> r0 = com.google.android.gms.internal.auth.zzcc.class
            monitor-enter(r0)
            boolean r1 = com.google.android.gms.internal.auth.zzcc.b     // Catch: java.lang.Throwable -> L15
            if (r1 == 0) goto L17
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L15
            return r2
        L15:
            r8 = move-exception
            goto L5f
        L17:
            r1 = 1
            r3 = r1
        L19:
            r4 = 2
            r5 = 0
            if (r3 > r4) goto L43
            android.os.UserManager r4 = com.google.android.gms.internal.auth.zzcc.f9503a     // Catch: java.lang.Throwable -> L15
            if (r4 != 0) goto L2b
            java.lang.Class<android.os.UserManager> r4 = android.os.UserManager.class
            java.lang.Object r4 = r8.getSystemService(r4)     // Catch: java.lang.Throwable -> L15
            android.os.UserManager r4 = (android.os.UserManager) r4     // Catch: java.lang.Throwable -> L15
            com.google.android.gms.internal.auth.zzcc.f9503a = r4     // Catch: java.lang.Throwable -> L15
        L2b:
            android.os.UserManager r4 = com.google.android.gms.internal.auth.zzcc.f9503a     // Catch: java.lang.Throwable -> L15
            if (r4 != 0) goto L31
            r8 = r1
            goto L56
        L31:
            boolean r6 = r4.isUserUnlocked()     // Catch: java.lang.Throwable -> L15 java.lang.NullPointerException -> L45
            if (r6 != 0) goto L41
            android.os.UserHandle r6 = android.os.Process.myUserHandle()     // Catch: java.lang.Throwable -> L15 java.lang.NullPointerException -> L45
            boolean r8 = r4.isUserRunning(r6)     // Catch: java.lang.Throwable -> L15 java.lang.NullPointerException -> L45
            if (r8 != 0) goto L43
        L41:
            r8 = r1
            goto L52
        L43:
            r8 = r2
            goto L52
        L45:
            r4 = move-exception
            java.lang.String r6 = "DirectBootUtils"
            java.lang.String r7 = "Failed to check if user is unlocked."
            android.util.Log.w(r6, r7, r4)     // Catch: java.lang.Throwable -> L15
            com.google.android.gms.internal.auth.zzcc.f9503a = r5     // Catch: java.lang.Throwable -> L15
            int r3 = r3 + 1
            goto L19
        L52:
            if (r8 == 0) goto L56
            com.google.android.gms.internal.auth.zzcc.f9503a = r5     // Catch: java.lang.Throwable -> L15
        L56:
            if (r8 == 0) goto L5a
            com.google.android.gms.internal.auth.zzcc.b = r1     // Catch: java.lang.Throwable -> L15
        L5a:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L15
            if (r8 != 0) goto L5e
            return r1
        L5e:
            return r2
        L5f:
            monitor-exit(r0)     // Catch: java.lang.Throwable -> L15
            throw r8
        L61:
            return r2
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.auth.zzcc.a(android.content.Context):boolean");
    }
}
