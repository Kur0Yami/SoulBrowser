package com.google.android.gms.auth;

import android.accounts.Account;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Parcelable;
import android.os.RemoteException;
import android.os.SystemClock;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.Log;
import com.google.android.gms.common.BlockingServiceConnection;
import com.google.android.gms.common.GoogleApiAvailability;
import com.google.android.gms.common.GooglePlayServicesIncorrectManifestValueException;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.GmsClientSupervisor;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.internal.auth.zzby;
import com.google.android.gms.internal.auth.zzdc;
import com.google.android.gms.internal.auth.zzez;
import com.google.android.gms.internal.auth.zzht;
import com.google.android.gms.internal.auth.zzhw;
import com.google.android.gms.internal.auth.zzhx;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.Tasks;
import java.io.IOException;
import java.util.Iterator;
import java.util.concurrent.CancellationException;
import java.util.concurrent.ExecutionException;
import java.util.concurrent.TimeoutException;

@ShowFirstParty
/* loaded from: classes.dex */
public class zzl {

    /* renamed from: a, reason: collision with root package name */
    public static final String[] f3421a = {"com.google", "com.google.work", "cn.google"};
    public static final ComponentName b = new ComponentName("com.google.android.gms", "com.google.android.gms.auth.GetToken");

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f3422c = new Logger("Auth", "GoogleAuthUtil");

    public static TokenData a(Context context, Bundle bundle) {
        TokenData tokenData;
        ClassLoader classLoader = TokenData.class.getClassLoader();
        if (classLoader != null) {
            bundle.setClassLoader(classLoader);
        }
        Bundle bundle2 = bundle.getBundle("tokenDetails");
        if (bundle2 == null) {
            tokenData = null;
        } else {
            if (classLoader != null) {
                bundle2.setClassLoader(classLoader);
            }
            tokenData = (TokenData) bundle2.getParcelable("TokenData");
        }
        if (tokenData != null) {
            return tokenData;
        }
        g(context, "getTokenWithDetails", bundle.getString("Error"), (Intent) bundle.getParcelable("userRecoveryIntent"), (PendingIntent) bundle.getParcelable("userRecoveryPendingIntent"));
        throw null;
    }

    public static Object b(Context context, ComponentName componentName, zzk zzkVar) {
        BlockingServiceConnection blockingServiceConnection = new BlockingServiceConnection();
        GmsClientSupervisor gmsClientSupervisor = GmsClientSupervisor.getInstance(context);
        try {
            try {
                if (gmsClientSupervisor.bindService(componentName, blockingServiceConnection, "GoogleAuthUtil", null)) {
                    try {
                        return zzkVar.a(blockingServiceConnection.getService());
                    } catch (RemoteException | InterruptedException | TimeoutException e) {
                        Log.i("GoogleAuthUtil", "Error on service connection.", e);
                        throw new IOException("Error on service connection.", e);
                    }
                }
                throw new IOException("Could not bind to service.");
            } finally {
                gmsClientSupervisor.unbindService(componentName, blockingServiceConnection, "GoogleAuthUtil");
            }
        } catch (SecurityException e2) {
            Log.w("GoogleAuthUtil", "SecurityException while bind to auth service: " + e2.getMessage());
            throw new IOException("SecurityException while binding to Auth service.", e2);
        }
    }

    public static Object c(Task task, String str) {
        Logger logger = f3422c;
        try {
            return Tasks.a(task);
        } catch (InterruptedException e) {
            String l = a.l("Interrupted while waiting for the task of ", str, " to finish.");
            logger.w(l, new Object[0]);
            throw new IOException(l, e);
        } catch (CancellationException e2) {
            String l2 = a.l("Canceled while waiting for the task of ", str, " to finish.");
            logger.w(l2, new Object[0]);
            throw new IOException(l2, e2);
        } catch (ExecutionException e3) {
            Throwable cause = e3.getCause();
            if (cause instanceof ApiException) {
                throw ((ApiException) cause);
            }
            String l3 = a.l("Unable to get a result for ", str, " due to ExecutionException.");
            logger.w(l3, new Object[0]);
            throw new IOException(l3, e3);
        }
    }

    public static void d(Parcelable parcelable) {
        if (parcelable != null) {
            return;
        }
        f3422c.w("Service call returned null.", new Object[0]);
        throw new IOException("Service unavailable.");
    }

    public static void e(Context context) {
        try {
            GooglePlayServicesUtilLight.ensurePlayServicesAvailable(context.getApplicationContext(), 8400000);
        } catch (GooglePlayServicesIncorrectManifestValueException | GooglePlayServicesNotAvailableException e) {
            throw new Exception(e.getMessage(), e);
        } catch (GooglePlayServicesRepairableException e2) {
            throw new GooglePlayServicesAvailabilityException(e2.getConnectionStatusCode(), e2.getMessage(), e2.getIntent());
        }
    }

