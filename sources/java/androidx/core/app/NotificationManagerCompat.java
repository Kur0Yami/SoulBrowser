package androidx.core.app;

import android.app.AppOpsManager;
import android.app.NotificationManager;
import android.content.ComponentName;
import android.content.Context;
import android.content.ServiceConnection;
import android.content.pm.ApplicationInfo;
import android.os.Build;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.lang.reflect.InvocationTargetException;
import java.lang.reflect.Method;
import java.util.HashSet;

/* loaded from: classes.dex */
public final class NotificationManagerCompat {

    /* renamed from: c, reason: collision with root package name */
    public static final Object f641c = null;

    /* renamed from: a, reason: collision with root package name */
    public final Context f642a;
    public final NotificationManager b;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api23Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api24Impl {
        public static boolean a(NotificationManager notificationManager) {
            return notificationManager.areNotificationsEnabled();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api26Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api30Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api34Impl {
    }

    /* loaded from: classes.dex */
    public static class CancelTask implements Task {
        public final String toString() {
            return "CancelTask[packageName:null, id:0, tag:null, all:false]";
        }
    }

    @Retention(RetentionPolicy.SOURCE)
    @RestrictTo
    /* loaded from: classes.dex */
    public @interface InterruptionFilter {
    }

    /* loaded from: classes.dex */
    public static class NotificationWithIdAndTag {
    }

    /* loaded from: classes.dex */
    public static class NotifyTask implements Task {
        public final String toString() {
            return "NotifyTask[packageName:null, id:0, tag:null]";
        }
    }

    /* loaded from: classes.dex */
    public static class ServiceConnectedEvent {
    }

    /* loaded from: classes.dex */
    public static class SideChannelManager implements Handler.Callback, ServiceConnection {

        /* loaded from: classes.dex */
        public static class ListenerRecord {
        }

        @Override // android.os.Handler.Callback
        public final boolean handleMessage(Message message) {
            int i = message.what;
            if (i != 0) {
                if (i != 1) {
                    if (i != 2) {
                        if (i != 3) {
                            return false;
                        }
                        throw null;
                    }
                    throw null;
                }
                throw null;
            }
            Object obj = NotificationManagerCompat.f641c;
            throw null;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Connected to service " + componentName);
            }
            throw null;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            if (Log.isLoggable("NotifManCompat", 3)) {
                Log.d("NotifManCompat", "Disconnected from service " + componentName);
            }
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface Task {
    }

    static {
        new HashSet();
    }

    public NotificationManagerCompat(Context context) {
        this.f642a = context;
        this.b = (NotificationManager) context.getSystemService("notification");
    }

    public final boolean a() {
        Method method;
        Integer num;
        if (Build.VERSION.SDK_INT >= 24) {
            return Api24Impl.a(this.b);
        }
        Context context = this.f642a;
        AppOpsManager appOpsManager = (AppOpsManager) context.getSystemService("appops");
        ApplicationInfo applicationInfo = context.getApplicationInfo();
        String packageName = context.getApplicationContext().getPackageName();
        int i = applicationInfo.uid;
        try {
            Class<?> cls = Class.forName(AppOpsManager.class.getName());
            Class<?> cls2 = Integer.TYPE;
            method = cls.getMethod("checkOpNoThrow", cls2, cls2, String.class);
            num = (Integer) cls.getDeclaredField("OP_POST_NOTIFICATION").get(Integer.class);
            num.getClass();
        } catch (ClassNotFoundException | IllegalAccessException | NoSuchFieldException | NoSuchMethodException | RuntimeException | InvocationTargetException unused) {
        }
        if (((Integer) method.invoke(appOpsManager, num, Integer.valueOf(i), packageName)).intValue() == 0) {
            return true;
        }
        return false;
    }
}
