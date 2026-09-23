package androidx.work.impl.background.systemalarm;

import android.content.Context;
import androidx.annotation.RestrictTo;
import androidx.work.Logger;
import androidx.work.impl.constraints.WorkConstraintsTracker;

/* JADX INFO: Access modifiers changed from: package-private */
@RestrictTo
/* loaded from: classes.dex */
public class ConstraintsCommandHandler {

    /* renamed from: c, reason: collision with root package name */
    public static final String f1891c = Logger.e("ConstraintsCmdHandler");

    /* renamed from: a, reason: collision with root package name */
    public final int f1892a;
    public final WorkConstraintsTracker b;

    public ConstraintsCommandHandler(Context context, int i, SystemAlarmDispatcher systemAlarmDispatcher) {
        this.f1892a = i;
        this.b = new WorkConstraintsTracker(context, systemAlarmDispatcher.f, null);
    }
}
