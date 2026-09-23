package com.google.android.gms.cast.framework.media.internal;

import android.app.BroadcastOptions;
import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.support.v4.media.session.MediaSessionCompat;
import android.view.KeyEvent;
import com.google.android.gms.cast.MediaSeekOptions;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import j$.util.Objects;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzp extends MediaSessionCompat.Callback {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ zzs f3523a;

    public zzp(zzs zzsVar) {
        Objects.requireNonNull(zzsVar);
        this.f3523a = zzsVar;
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.cast.MediaSeekOptions$Builder, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r1v4, types: [com.google.android.gms.cast.MediaSeekOptions$Builder, java.lang.Object] */
    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onCustomAction(String str, Bundle bundle) {
        zzs.v.b("onCustomAction with action = %s", str);
        int hashCode = str.hashCode();
        zzs zzsVar = this.f3523a;
        switch (hashCode) {
            case -1699820260:
                if (str.equals(MediaIntentReceiver.ACTION_REWIND)) {
                    long j = -zzsVar.e.g;
                    RemoteMediaClient remoteMediaClient = zzsVar.n;
                    if (remoteMediaClient != null) {
                        long min = Math.min(remoteMediaClient.i(), Math.max(0L, remoteMediaClient.d() + j));
                        RemoteMediaClient remoteMediaClient2 = zzsVar.n;
                        if (remoteMediaClient2 == null) {
                            return;
                        }
                        ?? obj = new Object();
                        obj.f3454a = min;
                        remoteMediaClient2.w(new MediaSeekOptions(min, obj.b));
                        return;
                    }
                    return;
                }
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    SessionManager sessionManager = zzsVar.d;
                    if (sessionManager != null) {
                        sessionManager.b(true);
                        return;
                    }
                    return;
                }
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    SessionManager sessionManager2 = zzsVar.d;
                    if (sessionManager2 != null) {
                        sessionManager2.b(false);
                        return;
                    }
                    return;
                }
                break;
            case 1362116196:
                if (str.equals(MediaIntentReceiver.ACTION_FORWARD)) {
                    long j2 = zzsVar.e.g;
                    RemoteMediaClient remoteMediaClient3 = zzsVar.n;
                    if (remoteMediaClient3 != null) {
                        long min2 = Math.min(remoteMediaClient3.i(), Math.max(0L, remoteMediaClient3.d() + j2));
                        RemoteMediaClient remoteMediaClient4 = zzsVar.n;
                        if (remoteMediaClient4 != null) {
                            ?? obj2 = new Object();
                            obj2.f3454a = min2;
                            remoteMediaClient4.w(new MediaSeekOptions(min2, obj2.b));
                            return;
                        }
                        return;
                    }
                    return;
                }
                break;
        }
        Intent intent = new Intent(str);
        intent.setComponent(zzsVar.g);
        int i = Build.VERSION.SDK_INT;
        Context context = zzsVar.f3526a;
        if (i < 34) {
            context.sendBroadcast(intent);
        } else {
            context.sendBroadcast(intent, null, BroadcastOptions.makeBasic().setShareIdentityEnabled(true).toBundle());
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final boolean onMediaButtonEvent(Intent intent) {
        RemoteMediaClient remoteMediaClient;
        zzs.v.b("onMediaButtonEvent", new Object[0]);
        KeyEvent keyEvent = (KeyEvent) intent.getParcelableExtra("android.intent.extra.KEY_EVENT");
        if (keyEvent != null) {
            if ((keyEvent.getKeyCode() == 127 || keyEvent.getKeyCode() == 126) && (remoteMediaClient = this.f3523a.n) != null) {
                remoteMediaClient.A();
                return true;
            }
            return true;
        }
        return true;
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onPause() {
        zzs.v.b("onPause", new Object[0]);
        RemoteMediaClient remoteMediaClient = this.f3523a.n;
        if (remoteMediaClient != null) {
            remoteMediaClient.A();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onPlay() {
        zzs.v.b("onPlay", new Object[0]);
        RemoteMediaClient remoteMediaClient = this.f3523a.n;
        if (remoteMediaClient != null) {
            remoteMediaClient.A();
        }
    }

    /* JADX WARN: Type inference failed for: r1v2, types: [com.google.android.gms.cast.MediaSeekOptions$Builder, java.lang.Object] */
    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSeekTo(long j) {
        Logger logger = zzs.v;
        zzs.v.b("onSeekTo %d", Long.valueOf(j));
        RemoteMediaClient remoteMediaClient = this.f3523a.n;
        if (remoteMediaClient == null) {
            return;
        }
        ?? obj = new Object();
        obj.f3454a = j;
        remoteMediaClient.w(new MediaSeekOptions(j, obj.b));
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSkipToNext() {
        zzs.v.b("onSkipToNext", new Object[0]);
        RemoteMediaClient remoteMediaClient = this.f3523a.n;
        if (remoteMediaClient != null) {
            remoteMediaClient.s();
        }
    }

    @Override // android.support.v4.media.session.MediaSessionCompat.Callback
    public final void onSkipToPrevious() {
        zzs.v.b("onSkipToPrevious", new Object[0]);
        RemoteMediaClient remoteMediaClient = this.f3523a.n;
        if (remoteMediaClient != null) {
            remoteMediaClient.t();
        }
    }
}
