package com.google.android.gms.drive.events;

import android.app.Service;
import android.content.Intent;
import android.os.Binder;
import android.os.IBinder;
import android.os.Message;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.GmsLogger;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.common.util.VisibleForTesting;
import com.google.android.gms.internal.drive.zzet;
import com.google.android.gms.internal.drive.zzfp;
import com.google.android.gms.internal.drive.zzir;
import java.lang.ref.WeakReference;
import java.util.concurrent.CountDownLatch;
import java.util.concurrent.TimeUnit;

/* loaded from: classes.dex */
public class DriveEventService extends Service implements ChangeListener, CompletionListener, zzd, zzi {
    public static final GmsLogger i = new GmsLogger("DriveEventService", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);

    /* renamed from: c, reason: collision with root package name */
    public CountDownLatch f3688c;
    public zza f;
    public boolean g;
    public int h;

    /* loaded from: classes.dex */
    public static final class zza extends zzir {
        public static final /* synthetic */ int b = 0;

        /* renamed from: a, reason: collision with root package name */
        public final WeakReference f3689a;

        public zza(DriveEventService driveEventService) {
            this.f3689a = new WeakReference(driveEventService);
        }

        @Override // android.os.Handler
        public final void handleMessage(Message message) {
            int i = message.what;
            if (i != 1) {
                if (i != 2) {
                    DriveEventService.i.wfmt("DriveEventService", "Unexpected message type: %s", Integer.valueOf(i));
                    return;
                } else {
                    getLooper().quit();
                    return;
                }
            }
            DriveEventService driveEventService = (DriveEventService) this.f3689a.get();
            if (driveEventService != null) {
                zzfp zzfpVar = (zzfp) message.obj;
                GmsLogger gmsLogger = DriveEventService.i;
                DriveEvent F = zzfpVar.F();
                try {
                    int type = F.getType();
                    if (type != 1) {
                        if (type != 2) {
                            if (type != 4) {
                                if (type != 7) {
                                    gmsLogger.wfmt("DriveEventService", "Unhandled event: %s", F);
                                    return;
                                } else {
                                    gmsLogger.wfmt("DriveEventService", "Unhandled transfer state event in %s: %s", null, (zzv) F);
                                    return;
                                }
                            }
                            driveEventService.a((com.google.android.gms.drive.events.zzb) F);
                            return;
                        }
                        driveEventService.b((CompletionEvent) F);
                        return;
                    }
                    driveEventService.d((ChangeEvent) F);
                    return;
                } catch (Exception e) {
                    gmsLogger.e("DriveEventService", "Error handling event in null", e);
                    return;
                }
            }
            getLooper().quit();
        }
    }

    @VisibleForTesting
    /* loaded from: classes.dex */
    public final class zzb extends zzet {
        public zzb() {
            super("com.google.android.gms.drive.internal.IEventCallback");
        }

        @Override // com.google.android.gms.internal.drive.zzes
        public final void u1(zzfp zzfpVar) {
            synchronized (DriveEventService.this) {
                try {
                    DriveEventService driveEventService = DriveEventService.this;
                    GmsLogger gmsLogger = DriveEventService.i;
                    driveEventService.getClass();
                    int callingUid = Binder.getCallingUid();
                    if (callingUid != driveEventService.h) {
                        if (UidVerifier.isGooglePlayServicesUid(driveEventService, callingUid)) {
                            driveEventService.h = callingUid;
                        } else {
                            throw new SecurityException("Caller is not GooglePlayServices");
                        }
                    }
                    zza zzaVar = DriveEventService.this.f;
                    if (zzaVar != null) {
                        int i = zza.b;
                        DriveEventService.this.f.sendMessage(zzaVar.obtainMessage(1, zzfpVar));
                    } else {
                        DriveEventService.i.e("DriveEventService", "Receiving event before initialize is completed.");
                    }
                } catch (Throwable th) {
                    throw th;
                }
            }
        }
    }

    @Override // com.google.android.gms.drive.events.zzd
    public final void a(com.google.android.gms.drive.events.zzb zzbVar) {
        i.wfmt("DriveEventService", "Unhandled changes available event in %s: %s", null, zzbVar);
    }

    @Override // com.google.android.gms.drive.events.CompletionListener
    public final void b(CompletionEvent completionEvent) {
        i.wfmt("DriveEventService", "Unhandled completion event in %s: %s", null, completionEvent);
    }

    @Override // com.google.android.gms.drive.events.ChangeListener
    public final void d(ChangeEvent changeEvent) {
        i.wfmt("DriveEventService", "Unhandled change event in %s: %s", null, changeEvent);
    }

    @Override // android.app.Service
    public final synchronized IBinder onBind(Intent intent) {
        if ("com.google.android.gms.drive.events.HANDLE_EVENT".equals(intent.getAction())) {
            if (this.f == null && !this.g) {
                this.g = true;
                CountDownLatch countDownLatch = new CountDownLatch(1);
                this.f3688c = new CountDownLatch(1);
                new zzh(this, countDownLatch).start();
                try {
                    if (!countDownLatch.await(5000L, TimeUnit.MILLISECONDS)) {
                        i.e("DriveEventService", "Failed to synchronously initialize event handler.");
                    }
                } catch (InterruptedException e) {
                    throw new RuntimeException("Unable to start event handler", e);
                }
            }
            return new zzb();
        }
        return null;
    }

    @Override // android.app.Service
    public final synchronized void onDestroy() {
        zza zzaVar = this.f;
        if (zzaVar != null) {
            int i2 = zza.b;
            this.f.sendMessage(zzaVar.obtainMessage(2));
            this.f = null;
            try {
                if (!this.f3688c.await(5000L, TimeUnit.MILLISECONDS)) {
                    i.w("DriveEventService", "Failed to synchronously quit event handler. Will quit itself");
                }
            } catch (InterruptedException unused) {
            }
            this.f3688c = null;
        }
        super.onDestroy();
    }

    @Override // android.app.Service
    public final boolean onUnbind(Intent intent) {
        return true;
    }
}
