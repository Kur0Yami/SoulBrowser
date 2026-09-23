package com.google.android.gms.cast.framework.media.internal;

import android.app.NotificationChannel;
import android.app.NotificationManager;
import android.app.PendingIntent;
import android.content.ComponentName;
import android.content.Context;
import android.content.Intent;
import android.content.res.Resources;
import android.graphics.Bitmap;
import android.os.RemoteException;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.core.app.NotificationCompat;
import androidx.core.app.TaskStackBuilder;
import androidx.media.app.NotificationCompat;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.cast.framework.CastContext;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.framework.R;
import com.google.android.gms.cast.framework.media.CastMediaOptions;
import com.google.android.gms.cast.framework.media.ImageHints;
import com.google.android.gms.cast.framework.media.ImagePicker;
import com.google.android.gms.cast.framework.media.MediaIntentReceiver;
import com.google.android.gms.cast.framework.media.NotificationAction;
import com.google.android.gms.cast.framework.media.NotificationOptions;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.util.PlatformVersion;
import com.google.android.gms.internal.cast.zzpm;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzm {
    public static final Logger w = new Logger("MediaNotificationProxy", null);

    /* renamed from: a, reason: collision with root package name */
    public final Context f3519a;
    public final NotificationManager b;

    /* renamed from: c, reason: collision with root package name */
    public final NotificationOptions f3520c;
    public final ImagePicker d;
    public final ComponentName e;
    public final ComponentName f;
    public ArrayList g = new ArrayList();
    public int[] h;
    public final long i;
    public final zzb j;
    public final ImageHints k;
    public final Resources l;
    public zzk m;
    public zzl n;
    public NotificationCompat.Action o;
    public NotificationCompat.Action p;
    public NotificationCompat.Action q;
    public NotificationCompat.Action r;
    public NotificationCompat.Action s;
    public NotificationCompat.Action t;
    public NotificationCompat.Action u;
    public NotificationCompat.Action v;

    public zzm(Context context) {
        this.f3519a = context;
        NotificationManager notificationManager = (NotificationManager) context.getSystemService("notification");
        this.b = notificationManager;
        Logger logger = CastContext.l;
        Preconditions.checkMainThread("Must be called from the main thread.");
        CastContext castContext = (CastContext) Preconditions.checkNotNull(CastContext.n);
        castContext.getClass();
        Preconditions.checkMainThread("Must be called from the main thread.");
        CastMediaOptions castMediaOptions = (CastMediaOptions) Preconditions.checkNotNull(((CastOptions) Preconditions.checkNotNull(castContext.e)).j);
        NotificationOptions notificationOptions = (NotificationOptions) Preconditions.checkNotNull(castMediaOptions.h);
        this.f3520c = notificationOptions;
        this.d = castMediaOptions.F();
        Resources resources = context.getResources();
        this.l = resources;
        this.e = new ComponentName(context.getApplicationContext(), castMediaOptions.f3494c);
        if (!TextUtils.isEmpty(notificationOptions.h)) {
            this.f = new ComponentName(context.getApplicationContext(), notificationOptions.h);
        } else {
            this.f = null;
        }
        this.i = notificationOptions.g;
        int dimensionPixelSize = resources.getDimensionPixelSize(notificationOptions.v);
        ImageHints imageHints = new ImageHints(1, dimensionPixelSize, dimensionPixelSize);
        this.k = imageHints;
        this.j = new zzb(context.getApplicationContext(), imageHints);
        if (PlatformVersion.isAtLeastO() && notificationManager != null) {
            NotificationChannel notificationChannel = new NotificationChannel("cast_media_notification", ((Context) Preconditions.checkNotNull(context)).getResources().getString(R.string.media_notification_channel_name), 2);
            notificationChannel.setShowBadge(false);
            notificationManager.createNotificationChannel(notificationChannel);
        }
        com.google.android.gms.internal.cast.zzr.a(zzpm.CAF_MEDIA_NOTIFICATION_PROXY);
    }

    public final void a() {
        Bitmap bitmap;
        PendingIntent activities;
        int[] iArr;
        NotificationCompat.Action b;
        NotificationManager notificationManager = this.b;
        if (notificationManager != null && this.m != null) {
            zzl zzlVar = this.n;
            int[] iArr2 = null;
            if (zzlVar == null || (bitmap = zzlVar.b) == null || bitmap.getWidth() <= 1 || bitmap.getHeight() <= 1) {
                bitmap = null;
            }
            Context context = this.f3519a;
            NotificationCompat.Builder builder = new NotificationCompat.Builder(context, "cast_media_notification");
            builder.e(bitmap);
            NotificationOptions notificationOptions = this.f3520c;
            builder.u.icon = notificationOptions.i;
            builder.e = NotificationCompat.Builder.c(this.m.d);
            int i = 0;
            builder.f = NotificationCompat.Builder.c(this.l.getString(notificationOptions.w, this.m.e));
            builder.d(2);
            builder.j = false;
            builder.r = 1;
            ComponentName componentName = this.f;
            if (componentName == null) {
                activities = null;
            } else {
                Intent intent = new Intent();
                intent.putExtra("targetActivity", componentName);
                intent.setAction(componentName.flattenToString());
                intent.setComponent(componentName);
                TaskStackBuilder taskStackBuilder = new TaskStackBuilder(context);
                ComponentName component = intent.getComponent();
                Context context2 = taskStackBuilder.f;
                if (component == null) {
                    component = intent.resolveActivity(context2.getPackageManager());
                }
                if (component != null) {
                    taskStackBuilder.a(component);
                }
                ArrayList arrayList = taskStackBuilder.f646c;
                arrayList.add(intent);
                if (!arrayList.isEmpty()) {
                    Intent[] intentArr = (Intent[]) arrayList.toArray(new Intent[0]);
                    intentArr[0] = new Intent(intentArr[0]).addFlags(268484608);
                    activities = PendingIntent.getActivities(context2, 1, intentArr, 201326592, null);
                } else {
                    throw new IllegalStateException("No intents added to TaskStackBuilder; cannot getPendingIntent");
                }
            }
            if (activities != null) {
                builder.g = activities;
            }
            com.google.android.gms.cast.framework.media.zzg zzgVar = notificationOptions.J;
            Logger logger = w;
            if (zzgVar != null) {
                logger.b("actionsProvider != null", new Object[0]);
                Logger logger2 = zzt.f3528a;
                try {
                    iArr = zzgVar.zzg();
                } catch (RemoteException e) {
                    Logger logger3 = zzt.f3528a;
                    Log.e(logger3.f3604a, logger3.d("Unable to call %s on %s.", "getCompactViewActionIndices", "zzg"), e);
                    iArr = null;
                }
                if (iArr != null) {
                    iArr2 = (int[]) iArr.clone();
                }
                this.h = iArr2;
                List<NotificationAction> b2 = zzt.b(zzgVar);
                this.g = new ArrayList();
                if (b2 != null) {
                    for (NotificationAction notificationAction : b2) {
                        String str = notificationAction.f3501c;
                        if (!str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK) && !str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT) && !str.equals(MediaIntentReceiver.ACTION_SKIP_PREV) && !str.equals(MediaIntentReceiver.ACTION_FORWARD) && !str.equals(MediaIntentReceiver.ACTION_REWIND) && !str.equals(MediaIntentReceiver.ACTION_STOP_CASTING) && !str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                            Intent intent2 = new Intent(str);
                            intent2.setComponent(this.e);
                            b = new NotificationCompat.Action.Builder(notificationAction.f, notificationAction.g, PendingIntent.getBroadcast(context, 0, intent2, 67108864)).a();
                        } else {
                            b = b(str);
                        }
                        if (b != null) {
                            this.g.add(b);
                        }
                    }
                }
            } else {
                logger.b("actionsProvider == null", new Object[0]);
                this.g = new ArrayList();
                ArrayList arrayList2 = notificationOptions.f3502c;
                int size = arrayList2.size();
                int i2 = 0;
                while (i2 < size) {
                    Object obj = arrayList2.get(i2);
                    i2++;
                    NotificationCompat.Action b3 = b((String) obj);
                    if (b3 != null) {
                        this.g.add(b3);
                    }
                }
                int[] iArr3 = notificationOptions.f;
                this.h = (int[]) Arrays.copyOf(iArr3, iArr3.length).clone();
            }
            ArrayList arrayList3 = this.g;
            int size2 = arrayList3.size();
            while (i < size2) {
                Object obj2 = arrayList3.get(i);
                i++;
                builder.a((NotificationCompat.Action) obj2);
            }
            NotificationCompat.MediaStyle mediaStyle = new NotificationCompat.MediaStyle();
            int[] iArr4 = this.h;
            if (iArr4 != null) {
                mediaStyle.b = iArr4;
            }
            MediaSessionCompat.Token token = this.m.f3516a;
            if (token != null) {
                mediaStyle.f1276c = token;
            }
            builder.g(mediaStyle);
            notificationManager.notify("castMediaNotification", 1, builder.b());
        }
    }

    public final NotificationCompat.Action b(String str) {
        int i;
        int i2;
        int hashCode = str.hashCode();
        long j = this.i;
        PendingIntent pendingIntent = null;
        Resources resources = this.l;
        Context context = this.f3519a;
        ComponentName componentName = this.e;
        NotificationOptions notificationOptions = this.f3520c;
        switch (hashCode) {
            case -1699820260:
                if (str.equals(MediaIntentReceiver.ACTION_REWIND)) {
                    if (this.t == null) {
                        Intent intent = new Intent(MediaIntentReceiver.ACTION_REWIND);
                        intent.setComponent(componentName);
                        intent.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j);
                        PendingIntent broadcast = PendingIntent.getBroadcast(context, 0, intent, 201326592);
                        Logger logger = zzt.f3528a;
                        int i3 = notificationOptions.r;
                        if (j == 10000) {
                            i3 = notificationOptions.s;
                        } else if (j == 30000) {
                            i3 = notificationOptions.t;
                        }
                        int i4 = notificationOptions.F;
                        if (j == 10000) {
                            i4 = notificationOptions.G;
                        } else if (j == 30000) {
                            i4 = notificationOptions.H;
                        }
                        this.t = new NotificationCompat.Action.Builder(i3, resources.getString(i4), broadcast).a();
                    }
                    return this.t;
                }
                break;
            case -945151566:
                if (str.equals(MediaIntentReceiver.ACTION_SKIP_NEXT)) {
                    boolean z = this.m.f;
                    if (this.q == null) {
                        if (z) {
                            Intent intent2 = new Intent(MediaIntentReceiver.ACTION_SKIP_NEXT);
                            intent2.setComponent(componentName);
                            pendingIntent = PendingIntent.getBroadcast(context, 0, intent2, 67108864);
                        }
                        this.q = new NotificationCompat.Action.Builder(notificationOptions.m, resources.getString(notificationOptions.A), pendingIntent).a();
                    }
                    return this.q;
                }
                break;
            case -945080078:
                if (str.equals(MediaIntentReceiver.ACTION_SKIP_PREV)) {
                    boolean z2 = this.m.g;
                    if (this.r == null) {
                        if (z2) {
                            Intent intent3 = new Intent(MediaIntentReceiver.ACTION_SKIP_PREV);
                            intent3.setComponent(componentName);
                            pendingIntent = PendingIntent.getBroadcast(context, 0, intent3, 67108864);
                        }
                        this.r = new NotificationCompat.Action.Builder(notificationOptions.n, resources.getString(notificationOptions.B), pendingIntent).a();
                    }
                    return this.r;
                }
                break;
            case -668151673:
                if (str.equals(MediaIntentReceiver.ACTION_STOP_CASTING)) {
                    if (this.v == null) {
                        Intent intent4 = new Intent(MediaIntentReceiver.ACTION_STOP_CASTING);
                        intent4.setComponent(componentName);
                        this.v = new NotificationCompat.Action.Builder(notificationOptions.u, resources.getString(notificationOptions.I), PendingIntent.getBroadcast(context, 0, intent4, 67108864)).a();
                    }
                    return this.v;
                }
                break;
            case -124479363:
                if (str.equals(MediaIntentReceiver.ACTION_DISCONNECT)) {
                    if (this.u == null) {
                        Intent intent5 = new Intent(MediaIntentReceiver.ACTION_DISCONNECT);
                        intent5.setComponent(componentName);
                        this.u = new NotificationCompat.Action.Builder(notificationOptions.u, resources.getString(notificationOptions.I, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED), PendingIntent.getBroadcast(context, 0, intent5, 67108864)).a();
                    }
                    return this.u;
                }
                break;
            case 235550565:
                if (str.equals(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK)) {
                    zzk zzkVar = this.m;
                    int i5 = zzkVar.f3517c;
                    if (zzkVar.b) {
                        if (this.p == null) {
                            if (i5 == 2) {
                                i = notificationOptions.j;
                                i2 = notificationOptions.x;
                            } else {
                                i = notificationOptions.k;
                                i2 = notificationOptions.y;
                            }
                            Intent intent6 = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                            intent6.setComponent(componentName);
                            this.p = new NotificationCompat.Action.Builder(i, resources.getString(i2), PendingIntent.getBroadcast(context, 0, intent6, 67108864)).a();
                        }
                        return this.p;
                    }
                    if (this.o == null) {
                        Intent intent7 = new Intent(MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK);
                        intent7.setComponent(componentName);
                        this.o = new NotificationCompat.Action.Builder(notificationOptions.l, resources.getString(notificationOptions.z), PendingIntent.getBroadcast(context, 0, intent7, 67108864)).a();
                    }
                    return this.o;
                }
                break;
            case 1362116196:
                if (str.equals(MediaIntentReceiver.ACTION_FORWARD)) {
                    if (this.s == null) {
                        Intent intent8 = new Intent(MediaIntentReceiver.ACTION_FORWARD);
                        intent8.setComponent(componentName);
                        intent8.putExtra(MediaIntentReceiver.EXTRA_SKIP_STEP_MS, j);
                        PendingIntent broadcast2 = PendingIntent.getBroadcast(context, 0, intent8, 201326592);
                        Logger logger2 = zzt.f3528a;
                        int i6 = notificationOptions.o;
                        if (j == 10000) {
                            i6 = notificationOptions.p;
                        } else if (j == 30000) {
                            i6 = notificationOptions.q;
                        }
                        int i7 = notificationOptions.C;
                        if (j == 10000) {
                            i7 = notificationOptions.D;
                        } else if (j == 30000) {
                            i7 = notificationOptions.E;
                        }
                        this.s = new NotificationCompat.Action.Builder(i6, resources.getString(i7), broadcast2).a();
                    }
                    return this.s;
                }
                break;
        }
        Logger logger3 = w;
        Log.e(logger3.f3604a, logger3.d("Action: %s is not a pre-defined action.", str));
        return null;
    }
}
