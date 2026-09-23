package com.google.android.gms.security;

import android.content.Context;
import android.os.SystemClock;
import android.util.Log;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.dynamite.DynamiteModule;
import com.google.android.gms.internal.common.zzi;
import com.google.android.gms.internal.common.zzj;
import java.lang.reflect.Method;

/* loaded from: classes3.dex */
public class ProviderInstaller {

    /* renamed from: a, reason: collision with root package name */
    public static final GoogleApiAvailabilityLight f11593a = GoogleApiAvailabilityLight.getInstance();
    public static final Object b = new Object();

    /* renamed from: c, reason: collision with root package name */
    public static Method f11594c = null;
    public static boolean d = false;

    /* loaded from: classes3.dex */
    public interface ProviderInstallListener {
    }

    public static void a(Context context) {
        Context context2;
        Preconditions.checkNotNull(context, "Context must not be null");
        f11593a.verifyGooglePlayServicesIsAvailable(context, 11925000);
        long uptimeMillis = SystemClock.uptimeMillis();
        synchronized (b) {
            Context context3 = null;
            if (!d) {
                try {
                    context2 = DynamiteModule.c(context, DynamiteModule.e, "com.google.android.gms.providerinstaller.dynamite").f3729a;
                } catch (DynamiteModule.LoadingException e) {
                    Log.w("ProviderInstaller", "Failed to load providerinstaller module: ".concat(String.valueOf(e.getMessage())));
                    context2 = null;
                }
                if (context2 != null) {
                    c(context2, "com.google.android.gms.providerinstaller.ProviderInstallerImpl");
                    return;
                }
            }
            boolean z = d;
            Context remoteContext = GooglePlayServicesUtilLight.getRemoteContext(context);
            if (remoteContext != null) {
                d = true;
                if (!z) {
                    try {
                        long uptimeMillis2 = SystemClock.uptimeMillis();
                        ClassLoader classLoader = remoteContext.getClassLoader();
                        zzi zziVar = new zzi(Context.class, context);
                        Class cls = Long.TYPE;
                        zzj.a(classLoader.loadClass("com.google.android.gms.common.security.ProviderInstallerImpl"), "reportRequestStats2", zziVar, new zzi(cls, Long.valueOf(uptimeMillis)), new zzi(cls, Long.valueOf(uptimeMillis2)));
                    } catch (Exception e2) {
                        Log.w("ProviderInstaller", "Failed to report request stats: ".concat(e2.toString()));
                    }
                }
                context3 = remoteContext;
            }
            if (context3 != null) {
                c(context3, "com.google.android.gms.common.security.ProviderInstallerImpl");
            } else {
                Log.e("ProviderInstaller", "Failed to get remote context");
                throw new GooglePlayServicesNotAvailableException(8);
            }
        }
    }

    public static void b(Context context, ProviderInstallListener providerInstallListener) {
        Preconditions.checkNotNull(context, "Context must not be null");
        Preconditions.checkNotNull(providerInstallListener, "Listener must not be null");
        Preconditions.checkMainThread("Must be called on the UI thread");
        new zza(context, providerInstallListener).execute(new Void[0]);
    }

    public static void c(Context context, String str) {
        String th;
        try {
            if (f11594c == null) {
                f11594c = context.getClassLoader().loadClass(str).getMethod("insertProvider", Context.class);
            }
            f11594c.invoke(null, context);
        } catch (Exception e) {
            Throwable cause = e.getCause();
            if (Log.isLoggable("ProviderInstaller", 6)) {
                if (cause == null) {
                    th = e.toString();
                } else {
                    th = cause.toString();
                }
                Log.e("ProviderInstaller", "Failed to install provider: ".concat(String.valueOf(th)));
            }
            throw new GooglePlayServicesNotAvailableException(8);
        }
    }
}
