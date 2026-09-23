package com.google.android.gms.cast.framework.media.internal;

import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.graphics.Bitmap;
import android.net.Uri;
import android.os.Bundle;
import android.os.Looper;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.support.v4.media.session.PlaybackStateCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.MediaInfo;
import com.google.android.gms.cast.MediaMetadata;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.ReconnectionService;
import com.google.android.gms.cast.framework.SessionManager;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.images.WebImage;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzbx;
import com.google.android.gms.internal.cast.zzfk;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class zzs {
    public static final Logger v = new Logger("MediaSessionManager", null);

    /* renamed from: a, reason: collision with root package name */
    public final Context f3526a;
    public final CastOptions b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbx f3527c;
    public final SessionManager d;
    public final NotificationOptions e;
    public final ComponentName f;
    public final ComponentName g;
    public final zzb h;
    public final zzb i;
    public final zzm j;
    public final zzfk k;
    public final Runnable l;
    public final RemoteMediaClient.Callback m;
    public RemoteMediaClient n;
    public CastDevice o;
    public MediaSessionCompat p;
    public boolean q;
    public PlaybackStateCompat.CustomAction r;
    public PlaybackStateCompat.CustomAction s;
    public PlaybackStateCompat.CustomAction t;
    public PlaybackStateCompat.CustomAction u;

    public zzs(Context context, CastOptions castOptions, zzbx zzbxVar) {
        SessionManager sessionManager;
        NotificationOptions notificationOptions;
        String str;
        ComponentName componentName;
        String str2;
        ComponentName componentName2;
        NotificationOptions notificationOptions2;
        int[] iArr;
        int size;
        this.f3526a = context;
        this.b = castOptions;
        this.f3527c = zzbxVar;
        Logger logger = CastContext.l;
        Preconditions.checkMainThread("Must be called from the main thread.");
        CastContext castContext = CastContext.n;
        zzm zzmVar = null;
        if (castContext != null) {
            sessionManager = castContext.d();
        } else {
            sessionManager = null;
        }
        this.d = sessionManager;
        CastMediaOptions castMediaOptions = castOptions.j;
        if (castMediaOptions == null) {
            notificationOptions = null;
        } else {
            notificationOptions = castMediaOptions.h;
        }
        this.e = notificationOptions;
        this.m = new zzr(this);
        if (castMediaOptions == null) {
            str = null;
        } else {
            str = castMediaOptions.f;
        }
        if (!TextUtils.isEmpty(str)) {
            componentName = new ComponentName(context, str);
        } else {
            componentName = null;
        }
        this.f = componentName;
        if (castMediaOptions == null) {
            str2 = null;
        } else {
            str2 = castMediaOptions.f3494c;
        }
        if (!TextUtils.isEmpty(str2)) {
            componentName2 = new ComponentName(context, str2);
        } else {
            componentName2 = null;
        }
        this.g = componentName2;
        zzb zzbVar = new zzb(context);
        this.h = zzbVar;
        zzbVar.e = new zzn(this);
        zzb zzbVar2 = new zzb(context);
        this.i = zzbVar2;
        zzbVar2.e = new zzo(this);
        this.k = new zzfk(Looper.getMainLooper());
        Logger logger2 = zzm.w;
        CastMediaOptions castMediaOptions2 = castOptions.j;
        if (castMediaOptions2 != null && (notificationOptions2 = castMediaOptions2.h) != null) {
            com.google.android.gms.cast.framework.media.zzg zzgVar = notificationOptions2.J;
            if (zzgVar != null) {
                List b = zzt.b(zzgVar);
                try {
                    iArr = zzgVar.zzg();
                } catch (RemoteException e) {
                    Logger logger3 = zzt.f3528a;
                    Log.e(logger3.f3604a, logger3.d("Unable to call %s on %s.", "getCompactViewActionIndices", "zzg"), e);
                    iArr = null;
                }
                if (b == null) {
                    size = 0;
                } else {
                    size = b.size();
                }
                if (b != null && !b.isEmpty()) {
                    if (b.size() > 5) {
                        Log.e(logger2.f3604a, logger2.d("NotificationActionsProvider".concat(" provides more than 5 actions."), new Object[0]));
                    } else if (iArr != null && (iArr.length) != 0) {
                        for (int i : iArr) {
                            if (i < 0 || i >= size) {
                                Log.e(logger2.f3604a, logger2.d("NotificationActionsProvider".concat("provides a compact view action whose index is out of bounds."), new Object[0]));
                                break;
                            }
                        }
                    } else {
                        Log.e(logger2.f3604a, logger2.d("NotificationActionsProvider".concat(" doesn't provide any actions for compact view."), new Object[0]));
                    }
                } else {
                    Log.e(logger2.f3604a, logger2.d("NotificationActionsProvider".concat(" doesn't provide any action."), new Object[0]));
                }
            }
            zzmVar = new zzm(context);
        }
        this.j = zzmVar;
        this.l = new Runnable() { // from class: com.google.android.gms.cast.framework.media.internal.zzq
            @Override // java.lang.Runnable
            public final /* synthetic */ void run() {
                zzs.this.i(false);
            }
        };
    }

    public final void a(RemoteMediaClient remoteMediaClient, CastDevice castDevice) {
        CastMediaOptions castMediaOptions;
        ComponentName componentName;
        CastOptions castOptions = this.b;
        if (castOptions == null) {
            castMediaOptions = null;
        } else {
            castMediaOptions = castOptions.j;
        }
        if (!this.q && castOptions != null && castMediaOptions != null && this.e != null && remoteMediaClient != null && castDevice != null && (componentName = this.g) != null) {
            this.n = remoteMediaClient;
            remoteMediaClient.u(this.m);
            this.o = castDevice;
            Intent intent = new Intent("android.intent.action.MEDIA_BUTTON");
            intent.setComponent(componentName);
            Context context = this.f3526a;
            PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 67108864);
            if (castMediaOptions.j) {
                MediaSessionCompat mediaSessionCompat = new MediaSessionCompat(context, "CastMediaSession", componentName, broadcast);
                this.p = mediaSessionCompat;
                d(0, null);
                CastDevice castDevice2 = this.o;
                if (castDevice2 != null && !TextUtils.isEmpty(castDevice2.h)) {
                    mediaSessionCompat.setMetadata(new MediaMetadataCompat.Builder().putString(MediaMetadataCompat.METADATA_KEY_ALBUM_ARTIST, context.getResources().getString(R.string.cast_casting_to_device, this.o.h)).build());
                }
                mediaSessionCompat.setCallback(new zzp(this));
                mediaSessionCompat.setActive(true);
                this.f3527c.f9642c.getClass();
                MediaRouter.r(mediaSessionCompat);
            }
            this.q = true;
            b();
            return;
        }
        v.b("skip attaching media session", new Object[0]);
    }

    /* JADX WARN: Removed duplicated region for block: B:44:0x00a3  */
    /* JADX WARN: Removed duplicated region for block: B:47:0x00c9  */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f4  */
    /* JADX WARN: Removed duplicated region for block: B:64:0x0114  */
    /* JADX WARN: Removed duplicated region for block: B:67:0x00fb  */
    /* JADX WARN: Removed duplicated region for block: B:72:0x00a5  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void b() {
        /*
            Method dump skipped, instructions count: 306
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.internal.zzs.b():void");
    }

    public final void c(Bitmap bitmap, int i) {
        MediaMetadataCompat metadata;
        MediaMetadataCompat.Builder builder;
        String str;
        MediaSessionCompat mediaSessionCompat = this.p;
        if (mediaSessionCompat == null) {
            return;
        }
        if (bitmap == null || bitmap.getWidth() <= 1 || bitmap.getHeight() <= 1) {
            bitmap = Bitmap.createBitmap(2, 2, Bitmap.Config.ARGB_8888);
            bitmap.eraseColor(0);
        }
        MediaSessionCompat mediaSessionCompat2 = this.p;
        if (mediaSessionCompat2 == null) {
            metadata = null;
        } else {
            metadata = mediaSessionCompat2.getController().getMetadata();
        }
        if (metadata == null) {
            builder = new MediaMetadataCompat.Builder();
        } else {
            builder = new MediaMetadataCompat.Builder(metadata);
        }
        if (i == 0) {
            str = MediaMetadataCompat.METADATA_KEY_DISPLAY_ICON;
        } else {
            str = MediaMetadataCompat.METADATA_KEY_ALBUM_ART;
        }
        mediaSessionCompat.setMetadata(builder.putBitmap(str, bitmap).build());
    }

    public final void d(int i, MediaInfo mediaInfo) {
        PlaybackStateCompat build;
        MediaSessionCompat mediaSessionCompat;
        MediaMetadata mediaMetadata;
        long j;
        MediaMetadataCompat metadata;
        MediaMetadataCompat.Builder builder;
        Bitmap bitmap;
        PendingIntent activity;
        long j2;
        com.google.android.gms.cast.framework.media.zzg zzgVar;
        long j3;
        ArrayList arrayList;
        MediaSessionCompat mediaSessionCompat2 = this.p;
        if (mediaSessionCompat2 != null) {
            Bundle bundle = new Bundle();
            PlaybackStateCompat.Builder builder2 = new PlaybackStateCompat.Builder();
            RemoteMediaClient remoteMediaClient = this.n;
            NotificationOptions notificationOptions = this.e;
            if (remoteMediaClient != null && this.j != null) {
                if (remoteMediaClient.F() == 0 || remoteMediaClient.l()) {
                    j2 = 0;
                } else {
                    j2 = remoteMediaClient.d();
                }
                builder2.setState(i, j2, 1.0f);
                if (i == 0) {
                    build = builder2.build();
                } else {
                    if (notificationOptions != null) {
                        zzgVar = notificationOptions.J;
                    } else {
                        zzgVar = null;
                    }
                    RemoteMediaClient remoteMediaClient2 = this.n;
                    if (remoteMediaClient2 == null || remoteMediaClient2.l() || this.n.p()) {
                        j3 = 0;
                    } else {
                        j3 = 256;
                    }
                    if (zzgVar != null) {
                        List<NotificationAction> b = zzt.b(zzgVar);
                        if (b != null) {
                            for (NotificationAction notificationAction : b) {
                                String str = notificationAction.f3501c;
                                if (!TextUtils.equals(str, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) && !TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_PREV) && !TextUtils.equals(str, MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                                    f(builder2, str, notificationAction);
                                } else {
                                    j3 |= e(str, i, bundle);
                                }
                            }
                        }
                    } else if (notificationOptions != null) {
                        ArrayList arrayList2 = notificationOptions.f3502c;
                        int size = arrayList2.size();
                        int i2 = 0;
                        while (i2 < size) {
                            Object obj = arrayList2.get(i2);
                            i2++;
                            String str2 = (String) obj;
                            if (TextUtils.equals(str2, MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) || TextUtils.equals(str2, MediaIntentReceiver.ACTION_SKIP_PREV) || TextUtils.equals(str2, MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                                arrayList = arrayList2;
                                j3 |= e(str2, i, bundle);
                            } else {
                                arrayList = arrayList2;
                                f(builder2, str2, null);
                            }
                            arrayList2 = arrayList;
                        }
                    }
                    build = builder2.setActions(j3).build();
                }
            } else {
                build = builder2.build();
            }
            mediaSessionCompat2.setPlaybackState(build);
            if (notificationOptions != null && notificationOptions.K) {
                bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", true);
            }
            if (notificationOptions != null && notificationOptions.L) {
                bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", true);
            }
            if (bundle.containsKey("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS") || bundle.containsKey("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT")) {
                mediaSessionCompat2.setExtras(bundle);
            }
            if (i != 0) {
                if (this.n != null) {
                    ComponentName componentName = this.f;
                    if (componentName == null) {
                        activity = null;
                    } else {
                        Intent intent = new Intent();
                        intent.setComponent(componentName);
                        activity = PendingIntent.getActivity(this.f3526a, 0, intent, 201326592);
                    }
                    if (activity != null) {
                        mediaSessionCompat2.setSessionActivity(activity);
                    }
                }
                RemoteMediaClient remoteMediaClient3 = this.n;
                if (remoteMediaClient3 != null && (mediaSessionCompat = this.p) != null && mediaInfo != null && (mediaMetadata = mediaInfo.h) != null) {
                    if (remoteMediaClient3.l()) {
                        j = 0;
                    } else {
                        j = mediaInfo.i;
                    }
                    String F = mediaMetadata.F("com.google.android.gms.cast.metadata.TITLE");
                    String F2 = mediaMetadata.F("com.google.android.gms.cast.metadata.SUBTITLE");
                    MediaSessionCompat mediaSessionCompat3 = this.p;
                    if (mediaSessionCompat3 == null) {
                        metadata = null;
                    } else {
                        metadata = mediaSessionCompat3.getController().getMetadata();
                    }
                    if (metadata == null) {
                        builder = new MediaMetadataCompat.Builder();
                    } else {
                        builder = new MediaMetadataCompat.Builder(metadata);
                    }
                    MediaMetadataCompat.Builder putLong = builder.putLong(MediaMetadataCompat.METADATA_KEY_DURATION, j);
                    if (F != null) {
                        putLong.putString(MediaMetadataCompat.METADATA_KEY_TITLE, F);
                        putLong.putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_TITLE, F);
                    }
                    if (F2 != null) {
                        putLong.putString(MediaMetadataCompat.METADATA_KEY_DISPLAY_SUBTITLE, F2);
                    }
                    mediaSessionCompat.setMetadata(putLong.build());
                    Uri g = g(mediaMetadata);
                    if (g != null) {
                        this.h.a(g);
                        bitmap = null;
                    } else {
                        bitmap = null;
                        c(null, 0);
                    }
                    Uri g2 = g(mediaMetadata);
                    if (g2 != null) {
                        this.i.a(g2);
                        return;
                    } else {
                        c(bitmap, 3);
                        return;
                    }
                }
                return;
            }
            mediaSessionCompat2.setMetadata(new MediaMetadataCompat.Builder().build());
        }
    }

    public final long e(String str, int i, Bundle bundle) {
        long j;
        int hashCode = str.hashCode();
        if (hashCode != -945151566) {
            if (hashCode != -945080078) {
                if (hashCode == 235550565 && str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK)) {
                    if (i == 3) {
                        j = 514;
                        i = 3;
                    } else {
                        j = 512;
                    }
                    if (i != 2) {
                        return j;
                    }
                    return 516L;
                }
            } else if (str.equals(MediaIntentReceiver.ACTION_SKIP_PREV)) {
                RemoteMediaClient remoteMediaClient = this.n;
                if (remoteMediaClient != null && remoteMediaClient.G()) {
                    return 16L;
                }
                bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_PREVIOUS", true);
                return 0L;
            }
        } else if (str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT)) {
            RemoteMediaClient remoteMediaClient2 = this.n;
            if (remoteMediaClient2 != null && remoteMediaClient2.H()) {
                return 32L;
            }
            bundle.putBoolean("android.media.playback.ALWAYS_RESERVE_SPACE_FOR.ACTION_SKIP_TO_NEXT", true);
        }
        return 0L;
    }

    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    /* JADX WARN: Removed duplicated region for block: B:61:0x00f1  */
    /* JADX WARN: Removed duplicated region for block: B:62:0x00ff  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void f(android.support.v4.media.session.PlaybackStateCompat.Builder r9, java.lang.String r10, com.google.android.gms.cast.framework.media.NotificationAction r11) {
        /*
            Method dump skipped, instructions count: 280
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.media.internal.zzs.f(android.support.v4.media.session.PlaybackStateCompat$Builder, java.lang.String, com.google.android.gms.cast.framework.media.NotificationAction):void");
    }

    public final Uri g(MediaMetadata mediaMetadata) {
        ImagePicker F;
        WebImage webImage;
        CastMediaOptions castMediaOptions = this.b.j;
        if (castMediaOptions == null) {
            F = null;
        } else {
            F = castMediaOptions.F();
        }
        if (F != null) {
            webImage = ImagePicker.a(mediaMetadata);
        } else if (mediaMetadata.G()) {
            webImage = (WebImage) mediaMetadata.f3445c.get(0);
        } else {
            webImage = null;
        }
        if (webImage == null) {
            return null;
        }
        return webImage.getUrl();
    }

    public final void h() {
        zzm zzmVar = this.j;
        if (zzmVar != null) {
            v.b("Stopping media notification.", new Object[0]);
            zzb zzbVar = zzmVar.j;
            zzbVar.b();
            zzbVar.e = null;
            NotificationManager notificationManager = zzmVar.b;
            if (notificationManager != null) {
                notificationManager.cancel("castMediaNotification", 1);
            }
        }
    }

    public final void i(boolean z) {
        if (this.b.k) {
            zzfk zzfkVar = this.k;
            Runnable runnable = this.l;
            if (runnable != null) {
                zzfkVar.removeCallbacks(runnable);
            }
            Context context = this.f3526a;
            Intent intent = new Intent(context, (Class<?>) ReconnectionService.class);
            intent.setPackage(context.getPackageName());
            try {
                context.startService(intent);
            } catch (IllegalStateException unused) {
                if (z) {
                    zzfkVar.postDelayed(runnable, 1000L);
                }
            }
        }
    }

    public final void j() {
        if (!this.b.k) {
            return;
        }
        this.k.removeCallbacks(this.l);
        Context context = this.f3526a;
        Intent intent = new Intent(context, (Class<?>) ReconnectionService.class);
        intent.setPackage(context.getPackageName());
        context.stopService(intent);
    }
}
