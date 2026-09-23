package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.Operation;
import androidx.work.impl.OperationImpl;
import androidx.work.impl.Schedulers;
import androidx.work.impl.WorkContinuationImpl;
import androidx.work.impl.WorkDatabase;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.background.systemalarm.RescheduleReceiver;
import java.util.HashSet;
import java.util.Iterator;

@RestrictTo
/* loaded from: classes.dex */
public class EnqueueRunnable implements Runnable {
    public static final String g = Logger.e("EnqueueRunnable");

    /* renamed from: c, reason: collision with root package name */
    public final WorkContinuationImpl f1946c;
    public final OperationImpl f = new OperationImpl();

    public EnqueueRunnable(WorkContinuationImpl workContinuationImpl) {
        this.f1946c = workContinuationImpl;
    }

    /* JADX WARN: Removed duplicated region for block: B:56:0x00e4  */
    /* JADX WARN: Removed duplicated region for block: B:65:0x011e  */
    /* JADX WARN: Removed duplicated region for block: B:74:0x015e  */
    /* JADX WARN: Removed duplicated region for block: B:77:0x016b  */
    /* JADX WARN: Removed duplicated region for block: B:84:0x0196 A[LOOP:5: B:82:0x0190->B:84:0x0196, LOOP_END] */
    /* JADX WARN: Removed duplicated region for block: B:87:0x01af  */
    /* JADX WARN: Removed duplicated region for block: B:90:0x01bf A[SYNTHETIC] */
    /* JADX WARN: Removed duplicated region for block: B:91:0x0160  */
    /* JADX WARN: Removed duplicated region for block: B:92:0x0158  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public static boolean a(androidx.work.impl.WorkContinuationImpl r23) {
        /*
            Method dump skipped, instructions count: 464
            To view this dump add '--comments-level debug' option
        */
        throw new UnsupportedOperationException("Method not decompiled: androidx.work.impl.utils.EnqueueRunnable.a(androidx.work.impl.WorkContinuationImpl):boolean");
    }

    @Override // java.lang.Runnable
    public final void run() {
        boolean z;
        OperationImpl operationImpl = this.f;
        WorkContinuationImpl workContinuationImpl = this.f1946c;
        WorkManagerImpl workManagerImpl = workContinuationImpl.f1866a;
        try {
            HashSet hashSet = new HashSet();
            hashSet.addAll(workContinuationImpl.f1867c);
            HashSet a2 = WorkContinuationImpl.a(workContinuationImpl);
            Iterator it = hashSet.iterator();
            while (true) {
                if (it.hasNext()) {
                    if (a2.contains((String) it.next())) {
                        z = true;
                        break;
                    }
                } else {
                    hashSet.removeAll(workContinuationImpl.f1867c);
                    z = false;
                    break;
                }
            }
            if (!z) {
                WorkDatabase workDatabase = workManagerImpl.f1876c;
                workDatabase.c();
                try {
                    boolean a3 = a(workContinuationImpl);
                    workDatabase.h();
                    if (a3) {
                        PackageManagerHelper.a(workManagerImpl.f1875a, RescheduleReceiver.class, true);
                        Schedulers.a(workManagerImpl.b, workManagerImpl.f1876c, workManagerImpl.e);
                    }
                    operationImpl.a(Operation.f1846a);
                    return;
                } finally {
                    workDatabase.f();
                }
            }
            throw new IllegalStateException(String.format("WorkContinuation has cycles (%s)", workContinuationImpl));
        } catch (Throwable th) {
            operationImpl.a(new Operation.State.FAILURE(th));
        }
    }
}
