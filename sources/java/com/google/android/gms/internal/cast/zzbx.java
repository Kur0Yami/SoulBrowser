package com.google.android.gms.internal.cast;

import android.content.Context;
import android.content.Intent;
import android.os.Build;
import android.os.Bundle;
import android.util.Log;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import androidx.mediarouter.media.MediaRouterParams;
import androidx.mediarouter.media.MediaTransferReceiver;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;
import java.util.HashMap;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public final class zzbx extends zzbd {
    public static final Logger l = new Logger("MediaRouterProxy", null);

    /* renamed from: c, reason: collision with root package name */
    public final MediaRouter f9642c;
    public final CastOptions f;
    public final HashMap g;
    public final zzce h;
    public final boolean i;
    public boolean j;
    public boolean k;

    public zzbx(Context context, MediaRouter mediaRouter, CastOptions castOptions, com.google.android.gms.cast.internal.zzn zznVar) {
        super("com.google.android.gms.cast.framework.internal.IMediaRouter");
        this.g = new HashMap();
        this.f9642c = mediaRouter;
        this.f = castOptions;
        if (Build.VERSION.SDK_INT < 33) {
            return;
        }
        l.b("Set up MediaRouterParams based on module flag and CastOptions for Android T or above", new Object[0]);
        this.h = new zzce(castOptions);
        new Intent(context, (Class<?>) MediaTransferReceiver.class).setPackage(context.getPackageName());
        this.i = !context.getPackageManager().queryBroadcastReceivers(r5, 0).isEmpty();
        this.j = true;
        zznVar.g(new String[]{"com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED"}).c(new OnCompleteListener() { // from class: com.google.android.gms.internal.cast.zzbw
            /* JADX WARN: Type inference failed for: r8v0, types: [androidx.mediarouter.media.MediaRouterParams$Builder, java.lang.Object] */
            @Override // com.google.android.gms.tasks.OnCompleteListener
            public final void onComplete(Task task) {
                CastOptions castOptions2;
                boolean z;
                boolean z2;
                boolean z3;
                String str;
                Logger logger = zzbx.l;
                zzbx zzbxVar = zzbx.this;
                boolean z4 = zzbxVar.i;
                boolean z5 = true;
                if (task.p()) {
                    Bundle bundle = (Bundle) task.m();
                    if (bundle != null && bundle.containsKey("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED")) {
                        z3 = true;
                    } else {
                        z3 = false;
                    }
                    if (true != z3) {
                        str = "not existed";
                    } else {
                        str = "existed";
                    }
                    logger.b("The module-to-client output switcher flag %s", str);
                    if (z3) {
                        zzbxVar.j = bundle.getBoolean("com.google.android.gms.cast.FLAG_OUTPUT_SWITCHER_ENABLED");
                    }
                }
                boolean z6 = zzbxVar.j;
                if (zzbxVar.f9642c != null && (castOptions2 = zzbxVar.f) != null) {
                    boolean z7 = castOptions2.o;
                    boolean z8 = castOptions2.n;
                    if (z6 && castOptions2.q) {
                        z = true;
                    } else {
                        z = false;
                    }
                    ?? obj = new Object();
                    int i = Build.VERSION.SDK_INT;
                    if (i >= 30) {
                        z2 = true;
                    } else {
                        z2 = false;
                    }
                    obj.f1392a = z2;
                    if (i >= 30) {
                        obj.f1392a = z;
                    }
                    if (i >= 30) {
                        obj.f1393c = z7;
                    }
                    if (i >= 30) {
                        obj.b = z8;
                    }
                    boolean z9 = castOptions2.v;
                    if (i >= 30) {
                        obj.d = z9;
                    }
                    MediaRouter.t(new MediaRouterParams(obj));
                    Log.i(logger.f3604a, logger.d("media transfer = %b, session transfer = %b, transfer to local = %b, in-app output switcher = %b", Boolean.valueOf(z4), Boolean.valueOf(z), Boolean.valueOf(z7), Boolean.valueOf(z8)));
                    zzce zzceVar = zzbxVar.h;
                    if (zzceVar != null) {
                        if (!z4 || !z) {
                            z5 = false;
                        }
                        zzceVar.f = z5;
                    }
                    if (z4 && z) {
                        zzr.a(zzpm.CAST_OUTPUT_SWITCHER_ENABLED);
                    }
                    if (z7) {
                        zzr.a(zzpm.CAST_TRANSFER_TO_LOCAL_ENABLED);
                    }
                }
            }
        });
    }

    public final void f2(MediaRouteSelector mediaRouteSelector, int i) {
        Set set = (Set) this.g.get(mediaRouteSelector);
        if (set != null) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                this.f9642c.a(mediaRouteSelector, (MediaRouter.Callback) it.next(), i);
            }
        }
    }

    public final void r2(MediaRouteSelector mediaRouteSelector) {
        Set set = (Set) this.g.get(mediaRouteSelector);
        if (set != null) {
            Iterator it = set.iterator();
            while (it.hasNext()) {
                this.f9642c.p((MediaRouter.Callback) it.next());
            }
        }
    }

    public final boolean zzo() {
        CastOptions castOptions;
        if (this.i && this.j && (castOptions = this.f) != null && castOptions.q) {
            return true;
        }
        return false;
    }
}
