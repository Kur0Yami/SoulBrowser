package com.google.android.gms.drive.events;

import android.os.Looper;
import com.google.android.gms.drive.events.DriveEventService;
import java.util.concurrent.CountDownLatch;

/* loaded from: classes.dex */
final class zzh extends Thread {

    /* renamed from: c, reason: collision with root package name */
    public final /* synthetic */ CountDownLatch f3693c;
    public final /* synthetic */ DriveEventService f;

    public zzh(DriveEventService driveEventService, CountDownLatch countDownLatch) {
        this.f = driveEventService;
        this.f3693c = countDownLatch;
    }

    @Override // java.lang.Thread, java.lang.Runnable
    public final void run() {
        DriveEventService driveEventService = this.f;
        try {
            Looper.prepare();
            driveEventService.f = new DriveEventService.zza(driveEventService);
            driveEventService.g = false;
            this.f3693c.countDown();
            Looper.loop();
        } finally {
            CountDownLatch countDownLatch = driveEventService.f3688c;
            if (countDownLatch != null) {
                countDownLatch.countDown();
            }
        }
    }
}
