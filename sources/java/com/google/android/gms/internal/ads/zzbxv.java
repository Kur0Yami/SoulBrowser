package com.google.android.gms.internal.ads;

import android.app.ActivityManager;
import android.content.Context;
import android.content.SharedPreferences;
import android.content.pm.PackageInfo;
import android.content.pm.PackageManager;
import android.net.Uri;
import android.os.Build;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.webkit.WebView;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.wrappers.Wrappers;
import java.io.PrintWriter;
import java.io.StringWriter;
import java.util.ArrayList;
import java.util.HashSet;
import java.util.LinkedList;
import java.util.WeakHashMap;
import java.util.concurrent.ExecutorService;
import java.util.concurrent.Executors;
import java.util.concurrent.atomic.AtomicBoolean;
import javax.annotation.ParametersAreNonnullByDefault;
import kotlin.uuid.Uuid;

@ParametersAreNonnullByDefault
/* loaded from: classes.dex */
public final class zzbxv implements zzbxx {
    public static final Object l = new Object();
    public static zzbxx m;
    public static zzbxx n;
    public static zzbxx o;
    public static Boolean p;
    public final Context b;
    public final VersionInfoParcel e;
    public final PackageInfo f;
    public final String g;
    public final String h;
    public boolean j;
    public final HashSet k;

    /* renamed from: a, reason: collision with root package name */
    public final Object f4968a = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final WeakHashMap f4969c = new WeakHashMap();
    public final ExecutorService d = Executors.unconfigurableExecutorService(Executors.newCachedThreadPool());
    public final AtomicBoolean i = new AtomicBoolean();

