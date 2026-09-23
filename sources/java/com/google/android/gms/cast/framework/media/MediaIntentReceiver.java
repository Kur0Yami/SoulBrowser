package com.google.android.gms.cast.framework.media;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.KeyEvent;
import androidx.annotation.Keep;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastSession;
import com.google.android.gms.cast.framework.Session;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;

@Keep
/* loaded from: classes.dex */
public class MediaIntentReceiver extends BroadcastReceiver {

    @NonNull
    public static final String ACTION_DISCONNECT = "com.google.android.gms.cast.framework.action.DISCONNECT";

    @NonNull
    public static final String ACTION_FORWARD = "com.google.android.gms.cast.framework.action.FORWARD";

    @NonNull
    public static final String ACTION_REWIND = "com.google.android.gms.cast.framework.action.REWIND";

    @NonNull
    public static final String ACTION_SKIP_NEXT = "com.google.android.gms.cast.framework.action.SKIP_NEXT";

    @NonNull
    public static final String ACTION_SKIP_PREV = "com.google.android.gms.cast.framework.action.SKIP_PREV";

    @NonNull
    public static final String ACTION_STOP_CASTING = "com.google.android.gms.cast.framework.action.STOP_CASTING";

    @NonNull
    public static final String ACTION_TOGGLE_PLAYBACK = "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK";

    @NonNull
    public static final String EXTRA_SKIP_STEP_MS = "googlecast-extra_skip_step_ms";
    private static final String TAG = "MediaIntentReceiver";
    private static final Logger log = new Logger(TAG, null);

    @Nullable
    private static RemoteMediaClient getRemoteMediaClient(CastSession castSession) {
        if (castSession != null && castSession.c()) {
            return castSession.j();
        }
        return null;
    }

    private void seek(CastSession castSession, long j) {
        RemoteMediaClient remoteMediaClient;
        if (j != 0 && (remoteMediaClient = getRemoteMediaClient(castSession)) != null && !remoteMediaClient.l() && !remoteMediaClient.p()) {
            remoteMediaClient.x(remoteMediaClient.d() + j);
        }
    }

    private void togglePlayback(CastSession castSession) {
        RemoteMediaClient remoteMediaClient = getRemoteMediaClient(castSession);
        if (remoteMediaClient == null) {
            return;
        }
        remoteMediaClient.A();
    }

    @Override // android.content.BroadcastReceiver
    public void onReceive(@NonNull Context context, @NonNull Intent intent) {
        SessionManager d;
        Session d2;
        String action = intent.getAction();
        log.b("onReceive action: %s", action);
        if (action != null && (d2 = (d = CastContext.e(context).d()).d()) != null) {
            switch (action.hashCode()) {
                case -1699820260:
                    if (action.equals(ACTION_REWIND)) {
                        onReceiveActionRewind(d2, intent.getLongExtra(EXTRA_SKIP_STEP_MS, 0L));
                        return;
                    }
                    break;
                case -945151566:
                    if (action.equals(ACTION_SKIP_NEXT)) {
                        onReceiveActionSkipNext(d2);
                        return;
                    }
                    break;
                case -945080078:
                    if (action.equals(ACTION_SKIP_PREV)) {
                        onReceiveActionSkipPrev(d2);
                        return;
                    }
                    break;
                case -668151673:
                    if (action.equals(ACTION_STOP_CASTING)) {
                        d.b(true);
                        return;
                    }
                    break;
                case -124479363:
                    if (action.equals(ACTION_DISCONNECT)) {
                        d.b(false);
                        return;
                    }
                    break;
                case 235550565:
                    if (action.equals(ACTION_TOGGLE_PLAYBACK)) {
                        onReceiveActionTogglePlayback(d2);
                        return;
                    }
                    break;
                case 1362116196:
                    if (action.equals(ACTION_FORWARD)) {
                        onReceiveActionForward(d2, intent.getLongExtra(EXTRA_SKIP_STEP_MS, 0L));
                        return;
                    }
                    break;
                case 1997055314:
                    if (action.equals("android.intent.action.MEDIA_BUTTON")) {
                        onReceiveActionMediaButton(d2, intent);
                        return;
                    }
                    break;
            }
            onReceiveOtherAction(context, action, intent);
        }
    }

    public void onReceiveActionForward(@NonNull Session session, long j) {
        if (session instanceof CastSession) {
            seek((CastSession) session, j);
        }
    }

    public void onReceiveActionMediaButton(@NonNull Session session, @NonNull Intent intent) {
        KeyEvent keyEvent;
        if ((session instanceof CastSession) && intent.hasExtra("android.intent.extra.KEY_EVENT") && (keyEvent = (KeyEvent) ((Bundle) Preconditions.checkNotNull(intent.getExtras())).get("android.intent.extra.KEY_EVENT")) != null && keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 85) {
            togglePlayback((CastSession) session);
        }
    }

    public void onReceiveActionRewind(@NonNull Session session, long j) {
        if (session instanceof CastSession) {
            seek((CastSession) session, -j);
        }
    }

    public void onReceiveActionSkipNext(@NonNull Session session) {
        RemoteMediaClient remoteMediaClient;
        if ((session instanceof CastSession) && (remoteMediaClient = getRemoteMediaClient((CastSession) session)) != null && !remoteMediaClient.p()) {
            remoteMediaClient.s();
        }
    }

    public void onReceiveActionSkipPrev(@NonNull Session session) {
        RemoteMediaClient remoteMediaClient;
        if ((session instanceof CastSession) && (remoteMediaClient = getRemoteMediaClient((CastSession) session)) != null && !remoteMediaClient.p()) {
            remoteMediaClient.t();
        }
    }

    public void onReceiveActionTogglePlayback(@NonNull Session session) {
        if (session instanceof CastSession) {
            togglePlayback((CastSession) session);
        }
    }

    public void onReceiveOtherAction(@Nullable Context context, @NonNull String str, @NonNull Intent intent) {
    }

    @Deprecated
    public void onReceiveOtherAction(@NonNull String str, @NonNull Intent intent) {
        onReceiveOtherAction(null, str, intent);
    }
}
