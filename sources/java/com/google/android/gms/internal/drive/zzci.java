package com.google.android.gms.internal.drive;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

/* loaded from: classes.dex */
final /* synthetic */ class zzci implements Continuation {
    @Override // com.google.android.gms.tasks.Continuation
    public final Object then(Task task) {
        int i = zzch.f10151a;
        if (task.p()) {
            throw null;
        }
        throw task.l();
    }
}
