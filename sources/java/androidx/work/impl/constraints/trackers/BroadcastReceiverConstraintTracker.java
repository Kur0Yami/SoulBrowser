package androidx.work.impl.constraints.trackers;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.utils.taskexecutor.TaskExecutor;

@RestrictTo
/* loaded from: classes.dex */
public abstract class BroadcastReceiverConstraintTracker<T> extends ConstraintTracker<T> {
    public static final String h = Logger.e("BrdcstRcvrCnstrntTrckr");
    public final BroadcastReceiver g;

    public BroadcastReceiverConstraintTracker(Context context, TaskExecutor taskExecutor) {
        super(context, taskExecutor);
        this.g = new BroadcastReceiver() { // from class: androidx.work.impl.constraints.trackers.BroadcastReceiverConstraintTracker.1
            @Override // android.content.BroadcastReceiver
            public final void onReceive(Context context2, Intent intent) {
                if (intent != null) {
                    BroadcastReceiverConstraintTracker.this.g(intent);
                }
            }
        };
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void d() {
        Logger.c().a(h, getClass().getSimpleName().concat(": registering receiver"), new Throwable[0]);
        this.b.registerReceiver(this.g, f());
    }

    @Override // androidx.work.impl.constraints.trackers.ConstraintTracker
    public final void e() {
        Logger.c().a(h, getClass().getSimpleName().concat(": unregistering receiver"), new Throwable[0]);
        this.b.unregisterReceiver(this.g);
    }

    public abstract IntentFilter f();

    public abstract void g(Intent intent);
}
