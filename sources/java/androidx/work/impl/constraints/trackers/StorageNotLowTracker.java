package androidx.work.impl.constraints.trackers;

import android.content.Intent;
import android.content.IntentFilter;
import android.support.v4.media.a;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;

@RestrictTo
/* loaded from: classes.dex */
public class StorageNotLowTracker extends BroadcastReceiverConstraintTracker<Boolean> {
    public static final String i = Logger.e("StorageNotLowTracker");

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final Object a() {
        Intent registerReceiver = this.b.registerReceiver(null, f());
        if (registerReceiver != null && registerReceiver.getAction() != null) {
            String action = registerReceiver.getAction();
            action.getClass();
            if (!action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                if (!action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                    return null;
                }
                return Boolean.TRUE;
            }
            return Boolean.FALSE;
        }
        return Boolean.TRUE;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public final IntentFilter f() {
        IntentFilter intentFilter = new IntentFilter();
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_OK");
        intentFilter.addAction("android.intent.action.DEVICE_STORAGE_LOW");
        return intentFilter;
    }

    @Override // androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker
    public final void g(Intent intent) {
        if (intent.getAction() != null) {
            Logger.c().a(i, a.C("Received ", intent.getAction()), new Throwable[0]);
            String action = intent.getAction();
            action.getClass();
            if (!action.equals("android.intent.action.DEVICE_STORAGE_LOW")) {
                if (!action.equals("android.intent.action.DEVICE_STORAGE_OK")) {
                    return;
                }
                c(Boolean.TRUE);
                return;
            }
            c(Boolean.FALSE);
        }
    }
}
