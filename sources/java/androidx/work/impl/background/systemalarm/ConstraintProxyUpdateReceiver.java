package androidx.work.impl.background.systemalarm;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.support.v4.media.a;
import androidx.work.Logger;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemalarm.ConstraintProxy;
import androidx.work.impl.utils.PackageManagerHelper;

/* loaded from: classes.dex */
public class ConstraintProxyUpdateReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1889a = Logger.e("ConstrntProxyUpdtRecvr");

    @Override // android.content.BroadcastReceiver
    public final void onReceive(final Context context, final Intent intent) {
        String str;
        if (intent != null) {
            str = intent.getAction();
        } else {
            str = null;
        }
        if (!"androidx.work.impl.background.systemalarm.UpdateProxies".equals(str)) {
            Logger.c().a(f1889a, a.C("Ignoring unknown action ", str), new Throwable[0]);
        } else {
            final BroadcastReceiver.PendingResult goAsync = goAsync();
            WorkManagerImpl.c(context).d.b(new Runnable() { // from class: androidx.work.impl.background.systemalarm.ConstraintProxyUpdateReceiver.1
                @Override // java.lang.Runnable
                public final void run() {
                    BroadcastReceiver.PendingResult pendingResult = goAsync;
                    Context context2 = context;
                    Intent intent2 = intent;
                    try {
                        boolean booleanExtra = intent2.getBooleanExtra("KEY_BATTERY_NOT_LOW_PROXY_ENABLED", false);
                        boolean booleanExtra2 = intent2.getBooleanExtra("KEY_BATTERY_CHARGING_PROXY_ENABLED", false);
                        boolean booleanExtra3 = intent2.getBooleanExtra("KEY_STORAGE_NOT_LOW_PROXY_ENABLED", false);
                        boolean booleanExtra4 = intent2.getBooleanExtra("KEY_NETWORK_STATE_PROXY_ENABLED", false);
                        Logger.c().a(ConstraintProxyUpdateReceiver.f1889a, "Updating proxies: BatteryNotLowProxy enabled (" + booleanExtra + "), BatteryChargingProxy enabled (" + booleanExtra2 + "), StorageNotLowProxy (" + booleanExtra3 + "), NetworkStateProxy enabled (" + booleanExtra4 + ")", new Throwable[0]);
                        PackageManagerHelper.a(context2, ConstraintProxy.BatteryNotLowProxy.class, booleanExtra);
                        PackageManagerHelper.a(context2, ConstraintProxy.BatteryChargingProxy.class, booleanExtra2);
                        PackageManagerHelper.a(context2, ConstraintProxy.StorageNotLowProxy.class, booleanExtra3);
                        PackageManagerHelper.a(context2, ConstraintProxy.NetworkStateProxy.class, booleanExtra4);
                    } finally {
                        pendingResult.finish();
                    }
                }
            });
        }
    }
}
