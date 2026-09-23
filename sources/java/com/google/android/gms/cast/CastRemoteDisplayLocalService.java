package com.google.android.gms.cast;

import android.annotation.SuppressLint;
import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.util.Log;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzfk;
import java.util.concurrent.atomic.AtomicBoolean;

@SuppressLint({"ForegroundServiceType"})
@Deprecated
/* loaded from: classes.dex */
public abstract class CastRemoteDisplayLocalService extends Service {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f3434c = new Logger("CastRDLocalService", null);
    public static final Object f = new Object();
    public static final AtomicBoolean g = new AtomicBoolean(false);

    /* loaded from: classes.dex */
    public interface Callbacks {
    }

    /* loaded from: classes.dex */
    public static final class NotificationSettings {

        /* loaded from: classes.dex */
        public static final class Builder {
        }
    }

    /* loaded from: classes.dex */
    public static class Options {
    }

    public static void a() {
        Logger logger = f3434c;
        logger.b("Stopping Service", new Object[0]);
        g.set(false);
        synchronized (f) {
            Log.e(logger.f3604a, logger.d("Service is already being stopped", new Object[0]));
        }
    }

    public final void b(String str) {
        f3434c.b("[Instance: %s] %s", this, str);
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        b("onBind");
        return null;
    }

    @Override // android.app.Service
    public final void onCreate() {
        b("onCreate");
        super.onCreate();
        new zzfk(getMainLooper()).postDelayed(new zzac(this), 100L);
        if (!PlatformVersion.isAtLeastO()) {
            return;
        }
        NotificationManager notificationManager = (NotificationManager) getSystemService(NotificationManager.class);
        NotificationChannel notificationChannel = new NotificationChannel("cast_remote_display_local_service", getString(R.string.cast_notification_default_channel_name), 2);
        notificationChannel.setShowBadge(false);
        notificationManager.createNotificationChannel(notificationChannel);
    }

    @Override // android.app.Service
    public final int onStartCommand(Intent intent, int i, int i2) {
        b("onStartCommand");
        return 2;
    }
}
