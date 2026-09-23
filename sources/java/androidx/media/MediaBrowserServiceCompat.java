package androidx.media;

import android.app.Service;
import android.content.Context;
import android.content.Intent;
import android.os.Binder;
import android.os.Build;
import android.os.Bundle;
import android.os.Handler;
import android.os.IBinder;
import android.os.Message;
import android.os.Messenger;
import android.service.media.MediaBrowserService;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.media.MediaSessionManager;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public abstract class MediaBrowserServiceCompat extends Service {

    /* renamed from: c, reason: collision with root package name */
    public MediaBrowserServiceImplApi23 f1260c;

    /* renamed from: androidx.media.MediaBrowserServiceCompat$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends Result<List<MediaBrowserCompat.MediaItem>> {
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends Result<MediaBrowserCompat.MediaItem> {
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends Result<List<MediaBrowserCompat.MediaItem>> {
    }

    /* renamed from: androidx.media.MediaBrowserServiceCompat$4, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass4 extends Result<Bundle> {
    }

    /* loaded from: classes.dex */
    public static final class BrowserRoot {
    }

    /* loaded from: classes.dex */
    public class ConnectionRecord implements IBinder.DeathRecipient {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$ConnectionRecord$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        public ConnectionRecord(String str, int i, int i2) {
            new HashMap();
            new MediaSessionManager.RemoteUserInfo(str, i, i2);
        }

        @Override // android.os.IBinder.DeathRecipient
        public final void binderDied() {
            MediaBrowserServiceCompat.this.getClass();
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public interface MediaBrowserServiceImpl {
        void onCreate();
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public class MediaBrowserServiceImplApi21 implements MediaBrowserServiceImpl {

        /* renamed from: a, reason: collision with root package name */
        public final ArrayList f1262a = new ArrayList();
        public MediaBrowserService b;

        /* renamed from: c, reason: collision with root package name */
        public Messenger f1263c;

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$2, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass2 extends Result<List<MediaBrowserCompat.MediaItem>> {
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$3, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass3 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi21$4, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass4 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        @RequiresApi
        /* loaded from: classes.dex */
        public class MediaBrowserServiceApi21 extends MediaBrowserService {
            public MediaBrowserServiceApi21(Context context) {
                attachBaseContext(context);
            }

            @Override // android.service.media.MediaBrowserService
            public final MediaBrowserService.BrowserRoot onGetRoot(String str, int i, Bundle bundle) {
                Bundle bundle2;
                MediaSessionCompat.ensureClassLoader(bundle);
                MediaBrowserServiceImplApi21 mediaBrowserServiceImplApi21 = MediaBrowserServiceImplApi21.this;
                MediaBrowserServiceCompat mediaBrowserServiceCompat = MediaBrowserServiceCompat.this;
                if (bundle == null) {
                    bundle2 = null;
                } else {
                    bundle2 = new Bundle(bundle);
                }
                int i2 = -1;
                if (bundle2 != null && bundle2.getInt("extra_client_version", 0) != 0) {
                    bundle2.remove("extra_client_version");
                    mediaBrowserServiceImplApi21.f1263c = new Messenger((Handler) null);
                    Bundle bundle3 = new Bundle();
                    bundle3.putInt("extra_service_version", 2);
                    bundle3.putBinder("extra_messenger", mediaBrowserServiceImplApi21.f1263c.getBinder());
                    mediaBrowserServiceImplApi21.f1262a.add(bundle3);
                    i2 = bundle2.getInt("extra_calling_pid", -1);
                    bundle2.remove("extra_calling_pid");
                }
                new ConnectionRecord(str, i2, i);
                if (mediaBrowserServiceCompat.a() == null) {
                    return null;
                }
                if (mediaBrowserServiceImplApi21.f1263c == null) {
                    throw null;
                }
                throw null;
            }

            @Override // android.service.media.MediaBrowserService
            public final void onLoadChildren(String str, MediaBrowserService.Result result) {
                MediaBrowserServiceCompat.this.b();
            }
        }

        public MediaBrowserServiceImplApi21() {
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            MediaBrowserServiceApi21 mediaBrowserServiceApi21 = new MediaBrowserServiceApi21(MediaBrowserServiceCompat.this);
            this.b = mediaBrowserServiceApi21;
            mediaBrowserServiceApi21.onCreate();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public class MediaBrowserServiceImplApi23 extends MediaBrowserServiceImplApi21 {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi23$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends Result<MediaBrowserCompat.MediaItem> {

            /* renamed from: c, reason: collision with root package name */
            public final /* synthetic */ ResultWrapper f1265c;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            public AnonymousClass1(String str, ResultWrapper resultWrapper) {
                super(str);
                this.f1265c = resultWrapper;
            }
        }

        /* loaded from: classes.dex */
        public class MediaBrowserServiceApi23 extends MediaBrowserServiceImplApi21.MediaBrowserServiceApi21 {
            public MediaBrowserServiceApi23(MediaBrowserServiceImplApi23 mediaBrowserServiceImplApi23, Context context) {
                super(context);
            }

            @Override // android.service.media.MediaBrowserService
            public final void onLoadItem(String str, MediaBrowserService.Result result) {
                AnonymousClass1 anonymousClass1 = new AnonymousClass1(str, new ResultWrapper(result));
                if (!anonymousClass1.b) {
                    anonymousClass1.b = true;
                    anonymousClass1.f1265c.f1267a.sendResult(null);
                } else {
                    throw new IllegalStateException("sendResult() called when either sendResult() or sendError() had already been called for: " + ((Object) str));
                }
            }
        }

        public MediaBrowserServiceImplApi23() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public void onCreate() {
            MediaBrowserServiceApi23 mediaBrowserServiceApi23 = new MediaBrowserServiceApi23(this, MediaBrowserServiceCompat.this);
            this.b = mediaBrowserServiceApi23;
            mediaBrowserServiceApi23.onCreate();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public class MediaBrowserServiceImplApi26 extends MediaBrowserServiceImplApi23 {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplApi26$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 extends Result<List<MediaBrowserCompat.MediaItem>> {
        }

        /* loaded from: classes.dex */
        public class MediaBrowserServiceApi26 extends MediaBrowserServiceImplApi23.MediaBrowserServiceApi23 {
            public MediaBrowserServiceApi26(Context context) {
                super(MediaBrowserServiceImplApi26.this, context);
            }

            @Override // android.service.media.MediaBrowserService
            public final void onLoadChildren(String str, MediaBrowserService.Result result, Bundle bundle) {
                MediaSessionCompat.ensureClassLoader(bundle);
                MediaBrowserServiceCompat.this.b();
            }
        }

        public MediaBrowserServiceImplApi26() {
            super();
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi23, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImplApi21, androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public final void onCreate() {
            MediaBrowserServiceApi26 mediaBrowserServiceApi26 = new MediaBrowserServiceApi26(MediaBrowserServiceCompat.this);
            this.b = mediaBrowserServiceApi26;
            mediaBrowserServiceApi26.onCreate();
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public class MediaBrowserServiceImplApi28 extends MediaBrowserServiceImplApi26 {
    }

    /* loaded from: classes.dex */
    public class MediaBrowserServiceImplBase implements MediaBrowserServiceImpl {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$2, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass2 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$MediaBrowserServiceImplBase$3, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass3 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        @Override // androidx.media.MediaBrowserServiceCompat.MediaBrowserServiceImpl
        public final void onCreate() {
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static class Result<T> {

        /* renamed from: a, reason: collision with root package name */
        public final Object f1266a;
        public boolean b;

        public Result(Object obj) {
            this.f1266a = obj;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class ResultWrapper<T> {

        /* renamed from: a, reason: collision with root package name */
        public final MediaBrowserService.Result f1267a;

        public ResultWrapper(MediaBrowserService.Result result) {
            this.f1267a = result;
        }
    }

    /* loaded from: classes.dex */
    public class ServiceBinderImpl {

        /* renamed from: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$1, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass1 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$2, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass2 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$3, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass3 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$4, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass4 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$5, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass5 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$6, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass6 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$7, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass7 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$8, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass8 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        /* renamed from: androidx.media.MediaBrowserServiceCompat$ServiceBinderImpl$9, reason: invalid class name */
        /* loaded from: classes.dex */
        class AnonymousClass9 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }
    }

    /* loaded from: classes.dex */
    public interface ServiceCallbacks {
    }

    /* loaded from: classes.dex */
    public static class ServiceCallbacksCompat implements ServiceCallbacks {
    }

    /* loaded from: classes.dex */
    public static final class ServiceHandler extends Handler {
        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            removeCallbacksAndMessages(null);
        }

        @Override // android.os.Handler
        public final boolean sendMessageAtTime(Message message, long j) {
            Bundle data = message.getData();
            data.setClassLoader(MediaBrowserCompat.class.getClassLoader());
            data.putInt("data_calling_uid", Binder.getCallingUid());
            int callingPid = Binder.getCallingPid();
            if (callingPid > 0) {
                data.putInt("data_calling_pid", callingPid);
            } else if (!data.containsKey("data_calling_pid")) {
                data.putInt("data_calling_pid", -1);
            }
            return super.sendMessageAtTime(message, j);
        }
    }

    static {
        Log.isLoggable("MBServiceCompat", 3);
    }

    public abstract BrowserRoot a();

    public abstract void b();

    @Override // android.app.Service
    public final void dump(FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
    }

    @Override // android.app.Service
    public final IBinder onBind(Intent intent) {
        return this.f1260c.b.onBind(intent);
    }

    @Override // android.app.Service
    public final void onCreate() {
        super.onCreate();
        int i = Build.VERSION.SDK_INT;
        if (i >= 28) {
            this.f1260c = new MediaBrowserServiceImplApi26();
        } else if (i >= 26) {
            this.f1260c = new MediaBrowserServiceImplApi26();
        } else {
            this.f1260c = new MediaBrowserServiceImplApi23();
        }
        this.f1260c.onCreate();
    }

    @Override // android.app.Service
    public final void onDestroy() {
        throw null;
    }
}