    public static void f(Context context, Bundle bundle) {
        String str = context.getApplicationInfo().packageName;
        bundle.putString("clientPackageName", str);
        if (TextUtils.isEmpty(bundle.getString("androidPackageName"))) {
            bundle.putString("androidPackageName", str);
        }
        bundle.putLong("service_connection_start_time_millis", SystemClock.elapsedRealtime());
    }

    public static void g(Context context, String str, String str2, Intent intent, PendingIntent pendingIntent) {
        zzby zzbyVar;
        zzby[] values = zzby.values();
        int length = values.length;
        int i = 0;
        while (true) {
            if (i < length) {
                zzbyVar = values[i];
                if (zzbyVar.f9499c.equals(str2)) {
                    break;
                } else {
                    i++;
                }
            } else {
                zzbyVar = zzby.UNKNOWN;
                break;
            }
        }
        Logger logger = f3422c;
        logger.w("[GoogleAuthUtil] error status:" + zzbyVar + " with method:" + str, new Object[0]);
        if (!zzby.BAD_AUTHENTICATION.equals(zzbyVar) && !zzby.CAPTCHA.equals(zzbyVar) && !zzby.NEED_PERMISSION.equals(zzbyVar) && !zzby.NEED_REMOTE_CONSENT.equals(zzbyVar) && !zzby.NEEDS_BROWSER.equals(zzbyVar) && !zzby.USER_CANCEL.equals(zzbyVar) && !zzby.DEVICE_MANAGEMENT_REQUIRED.equals(zzbyVar) && !zzby.DM_INTERNAL_ERROR.equals(zzbyVar) && !zzby.DM_SYNC_DISABLED.equals(zzbyVar) && !zzby.DM_ADMIN_BLOCKED.equals(zzbyVar) && !zzby.DM_ADMIN_PENDING_APPROVAL.equals(zzbyVar) && !zzby.DM_STALE_SYNC_REQUIRED.equals(zzbyVar) && !zzby.DM_DEACTIVATED.equals(zzbyVar) && !zzby.DM_REQUIRED.equals(zzbyVar) && !zzby.THIRD_PARTY_DEVICE_MANAGEMENT_REQUIRED.equals(zzbyVar) && !zzby.DM_SCREENLOCK_REQUIRED.equals(zzbyVar)) {
            if (!zzby.NETWORK_ERROR.equals(zzbyVar) && !zzby.SERVICE_UNAVAILABLE.equals(zzbyVar) && !zzby.INTNERNAL_ERROR.equals(zzbyVar) && !zzby.AUTH_SECURITY_ERROR.equals(zzbyVar) && !zzby.ACCOUNT_NOT_PRESENT.equals(zzbyVar)) {
                throw new Exception(str2);
            }
            throw new IOException(str2);
        }
        zzdc.c(context);
        if (zzht.f.zza().zza()) {
            if (pendingIntent != null && intent != null) {
                int i2 = UserRecoverableAuthException.g;
                Preconditions.checkNotNull(intent);
                Preconditions.checkNotNull(pendingIntent);
                throw new UserRecoverableAuthException(str2, intent, zzn.f);
            }
            if (GoogleApiAvailability.getInstance().getApkVersion(context) >= Integer.MAX_VALUE && pendingIntent == null) {
                logger.e(a.l("Recovery PendingIntent is missing on current Gms version: 2147483647 for method: ", str, ". It should always be present on or above Gms version 2147483647. This indicates a bug in Gms implementation."), new Object[0]);
            }
            if (intent == null) {
                logger.e(a.n("no recovery Intent found with status=", str2, " for method=", str, ". This shouldn't happen"), new Object[0]);
            }
            throw new UserRecoverableAuthException(str2, intent);
        }
        throw new UserRecoverableAuthException(str2, intent);
    }

    public static void h(Account account) {
        if (!TextUtils.isEmpty(account.name)) {
            for (int i = 0; i < 3; i++) {
                if (f3421a[i].equals(account.type)) {
                    return;
                }
            }
            throw new IllegalArgumentException("Account type not supported");
        }
        throw new IllegalArgumentException("Account name cannot be empty!");
    }

    public static boolean i(Context context) {
        if (GoogleApiAvailability.getInstance().isGooglePlayServicesAvailable(context, 17895000) == 0) {
            zzez j = ((zzhx) zzhw.f.f9578c.zza()).zza().j();
            String str = context.getApplicationInfo().packageName;
            Iterator it = j.iterator();
            while (it.hasNext()) {
                if (((String) it.next()).equals(str)) {
                    return false;
                }
            }
            return true;
        }
        return false;
    }
}
