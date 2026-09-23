package com.google.android.gms.common.util;

import android.content.Context;
import android.content.pm.ApplicationInfo;
import android.content.pm.PackageManager;
import android.os.WorkSource;
import android.util.Log;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.wrappers.Wrappers;
import java.lang.reflect.Method;
import java.util.ArrayList;
import java.util.List;

@KeepForSdk
/* loaded from: classes.dex */
public class WorkSourceUtil {
    private static final int zza;
    private static final Method zzb;
    private static final Method zzc;
    private static final Method zzd;
    private static final Method zze;
    private static final Method zzf;
    private static final Method zzg;
    private static final Method zzh;
    private static final Method zzi;

    @GuardedBy
    private static Boolean zzj;

    /* JADX WARN: Removed duplicated region for block: B:28:0x0092 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:36:0x0070 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    static {
        /*
            java.lang.Class<java.lang.String> r0 = java.lang.String.class
            java.lang.String r1 = "add"
            java.lang.Class r2 = java.lang.Integer.TYPE
            java.lang.Class<android.os.WorkSource> r3 = android.os.WorkSource.class
            int r4 = android.os.Process.myUid()
            com.google.android.gms.common.util.WorkSourceUtil.zza = r4
            r4 = 0
            r5 = 1
            r6 = 0
            java.lang.Class[] r7 = new java.lang.Class[r5]     // Catch: java.lang.Exception -> L1a
            r7[r4] = r2     // Catch: java.lang.Exception -> L1a
            java.lang.reflect.Method r7 = r3.getMethod(r1, r7)     // Catch: java.lang.Exception -> L1a
            goto L1b
        L1a:
            r7 = r6
        L1b:
            com.google.android.gms.common.util.WorkSourceUtil.zzb = r7
            r7 = 2
            java.lang.Class[] r8 = new java.lang.Class[r7]     // Catch: java.lang.Exception -> L29
            r8[r4] = r2     // Catch: java.lang.Exception -> L29
            r8[r5] = r0     // Catch: java.lang.Exception -> L29
            java.lang.reflect.Method r1 = r3.getMethod(r1, r8)     // Catch: java.lang.Exception -> L29
            goto L2a
        L29:
            r1 = r6
        L2a:
            com.google.android.gms.common.util.WorkSourceUtil.zzc = r1
            java.lang.String r1 = "size"
            java.lang.reflect.Method r1 = r3.getMethod(r1, r6)     // Catch: java.lang.Exception -> L33
            goto L34
        L33:
            r1 = r6
        L34:
            com.google.android.gms.common.util.WorkSourceUtil.zzd = r1
            java.lang.String r1 = "get"
            java.lang.Class[] r8 = new java.lang.Class[r5]     // Catch: java.lang.Exception -> L41
            r8[r4] = r2     // Catch: java.lang.Exception -> L41
            java.lang.reflect.Method r1 = r3.getMethod(r1, r8)     // Catch: java.lang.Exception -> L41
            goto L42
        L41:
            r1 = r6
        L42:
            com.google.android.gms.common.util.WorkSourceUtil.zze = r1
            java.lang.String r1 = "getName"
            java.lang.Class[] r8 = new java.lang.Class[r5]     // Catch: java.lang.Exception -> L4f
            r8[r4] = r2     // Catch: java.lang.Exception -> L4f
            java.lang.reflect.Method r1 = r3.getMethod(r1, r8)     // Catch: java.lang.Exception -> L4f
            goto L50
        L4f:
            r1 = r6
        L50:
            com.google.android.gms.common.util.WorkSourceUtil.zzf = r1
            boolean r1 = com.google.android.gms.common.util.PlatformVersion.isAtLeastP()
            java.lang.String r8 = "WorkSourceUtil"
            if (r1 == 0) goto L67
            java.lang.String r1 = "createWorkChain"
            java.lang.reflect.Method r1 = r3.getMethod(r1, r6)     // Catch: java.lang.Exception -> L61
            goto L68
        L61:
            r1 = move-exception
            java.lang.String r9 = "Missing WorkChain API createWorkChain"
            android.util.Log.w(r8, r9, r1)
        L67:
            r1 = r6
        L68:
            com.google.android.gms.common.util.WorkSourceUtil.zzg = r1
            boolean r1 = com.google.android.gms.common.util.PlatformVersion.isAtLeastP()
            if (r1 == 0) goto L89
            java.lang.String r1 = "android.os.WorkSource$WorkChain"
            java.lang.Class r1 = java.lang.Class.forName(r1)     // Catch: java.lang.Exception -> L83
            java.lang.String r9 = "addNode"
            java.lang.Class[] r7 = new java.lang.Class[r7]     // Catch: java.lang.Exception -> L83
            r7[r4] = r2     // Catch: java.lang.Exception -> L83
            r7[r5] = r0     // Catch: java.lang.Exception -> L83
            java.lang.reflect.Method r0 = r1.getMethod(r9, r7)     // Catch: java.lang.Exception -> L83
            goto L8a
        L83:
            r0 = move-exception
            java.lang.String r1 = "Missing WorkChain class"
            android.util.Log.w(r8, r1, r0)
        L89:
            r0 = r6
        L8a:
            com.google.android.gms.common.util.WorkSourceUtil.zzh = r0
            boolean r0 = com.google.android.gms.common.util.PlatformVersion.isAtLeastP()
            if (r0 == 0) goto L9c
            java.lang.String r0 = "isEmpty"
            java.lang.reflect.Method r0 = r3.getMethod(r0, r6)     // Catch: java.lang.Exception -> L9c
            r0.setAccessible(r5)     // Catch: java.lang.Exception -> L9d
            goto L9d
        L9c:
            r0 = r6
        L9d:
            com.google.android.gms.common.util.WorkSourceUtil.zzi = r0
            com.google.android.gms.common.util.WorkSourceUtil.zzj = r6
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.util.WorkSourceUtil.<clinit>():void");
    }

    private WorkSourceUtil() {
    }

    @KeepForSdk
    public static void add(@NonNull WorkSource workSource, int i, @NonNull String str) {
        Method method = zzc;
        if (method != null) {
            if (str == null) {
                str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
            }
            try {
                method.invoke(workSource, Integer.valueOf(i), str);
                return;
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return;
            }
        }
        Method method2 = zzb;
        if (method2 != null) {
            try {
                method2.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e2) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e2);
            }
        }
    }

    @NonNull
    @KeepForSdk
    public static WorkSource fromPackage(@NonNull Context context, @NonNull String str) {
        if (context != null && context.getPackageManager() != null && str != null) {
            try {
                ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
                if (applicationInfo == null) {
                    Log.e("WorkSourceUtil", "Could not get applicationInfo from package: ".concat(str));
                    return null;
                }
                int i = applicationInfo.uid;
                WorkSource workSource = new WorkSource();
                add(workSource, i, str);
                return workSource;
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("WorkSourceUtil", "Could not find package: ".concat(str));
            }
        }
        return null;
    }

    @NonNull
    @KeepForSdk
    public static WorkSource fromPackageAndModuleExperimentalPi(@NonNull Context context, @NonNull String str, @NonNull String str2) {
        Method method;
        if (context != null && context.getPackageManager() != null && str2 != null && str != null) {
            int i = -1;
            try {
                ApplicationInfo applicationInfo = Wrappers.packageManager(context).getApplicationInfo(str, 0);
                if (applicationInfo == null) {
                    Log.e("WorkSourceUtil", "Could not get applicationInfo from package: ".concat(str));
                } else {
                    i = applicationInfo.uid;
                }
            } catch (PackageManager.NameNotFoundException unused) {
                Log.e("WorkSourceUtil", "Could not find package: ".concat(str));
            }
            if (i < 0) {
                return null;
            }
            WorkSource workSource = new WorkSource();
            Method method2 = zzg;
            if (method2 != null && (method = zzh) != null) {
                try {
                    Object invoke = method2.invoke(workSource, null);
                    int i2 = zza;
                    if (i != i2) {
                        method.invoke(invoke, Integer.valueOf(i), str);
                    }
                    method.invoke(invoke, Integer.valueOf(i2), str2);
                } catch (Exception e) {
                    Log.w("WorkSourceUtil", "Unable to assign chained blame through WorkSource", e);
                }
            } else {
                add(workSource, i, str);
            }
            return workSource;
        }
        Log.w("WorkSourceUtil", "Unexpected null arguments");
        return null;
    }

    @KeepForSdk
    public static int get(@NonNull WorkSource workSource, int i) {
        Method method = zze;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, Integer.valueOf(i));
                Preconditions.checkNotNull(invoke);
                return ((Integer) invoke).intValue();
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
            }
        }
        return 0;
    }

    @NonNull
    @KeepForSdk
    public static String getName(@NonNull WorkSource workSource, int i) {
        Method method = zzf;
        if (method != null) {
            try {
                return (String) method.invoke(workSource, Integer.valueOf(i));
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return null;
            }
        }
        return null;
    }

    @NonNull
    @KeepForSdk
    public static List<String> getNames(@NonNull WorkSource workSource) {
        int size;
        ArrayList arrayList = new ArrayList();
        if (workSource == null) {
            size = 0;
        } else {
            size = size(workSource);
        }
        if (size != 0) {
            for (int i = 0; i < size; i++) {
                String name = getName(workSource, i);
                if (!Strings.isEmptyOrWhitespace(name)) {
                    Preconditions.checkNotNull(name);
                    arrayList.add(name);
                }
            }
        }
        return arrayList;
    }

    @KeepForSdk
    public static synchronized boolean hasWorkSourcePermission(@NonNull Context context) {
        synchronized (WorkSourceUtil.class) {
            Boolean bool = zzj;
            if (bool != null) {
                return bool.booleanValue();
            }
            boolean z = false;
            if (context == null) {
                return false;
            }
            if (ContextCompat.a(context, "android.permission.UPDATE_DEVICE_STATS") == 0) {
                z = true;
            }
            zzj = Boolean.valueOf(z);
            return z;
        }
    }

    @KeepForSdk
    public static boolean isEmpty(@NonNull WorkSource workSource) {
        Method method = zzi;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, null);
                Preconditions.checkNotNull(invoke);
                return ((Boolean) invoke).booleanValue();
            } catch (Exception e) {
                Log.e("WorkSourceUtil", "Unable to check WorkSource emptiness", e);
            }
        }
        if (size(workSource) == 0) {
            return true;
        }
        return false;
    }

    @KeepForSdk
    public static int size(@NonNull WorkSource workSource) {
        Method method = zzd;
        if (method != null) {
            try {
                Object invoke = method.invoke(workSource, null);
                Preconditions.checkNotNull(invoke);
                return ((Integer) invoke).intValue();
            } catch (Exception e) {
                Log.wtf("WorkSourceUtil", "Unable to assign blame through WorkSource", e);
                return 0;
            }
        }
        return 0;
    }
}
