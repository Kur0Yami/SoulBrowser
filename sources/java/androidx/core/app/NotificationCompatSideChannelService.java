package androidx.core.app;

import android.app.Notification;
import android.app.Service;
import android.content.Intent;
import android.os.IBinder;
import android.support.v4.app.INotificationSideChannel;

/* loaded from: classes.dex */
public abstract class NotificationCompatSideChannelService extends Service {

    /* loaded from: classes.dex */
    public class NotificationSideChannelStub extends INotificationSideChannel.Stub {
        @Override // android.support.v4.app.INotificationSideChannel
        public final void cancel(String str, int i, String str2) {
            throw null;
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public final void cancelAll(String str) {
            throw null;
        }

        @Override // android.support.v4.app.INotificationSideChannel
        public final void notify(String str, int i, String str2, Notification notification) {
            throw null;
        }
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        intent.getAction().equals("android.support.BIND_NOTIFICATION_SIDE_CHANNEL");
        return null;
    }
}