    /* JADX WARN: Removed duplicated region for block: B:14:0x0074  */
    /* JADX WARN: Removed duplicated region for block: B:17:0x0092  */
    /* JADX WARN: Removed duplicated region for block: B:25:0x00c4  */
    /* JADX WARN: Removed duplicated region for block: B:28:? A[RETURN, SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:32:0x00af  */
    /* JADX WARN: Removed duplicated region for block: B:33:0x007f  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public zzbxv(android.content.Context r3, com.google.android.gms.ads.internal.util.client.VersionInfoParcel r4) {
        /*
            r2 = this;
            r2.<init>()
            java.lang.Object r0 = new java.lang.Object
            r0.<init>()
            r2.f4968a = r0
            java.util.WeakHashMap r0 = new java.util.WeakHashMap
            r0.<init>()
            r2.f4969c = r0
            java.util.concurrent.ExecutorService r0 = java.util.concurrent.Executors.newCachedThreadPool()
            java.util.concurrent.ExecutorService r0 = java.util.concurrent.Executors.unconfigurableExecutorService(r0)
            r2.d = r0
            java.util.concurrent.atomic.AtomicBoolean r0 = new java.util.concurrent.atomic.AtomicBoolean
            r0.<init>()
            r2.i = r0
            android.content.Context r0 = r3.getApplicationContext()
            if (r0 == 0) goto L2c
            android.content.Context r3 = r3.getApplicationContext()
        L2c:
            r2.b = r3
            r2.e = r4
            com.google.android.gms.internal.ads.zzbgb r4 = com.google.android.gms.internal.ads.zzbgk.U8
            com.google.android.gms.internal.ads.zzbgi r0 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r0.a(r4)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            r0 = 0
            if (r4 == 0) goto L4d
            android.os.Handler r4 = com.google.android.gms.ads.internal.util.client.zzf.zza
            if (r3 == 0) goto L4d
            android.content.pm.ApplicationInfo r4 = r3.getApplicationInfo()
            if (r4 != 0) goto L4f
        L4d:
            r3 = r0
            goto L5e
        L4f:
            com.google.android.gms.common.wrappers.PackageManagerWrapper r4 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L4d
            android.content.pm.ApplicationInfo r3 = r3.getApplicationInfo()     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L4d
            java.lang.String r3 = r3.packageName     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L4d
            r1 = 0
            android.content.pm.PackageInfo r3 = r4.getPackageInfo(r3, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> L4d
        L5e:
            r2.f = r3
            com.google.android.gms.internal.ads.zzbgb r3 = com.google.android.gms.internal.ads.zzbgk.I8
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r4 = r4.a(r3)
            java.lang.Boolean r4 = (java.lang.Boolean) r4
            boolean r4 = r4.booleanValue()
            java.lang.String r1 = "unknown"
            if (r4 == 0) goto L7f
            android.os.Handler r4 = com.google.android.gms.ads.internal.util.client.zzf.zza
            java.util.Locale r4 = java.util.Locale.getDefault()
            java.lang.String r4 = r4.getCountry()
            goto L80
        L7f:
            r4 = r1
        L80:
            r2.g = r4
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r3 = r4.a(r3)
            java.lang.Boolean r3 = (java.lang.Boolean) r3
            boolean r3 = r3.booleanValue()
            if (r3 == 0) goto Laf
            android.content.Context r3 = r2.b
            android.os.Handler r4 = com.google.android.gms.ads.internal.util.client.zzf.zza
            if (r3 != 0) goto L99
            goto Lb0
        L99:
            com.google.android.gms.common.wrappers.PackageManagerWrapper r3 = com.google.android.gms.common.wrappers.Wrappers.packageManager(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb0
            java.lang.String r4 = "com.android.vending"
            r1 = 128(0x80, float:1.8E-43)
            android.content.pm.PackageInfo r3 = r3.getPackageInfo(r4, r1)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb0
            if (r3 != 0) goto La8
            goto Lb0
        La8:
            int r3 = r3.versionCode     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb0
            java.lang.String r0 = java.lang.Integer.toString(r3)     // Catch: android.content.pm.PackageManager.NameNotFoundException -> Lb0
            goto Lb0
        Laf:
            r0 = r1
        Lb0:
            r2.h = r0
            com.google.android.gms.internal.ads.zzbgb r3 = com.google.android.gms.internal.ads.zzbgk.E8
            com.google.android.gms.internal.ads.zzbgi r4 = com.google.android.gms.ads.internal.client.zzbd.zzc()
            java.lang.Object r3 = r4.a(r3)
            java.lang.Integer r3 = (java.lang.Integer) r3
            int r3 = r3.intValue()
            if (r3 <= 0) goto Lcb
            java.util.HashSet r3 = new java.util.HashSet
            r3.<init>()
            r2.k = r3
        Lcb:
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.internal.ads.zzbxv.<init>(android.content.Context, com.google.android.gms.ads.internal.util.client.VersionInfoParcel):void");
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.internal.ads.zzbxx, java.lang.Object] */
    public static zzbxx c(Context context) {
        synchronized (l) {
            try {
                if (m == null) {
                    if (h(context)) {
                        m = new zzbxv(context, VersionInfoParcel.forPackage());
                    } else {
                        m = new Object();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return m;
    }

    /* JADX WARN: Type inference failed for: r5v3, types: [com.google.android.gms.internal.ads.zzbxx, java.lang.Object] */
    public static zzbxx d(Context context, VersionInfoParcel versionInfoParcel) {
        synchronized (l) {
            try {
                if (o == null) {
                    boolean z = false;
                    if (((Boolean) zzbic.f4702c.c()).booleanValue()) {
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.C8)).booleanValue() || ((Boolean) zzbic.f4701a.c()).booleanValue()) {
                            z = true;
                        }
                    }
                    if (h(context)) {
                        zzbxv zzbxvVar = new zzbxv(context, versionInfoParcel);
                        zzbxvVar.i();
                        Thread.setDefaultUncaughtExceptionHandler(new zzbxs(zzbxvVar, Thread.getDefaultUncaughtExceptionHandler()));
                        o = zzbxvVar;
                    } else if (z && context != null) {
                        zzbxv zzbxvVar2 = new zzbxv(context, versionInfoParcel);
                        zzbxvVar2.j = true;
                        zzbxvVar2.i();
                        Thread.setDefaultUncaughtExceptionHandler(new zzbxs(zzbxvVar2, Thread.getDefaultUncaughtExceptionHandler()));
                        o = zzbxvVar2;
                    } else {
                        o = new Object();
                    }
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return o;
    }

    /* JADX WARN: Type inference failed for: r3v3, types: [com.google.android.gms.internal.ads.zzbxx, java.lang.Object] */
    public static zzbxx e(Context context) {
        synchronized (l) {
            try {
                if (n == null) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.D8)).booleanValue()) {
                        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.C8)).booleanValue() && context != null) {
                            n = new zzbxv(context, VersionInfoParcel.forPackage());
                        }
                    }
                    n = new Object();
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        return n;
    }

