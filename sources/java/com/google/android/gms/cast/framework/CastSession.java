package com.google.android.gms.cast.framework;

import android.content.Context;
import android.media.AudioManager;
import android.os.Bundle;
import android.os.RemoteException;
import android.support.v4.media.MediaMetadataCompat;
import android.support.v4.media.session.MediaSessionCompat;
import android.text.TextUtils;
import android.util.Log;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.ApplicationMetadata;
import com.google.android.gms.cast.Cast;
import com.google.android.gms.cast.CastDevice;
import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.cast.zzbm;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.internal.cast.zzbx;
import com.google.android.gms.tasks.Task;
import java.util.HashSet;
import java.util.Iterator;

/* loaded from: classes.dex */
public class CastSession extends Session {
    public static final Logger n = new Logger("CastSession", null);

    /* renamed from: c, reason: collision with root package name */
    public final Context f3471c;
    public final HashSet d;
    public final zzak e;
    public final CastOptions f;
    public final zzbx g;
    public final com.google.android.gms.cast.framework.media.internal.zzs h;
    public zzbm i;
    public RemoteMediaClient j;
    public CastDevice k;
    public Cast.ApplicationConnectionResult l;
    public zzr m;

    /* JADX WARN: Removed duplicated region for block: B:9:0x0040 A[EXC_TOP_SPLITTER, SYNTHETIC] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public CastSession(android.content.Context r5, java.lang.String r6, java.lang.String r7, com.google.android.gms.cast.framework.CastOptions r8, com.google.android.gms.internal.cast.zzbx r9, com.google.android.gms.cast.framework.media.internal.zzs r10) {
        /*
            r4 = this;
            r4.<init>(r5, r6, r7)
            java.util.HashSet r6 = new java.util.HashSet
            r6.<init>()
            r4.d = r6
            android.content.Context r6 = r5.getApplicationContext()
            r4.f3471c = r6
            r4.f = r8
            r4.g = r9
            r4.h = r10
            com.google.android.gms.cast.framework.zzau r6 = r4.f3475a
            r7 = 1
            r9 = 0
            r10 = 2
            java.lang.String r0 = "Unable to call %s on %s."
            r1 = 0
            if (r6 == 0) goto L35
            com.google.android.gms.dynamic.IObjectWrapper r6 = r6.zzf()     // Catch: android.os.RemoteException -> L25
            goto L36
        L25:
            r6 = move-exception
            java.lang.Object[] r2 = new java.lang.Object[r10]
            java.lang.String r3 = "getWrappedObject"
            r2[r9] = r3
            java.lang.String r3 = "zzau"
            r2[r7] = r3
            com.google.android.gms.cast.internal.Logger r3 = com.google.android.gms.cast.framework.Session.b
            r3.a(r6, r0, r2)
        L35:
            r6 = r1
        L36:
            com.google.android.gms.cast.framework.zzu r2 = new com.google.android.gms.cast.framework.zzu
            r2.<init>(r4)
            com.google.android.gms.cast.internal.Logger r3 = com.google.android.gms.internal.cast.zzay.f9625a
            if (r6 != 0) goto L40
            goto L5b
        L40:
            com.google.android.gms.internal.cast.zzbc r5 = com.google.android.gms.internal.cast.zzay.a(r5)     // Catch: com.google.android.gms.cast.framework.ModuleUnavailableException -> L49 android.os.RemoteException -> L4b
            com.google.android.gms.cast.framework.zzak r1 = r5.H(r8, r6, r2)     // Catch: com.google.android.gms.cast.framework.ModuleUnavailableException -> L49 android.os.RemoteException -> L4b
            goto L5b
        L49:
            r5 = move-exception
            goto L4c
        L4b:
            r5 = move-exception
        L4c:
            com.google.android.gms.cast.internal.Logger r6 = com.google.android.gms.internal.cast.zzay.f9625a
            java.lang.Object[] r8 = new java.lang.Object[r10]
            java.lang.String r10 = "newCastSessionImpl"
            r8[r9] = r10
            java.lang.String r9 = "zzbc"
            r8[r7] = r9
            r6.a(r5, r0, r8)
        L5b:
            r4.e = r1
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.CastSession.<init>(android.content.Context, java.lang.String, java.lang.String, com.google.android.gms.cast.framework.CastOptions, com.google.android.gms.internal.cast.zzbx, com.google.android.gms.cast.framework.media.internal.zzs):void");
    }

    @Override // com.google.android.gms.cast.framework.Session
    public final void a(boolean z) {
        zzak zzakVar = this.e;
        if (zzakVar != null) {
            try {
                zzakVar.a1(z);
            } catch (RemoteException e) {
                n.a(e, "Unable to call %s on %s.", "disconnectFromDevice", "zzak");
            }
            zzau zzauVar = this.f3475a;
            if (zzauVar != null) {
                try {
                    zzauVar.l(0);
                } catch (RemoteException e2) {
                    Session.b.a(e2, "Unable to call %s on %s.", "notifySessionEnded", "zzau");
                }
            }
        }
    }

    @Override // com.google.android.gms.cast.framework.Session
    public final long b() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        RemoteMediaClient remoteMediaClient = this.j;
        if (remoteMediaClient == null) {
            return 0L;
        }
        return remoteMediaClient.i() - this.j.d();
    }

    @Override // com.google.android.gms.cast.framework.Session
    public final void d(Bundle bundle) {
        this.k = CastDevice.F(bundle);
    }

    @Override // com.google.android.gms.cast.framework.Session
    public final void e(Bundle bundle) {
        this.k = CastDevice.F(bundle);
    }

    @Override // com.google.android.gms.cast.framework.Session
    public final void f(Bundle bundle) {
        m(bundle);
    }

    @Override // com.google.android.gms.cast.framework.Session
    public final void g(Bundle bundle) {
        m(bundle);
    }

    @Override // com.google.android.gms.cast.framework.Session
    public final void h(Bundle bundle) {
        boolean z;
        String str;
        CastDevice castDevice;
        CastDevice castDevice2;
        CastDevice F = CastDevice.F(bundle);
        if (F != null) {
            String str2 = F.h;
            if (!F.equals(this.k)) {
                if (!TextUtils.isEmpty(str2) && ((castDevice2 = this.k) == null || !TextUtils.equals(castDevice2.h, str2))) {
                    z = true;
                } else {
                    z = false;
                }
                this.k = F;
                if (true != z) {
                    str = "unchanged";
                } else {
                    str = "changed";
                }
                n.b("update to device (%s) with name %s", F, str);
                if (z && (castDevice = this.k) != null) {
                    com.google.android.gms.cast.framework.media.internal.zzs zzsVar = this.h;
                    if (zzsVar != null) {
                        Logger logger = com.google.android.gms.cast.framework.media.internal.zzs.v;
                        Log.i(logger.f3604a, logger.d("update Cast device to %s", castDevice));
                        zzsVar.o = castDevice;
                        zzsVar.b();
                    }
                    Iterator it = new HashSet(this.d).iterator();
                    while (it.hasNext()) {
                        ((Cast.Listener) it.next()).e();
                    }
                    zzr zzrVar = this.m;
                    if (zzrVar != null) {
                        zzrVar.zzd();
                    }
                }
            }
        }
    }

    public final RemoteMediaClient j() {
        Preconditions.checkMainThread("Must be called from the main thread.");
        return this.j;
    }

    public final void k(Task task, String str) {
        Logger logger = n;
        zzak zzakVar = this.e;
        if (zzakVar == null) {
            return;
        }
        try {
            if (task.p()) {
                Cast.ApplicationConnectionResult applicationConnectionResult = (Cast.ApplicationConnectionResult) task.m();
                this.l = applicationConnectionResult;
                if (applicationConnectionResult.getStatus() != null && applicationConnectionResult.getStatus().isSuccess()) {
                    logger.b("%s() -> success result", str);
                    RemoteMediaClient remoteMediaClient = new RemoteMediaClient(new com.google.android.gms.cast.internal.zzar());
                    this.j = remoteMediaClient;
                    remoteMediaClient.B(this.i);
                    this.j.u(new zzq(this));
                    this.j.C();
                    com.google.android.gms.cast.framework.media.internal.zzs zzsVar = this.h;
                    RemoteMediaClient remoteMediaClient2 = this.j;
                    Preconditions.checkMainThread("Must be called from the main thread.");
                    zzsVar.a(remoteMediaClient2, this.k);
                    zzakVar.s0((ApplicationMetadata) Preconditions.checkNotNull(applicationConnectionResult.m()), applicationConnectionResult.k(), (String) Preconditions.checkNotNull(applicationConnectionResult.B()), applicationConnectionResult.a());
                    return;
                }
                if (applicationConnectionResult.getStatus() != null) {
                    logger.b("%s() -> failure result", str);
                    zzakVar.d(applicationConnectionResult.getStatus().getStatusCode());
                    return;
                }
            } else {
                Exception l = task.l();
                if (l instanceof ApiException) {
                    zzakVar.d(((ApiException) l).getStatusCode());
                    return;
                }
            }
            zzakVar.d(2476);
        } catch (RemoteException e) {
            logger.a(e, "Unable to call %s on %s.", "methods", "zzak");
        }
    }

    public final void l(int i) {
        com.google.android.gms.cast.framework.media.internal.zzs zzsVar = this.h;
        if (zzsVar.q) {
            zzsVar.q = false;
            RemoteMediaClient remoteMediaClient = zzsVar.n;
            if (remoteMediaClient != null) {
                RemoteMediaClient.Callback callback = zzsVar.m;
                Preconditions.checkMainThread("Must be called from the main thread.");
                if (callback != null) {
                    remoteMediaClient.h.remove(callback);
                }
            }
            AudioManager audioManager = (AudioManager) zzsVar.f3526a.getSystemService("audio");
            if (audioManager != null) {
                audioManager.abandonAudioFocus(null);
            }
            zzsVar.f3527c.f9642c.getClass();
            MediaRouter.r(null);
            com.google.android.gms.cast.framework.media.internal.zzb zzbVar = zzsVar.h;
            if (zzbVar != null) {
                zzbVar.b();
                zzbVar.e = null;
            }
            com.google.android.gms.cast.framework.media.internal.zzb zzbVar2 = zzsVar.i;
            if (zzbVar2 != null) {
                zzbVar2.b();
                zzbVar2.e = null;
            }
            MediaSessionCompat mediaSessionCompat = zzsVar.p;
            if (mediaSessionCompat != null) {
                mediaSessionCompat.setCallback(null);
                zzsVar.p.setMetadata(new MediaMetadataCompat.Builder().build());
                zzsVar.d(0, null);
            }
            MediaSessionCompat mediaSessionCompat2 = zzsVar.p;
            if (mediaSessionCompat2 != null) {
                mediaSessionCompat2.setActive(false);
                zzsVar.p.release();
                zzsVar.p = null;
            }
            zzsVar.n = null;
            zzsVar.o = null;
            zzsVar.h();
            if (i == 0) {
                zzsVar.j();
            }
        }
        zzbm zzbmVar = this.i;
        if (zzbmVar != null) {
            zzbmVar.n();
            this.i = null;
        }
        this.k = null;
        RemoteMediaClient remoteMediaClient2 = this.j;
        if (remoteMediaClient2 != null) {
            remoteMediaClient2.B(null);
            this.j = null;
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:17:0x0042  */
    /* JADX WARN: Removed duplicated region for block: B:7:0x002e  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final void m(android.os.Bundle r10) {
        /*
            Method dump skipped, instructions count: 221
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.framework.CastSession.m(android.os.Bundle):void");
    }
}
