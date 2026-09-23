package androidx.mediarouter.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.util.Log;
import androidx.annotation.RequiresApi;
import androidx.mediarouter.media.MediaRouter;

/* loaded from: classes.dex */
public class RemotePlaybackClient {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ int f1414a = 0;

    /* renamed from: androidx.mediarouter.media.RemotePlaybackClient$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends MediaRouter.ControlRequestCallback {
        @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
        public final void a(String str, Bundle bundle) {
            throw null;
        }

        @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
        public final void b(Bundle bundle) {
            bundle.getClass();
            bundle.getString("android.media.intent.extra.SESSION_ID");
            int i = RemotePlaybackClient.f1414a;
            bundle.getBundle("android.media.intent.extra.SESSION_STATUS");
            bundle.getString("android.media.intent.extra.ITEM_ID");
            bundle.getBundle("android.media.intent.extra.ITEM_STATUS");
            throw null;
        }
    }

    /* renamed from: androidx.mediarouter.media.RemotePlaybackClient$2, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass2 extends MediaRouter.ControlRequestCallback {
        @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
        public final void a(String str, Bundle bundle) {
            throw null;
        }

        @Override // androidx.mediarouter.media.MediaRouter.ControlRequestCallback
        public final void b(Bundle bundle) {
            bundle.getClass();
            bundle.getString("android.media.intent.extra.SESSION_ID");
            int i = RemotePlaybackClient.f1414a;
            bundle.getBundle("android.media.intent.extra.SESSION_STATUS");
            throw null;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class ActionCallback {
    }

    /* loaded from: classes.dex */
    public final class ActionReceiver extends BroadcastReceiver {
        @Override // android.content.BroadcastReceiver
        public final void onReceive(Context context, Intent intent) {
            String stringExtra = intent.getStringExtra("android.media.intent.extra.SESSION_ID");
            if (stringExtra == null) {
                Log.w("RemotePlaybackClient", "Discarding spurious status callback with missing or invalid session id: sessionId=" + stringExtra);
                return;
            }
            throw null;
        }
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api33 {
    }

    /* loaded from: classes.dex */
    public static abstract class ItemActionCallback extends ActionCallback {
    }

    /* loaded from: classes.dex */
    public interface OnMessageReceivedListener {
    }

    /* loaded from: classes.dex */
    public static abstract class SessionActionCallback extends ActionCallback {
    }

    /* loaded from: classes.dex */
    public static abstract class StatusCallback {
    }

    static {
        Log.isLoggable("RemotePlaybackClient", 3);
    }
}