    public static String f(Throwable th) {
        StringWriter stringWriter = new StringWriter();
        th.printStackTrace(new PrintWriter(stringWriter));
        return stringWriter.toString();
    }

    public static boolean h(Context context) {
        boolean z;
        if (context == null) {
            return false;
        }
        synchronized (l) {
            try {
                if (p == null) {
                    if (com.google.android.gms.ads.internal.client.zzbb.zzh().nextInt(100) < ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ce)).intValue()) {
                        z = true;
                    } else {
                        z = false;
                    }
                    p = Boolean.valueOf(z);
                }
            } catch (Throwable th) {
                throw th;
            }
        }
        if (p.booleanValue()) {
            if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.C8)).booleanValue()) {
                return true;
            }
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzbxx
    public final void a(String str, Throwable th) {
        if (this.j) {
            return;
        }
        b(th, str, 1.0f);
    }

    @Override // com.google.android.gms.internal.ads.zzbxx
    public final void b(Throwable th, String str, float f) {
        Throwable th2;
        boolean z;
        Throwable th3;
        int i;
        boolean z2;
        String str2;
        String str3;
        PackageInfo packageInfo;
        ActivityManager.MemoryInfo zze;
        String zzg;
        Context context = this.b;
        if (!this.j) {
            Handler handler = com.google.android.gms.ads.internal.util.client.zzf.zza;
            if (((Boolean) zzbit.e.c()).booleanValue()) {
                th2 = th;
            } else {
                LinkedList linkedList = new LinkedList();
                for (Throwable th4 = th; th4 != null; th4 = th4.getCause()) {
                    linkedList.push(th4);
                }
                th2 = null;
                while (!linkedList.isEmpty()) {
                    Throwable th5 = (Throwable) linkedList.pop();
                    StackTraceElement[] stackTrace = th5.getStackTrace();
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.U2)).booleanValue() && stackTrace != null && stackTrace.length == 0 && com.google.android.gms.ads.internal.util.client.zzf.zzo(th5.getClass().getName())) {
                        z = true;
                    } else {
                        z = false;
                    }
                    ArrayList arrayList = new ArrayList();
                    arrayList.add(new StackTraceElement(th5.getClass().getName(), "<filtered>", "<filtered>", 1));
                    for (StackTraceElement stackTraceElement : stackTrace) {
                        if (com.google.android.gms.ads.internal.util.client.zzf.zzo(stackTraceElement.getClassName())) {
                            arrayList.add(stackTraceElement);
                            z = true;
                        } else {
                            String className = stackTraceElement.getClassName();
                            if (TextUtils.isEmpty(className) || (!className.startsWith("android.") && !className.startsWith("java."))) {
                                arrayList.add(new StackTraceElement("<filtered>", "<filtered>", "<filtered>", 1));
                            } else {
                                arrayList.add(stackTraceElement);
                            }
                        }
                    }
                    if (z) {
                        if (th2 == null) {
                            th3 = new Throwable(th5.getMessage());
                        } else {
                            th3 = new Throwable(th5.getMessage(), th2);
                        }
                        th2 = th3;
                        th2.setStackTrace((StackTraceElement[]) arrayList.toArray(new StackTraceElement[0]));
                    }
                }
            }
            if (th2 != null) {
                String name = th.getClass().getName();
                String f2 = f(th);
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.aa)).booleanValue();
                String str4 = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                if (booleanValue && (zzg = com.google.android.gms.ads.internal.util.client.zzf.zzg(f(th))) != null) {
                    str4 = zzg;
                }
                double d = f;
                double random = Math.random();
                if (f > 0.0f) {
                    i = (int) (1.0f / f);
                } else {
                    i = 1;
                }
                if (random < d) {
                    ArrayList arrayList2 = new ArrayList();
                    try {
                        z2 = Wrappers.packageManager(context).isCallerInstantApp();
                    } catch (Throwable th6) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzg("Error fetching instant app info", th6);
                        z2 = false;
                    }
                    try {
                        str2 = context.getPackageName();
                    } catch (Throwable unused) {
                        com.google.android.gms.ads.internal.util.client.zzo.zzi("Cannot obtain package name, proceeding.");
                        str2 = "unknown";
                    }
                    Uri.Builder appendQueryParameter = new Uri.Builder().scheme("https").path("//pagead2.googlesyndication.com/pagead/gen_204").appendQueryParameter("is_aia", Boolean.toString(z2)).appendQueryParameter("id", "gmob-apps-report-exception").appendQueryParameter("os", Build.VERSION.RELEASE);
                    int i2 = Build.VERSION.SDK_INT;
                    Uri.Builder appendQueryParameter2 = appendQueryParameter.appendQueryParameter("api", String.valueOf(i2));
                    String str5 = Build.MANUFACTURER;
                    String str6 = Build.MODEL;
                    if (!str6.startsWith(str5)) {
                        str6 = android.support.v4.media.a.q(new StringBuilder(androidx.work.impl.workers.a.e(1, str5) + str6.length()), str5, " ", str6);
                    }
                    Uri.Builder appendQueryParameter3 = appendQueryParameter2.appendQueryParameter("device", str6);
                    VersionInfoParcel versionInfoParcel = this.e;
                    Uri.Builder appendQueryParameter4 = appendQueryParameter3.appendQueryParameter("js", versionInfoParcel.afmaVersion).appendQueryParameter("appid", str2).appendQueryParameter("exceptiontype", name).appendQueryParameter("stacktrace", f2).appendQueryParameter("eids", TextUtils.join(",", com.google.android.gms.ads.internal.client.zzbd.zzb().a())).appendQueryParameter("exceptionkey", str).appendQueryParameter("cl", "829525209").appendQueryParameter("rc", "dev").appendQueryParameter("sampling_rate", Integer.toString(i)).appendQueryParameter("pb_tm", String.valueOf(zzbit.f4729c.c())).appendQueryParameter("gmscv", String.valueOf(GoogleApiAvailabilityLight.getInstance().getApkVersion(context)));
                    String str7 = "1";
                    if (true == versionInfoParcel.isLiteSdk) {
                        str3 = "1";
                    } else {
                        str3 = "0";
                    }
                    Uri.Builder appendQueryParameter5 = appendQueryParameter4.appendQueryParameter("lite", str3);
                    if (!TextUtils.isEmpty(str4)) {
                        appendQueryParameter5.appendQueryParameter("hash", str4);
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.J8)).booleanValue() && (zze = com.google.android.gms.ads.internal.util.client.zzf.zze(context)) != null) {
                        appendQueryParameter5.appendQueryParameter("available_memory", Long.toString(zze.availMem));
                        appendQueryParameter5.appendQueryParameter("total_memory", Long.toString(zze.totalMem));
                        if (true != zze.lowMemory) {
                            str7 = "0";
                        }
                        appendQueryParameter5.appendQueryParameter("is_low_memory", str7);
                    }
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.I8)).booleanValue()) {
                        String str8 = this.g;
                        if (!TextUtils.isEmpty(str8)) {
                            appendQueryParameter5.appendQueryParameter("countrycode", str8);
                        }
                        String str9 = this.h;
                        if (!TextUtils.isEmpty(str9)) {
                            appendQueryParameter5.appendQueryParameter("psv", str9);
                        }
                        if (i2 >= 26) {
                            packageInfo = WebView.getCurrentWebViewPackage();
                        } else {
                            if (context != null) {
                                try {
                                    packageInfo = Wrappers.packageManager(context).getPackageInfo("com.android.webview", Uuid.SIZE_BITS);
                                } catch (PackageManager.NameNotFoundException unused2) {
                                }
                            }
                            packageInfo = null;
                        }
                        if (packageInfo != null) {
                            appendQueryParameter5.appendQueryParameter("wvvc", Integer.toString(packageInfo.versionCode));
                            appendQueryParameter5.appendQueryParameter("wvvn", packageInfo.versionName);
                            appendQueryParameter5.appendQueryParameter("wvpn", packageInfo.packageName);
                        }
                    }
                    PackageInfo packageInfo2 = this.f;
                    if (packageInfo2 != null) {
                        appendQueryParameter5.appendQueryParameter("appvc", String.valueOf(packageInfo2.versionCode));
                        appendQueryParameter5.appendQueryParameter("appvn", packageInfo2.versionName);
                    }
                    arrayList2.add(appendQueryParameter5.toString());
                    int size = arrayList2.size();
                    int i3 = 0;
                    while (i3 < size) {
                        Object obj = arrayList2.get(i3);
                        i3++;
                        final String str10 = (String) obj;
                        final com.google.android.gms.ads.internal.util.client.zzu zzuVar = new com.google.android.gms.ads.internal.util.client.zzu(context, null);
                        this.d.execute(new Runnable() { // from class: com.google.android.gms.internal.ads.zzbxu
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                com.google.android.gms.ads.internal.util.client.zzu.this.zzc(str10, null);
                            }
                        });
                    }
                }
            }
        }
    }

    public final void g(Throwable th) {
        Context context;
        SharedPreferences sharedPreferences;
        if (th != null) {
            boolean z = false;
            boolean z2 = false;
            for (Throwable th2 = th; th2 != null; th2 = th2.getCause()) {
                for (StackTraceElement stackTraceElement : th2.getStackTrace()) {
                    z |= com.google.android.gms.ads.internal.util.client.zzf.zzo(stackTraceElement.getClassName());
                    z2 |= zzbxv.class.getName().equals(stackTraceElement.getClassName());
                }
            }
            int intValue = ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.E8)).intValue();
            if (intValue > 0) {
                HashSet hashSet = this.k;
                if (hashSet.size() < intValue) {
                    String zzg = com.google.android.gms.ads.internal.util.client.zzf.zzg(f(th));
                    if (zzg == null) {
                        zzg = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                    }
                    if (!hashSet.contains(zzg)) {
                        hashSet.add(zzg);
                    } else {
                        return;
                    }
                } else {
                    return;
                }
            }
            if (z && !z2) {
                if (!this.j) {
                    a(RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, th);
                }
                if (!this.i.getAndSet(true) && ((Boolean) zzbic.f4702c.c()).booleanValue() && (sharedPreferences = (context = this.b).getSharedPreferences("admob", 0)) != null) {
                    sharedPreferences.edit().putInt("crash_without_write", zzbfv.b(context, "crash_without_write") + 1).commit();
                }
            }
        }
    }

    public final void i() {
        Thread thread = Looper.getMainLooper().getThread();
        if (thread == null) {
            return;
        }
        synchronized (this.f4968a) {
            this.f4969c.put(thread, Boolean.TRUE);
        }
        thread.setUncaughtExceptionHandler(new zzbxt(this, thread.getUncaughtExceptionHandler()));
    }
}
