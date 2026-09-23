package androidx.media.session;

import android.app.ForegroundServiceStartNotAllowedException;
import android.content.BroadcastReceiver;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.pm.PackageManager;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Build;
import android.support.v4.media.MediaBrowserCompat;
import android.support.v4.media.a;
import android.support.v4.media.session.MediaControllerCompat;
import android.util.Log;
import android.view.KeyEvent;
import androidx.annotation.DoNotInline;
import androidx.annotation.RequiresApi;
import androidx.core.content.ContextCompat;
import java.util.List;

/* loaded from: classes.dex */
public class MediaButtonReceiver extends BroadcastReceiver {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f1277a = 0;

    @RequiresApi
    /* loaded from: classes.dex */
    public static final class Api31 {
        @DoNotInline
        public static ForegroundServiceStartNotAllowedException a(IllegalStateException illegalStateException) {
            return (ForegroundServiceStartNotAllowedException) illegalStateException;
        }

        @DoNotInline
        public static boolean b(IllegalStateException illegalStateException) {
            return illegalStateException instanceof ForegroundServiceStartNotAllowedException;
        }
    }

    /* loaded from: classes.dex */
    public static class MediaButtonConnectionCallback extends MediaBrowserCompat.ConnectionCallback {

        /* renamed from: a, reason: collision with root package name */
        public final Context f1278a;
        public final Intent b;

        /* renamed from: c, reason: collision with root package name */
        public final BroadcastReceiver.PendingResult f1279c;
        public MediaBrowserCompat d;

        public MediaButtonConnectionCallback(BroadcastReceiver.PendingResult pendingResult, Context context, Intent intent) {
            this.f1278a = context;
            this.b = intent;
            this.f1279c = pendingResult;
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public final void onConnected() {
            new MediaControllerCompat(this.f1278a, this.d.getSessionToken()).dispatchMediaButtonEvent((KeyEvent) this.b.getParcelableExtra("android.intent.extra.KEY_EVENT"));
            this.d.disconnect();
            this.f1279c.finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public final void onConnectionFailed() {
            this.d.disconnect();
            this.f1279c.finish();
        }

        @Override // android.support.v4.media.MediaBrowserCompat.ConnectionCallback
        public final void onConnectionSuspended() {
            this.d.disconnect();
            this.f1279c.finish();
        }
    }

    public static ComponentName a(Context context, String str) {
        PackageManager packageManager = context.getPackageManager();
        Intent intent = new Intent(str);
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = packageManager.queryIntentServices(intent, 0);
        if (queryIntentServices.size() == 1) {
            ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
            return new ComponentName(serviceInfo.packageName, serviceInfo.name);
        }
        if (queryIntentServices.isEmpty()) {
            return null;
        }
        StringBuilder w = a.w("Expected 1 service that handles ", str, ", found ");
        w.append(queryIntentServices.size());
        throw new IllegalStateException(w.toString());
    }

    @Override // android.content.BroadcastReceiver
    public final void onReceive(Context context, Intent intent) {
        if (intent != null && "android.intent.action.MEDIA_BUTTON".equals(intent.getAction()) && intent.hasExtra("android.intent.extra.KEY_EVENT")) {
            ComponentName a2 = a(context, "android.intent.action.MEDIA_BUTTON");
            if (a2 != null) {
                intent.setComponent(a2);
                try {
                    ContextCompat.g(context, intent);
                    return;
                } catch (IllegalStateException e) {
                    if (Build.VERSION.SDK_INT >= 31 && Api31.b(e)) {
                        Log.e("MediaButtonReceiver", "caught exception when trying to start a foreground service from the background: " + Api31.a(e).getMessage());
                        return;
                    }
                    throw e;
                }
            }
            ComponentName a3 = a(context, "android.media.browse.MediaBrowserService");
            if (a3 != null) {
                BroadcastReceiver.PendingResult goAsync = goAsync();
                Context applicationContext = context.getApplicationContext();
                MediaButtonConnectionCallback mediaButtonConnectionCallback = new MediaButtonConnectionCallback(goAsync, applicationContext, intent);
                MediaBrowserCompat mediaBrowserCompat = new MediaBrowserCompat(applicationContext, a3, mediaButtonConnectionCallback, null);
                mediaButtonConnectionCallback.d = mediaBrowserCompat;
                mediaBrowserCompat.connect();
                return;
            }
            throw new IllegalStateException("Could not find any Service that handles android.intent.action.MEDIA_BUTTON or implements a media browser service.");
        }
        Log.d("MediaButtonReceiver", "Ignore unsupported intent: " + intent);
    }
}
