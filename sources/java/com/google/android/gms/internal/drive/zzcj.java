package com.google.android.gms.internal.drive;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

/* loaded from: classes.dex */
final /* synthetic */ class zzcj implements Continuation {
    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        int i = zzch.f10151a;
        if (task.p()) {
            return null;
        }
        throw task.l();
    }
}
