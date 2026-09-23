package androidx.mediarouter.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.mediarouter.media.MediaRouteProvider;
import androidx.mediarouter.media.MediaRouter;
import java.util.Collection;

/* loaded from: classes.dex */
public abstract class MediaRouteProviderService extends Service {

    /* renamed from: c, reason: collision with root package name */
    public static final /* synthetic */ int f1374c = 0;

    /* loaded from: classes.dex */
    public static final class ClientInfo {

        /* loaded from: classes.dex */
        public static final class Builder {
        }
    }

    /* loaded from: classes.dex */
    public interface MediaRouteProviderServiceImpl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class MediaRouteProviderServiceImplApi30 extends MediaRouteProviderServiceImplBase {

        /* loaded from: classes.dex */
        public class ClientRecord extends MediaRouteProviderServiceImplBase.ClientRecord {
            @Override // androidx.mediarouter.media.MediaRouteProviderService.MediaRouteProviderServiceImplBase.ClientRecord
            public final void a(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection collection) {
                throw null;
            }
        }
    }

    /* loaded from: classes.dex */
    public static class MediaRouteProviderServiceImplBase implements MediaRouteProviderServiceImpl {

        /* renamed from: androidx.mediarouter.media.MediaRouteProviderService$MediaRouteProviderServiceImplBase$1, reason: invalid class name */
        /* loaded from: classes.dex */
        public class AnonymousClass1 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.mediarouter.media.MediaRouteProviderService$MediaRouteProviderServiceImplBase$2, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass2 extends MediaRouter.ControlRequestCallback {
            @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
            public final void a(String str, Bundle bundle) {
                int i = MediaRouteProviderService.f1374c;
                throw null;
            }

            @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
            public final void b(Bundle bundle) {
                int i = MediaRouteProviderService.f1374c;
                throw null;
            }
        }

        /* loaded from: classes.dex */
        public class ClientRecord implements IBinder.DeathRecipient {

            /* renamed from: androidx.mediarouter.media.MediaRouteProviderService$MediaRouteProviderServiceImplBase$ClientRecord$1, reason: invalid class name */
            /* loaded from: classes.dex */
            public class AnonymousClass1 implements MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener {
                @Override // androidx.mediarouter.media.MediaRouteProvider.DynamicGroupRouteController.OnDynamicRoutesChangedListener
                public final void a(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection collection) {
                    throw null;
                }
            }

            public void a(MediaRouteProvider.DynamicGroupRouteController dynamicGroupRouteController, MediaRouteDescriptor mediaRouteDescriptor, Collection collection) {
                throw null;
            }

            @Override // android.os.IBinder.DeathRecipient
            public final void binderDied() {
                throw null;
            }

            public final String toString() {
                int i = MediaRouteProviderService.f1374c;
                throw null;
            }
        }

        /* loaded from: classes.dex */
        public class ProviderCallbackBase extends MediaRouteProvider.Callback {
            @Override // androidx.mediarouter.media.MediaRouteProvider.Callback
            public final void a(MediaRouteProvider mediaRouteProvider, MediaRouteProviderDescriptor mediaRouteProviderDescriptor) {
                throw null;
            }
        }
    }

    /* loaded from: classes.dex */
    public final class PrivateHandler extends Handler {
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            if (message.what != 1) {
            } else {
                throw null;
            }
        }
    }

    /* loaded from: classes.dex */
    public static final class ReceiveHandler extends Handler {
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            Messenger messenger = message.replyTo;
            if (messenger != null) {
                try {
                    if (messenger.getBinder() != null) {
                        int i = message.what;
                        message.peekData();
                        if (i == 1) {
                            throw null;
                        }
                        throw null;
                    }
                } catch (NullPointerException unused) {
                }
            }
            int i2 = MediaRouteProviderService.f1374c;
        }
    }

    static {
        Log.isLoggable("MediaRouteProviderSrv", 3);
    }

    @Override // android.app.Service, android.content.ContextWrapper
    public final void attachBaseContext(Context context) {
        super.attachBaseContext(context);
        throw null;
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        throw null;
    }

    @Override // android.app.Service
    public final void onDestroy() {
        Object obj = null;
        obj.getClass();
        throw null;
    }
}
