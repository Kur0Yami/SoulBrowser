package com.google.android.gms.internal.ads;

import com.google.android.gms.tasks.Continuation;
import com.google.android.gms.tasks.Task;

/* loaded from: classes.dex */
final /* synthetic */ class zzfue implements Continuation {

    /* renamed from: a, reason: collision with root package name */
    public static final /* synthetic */ zzfue f7659a = new Object();

    @Override // com.google.android.gms.tasks.Continuation
    public final /* synthetic */ Object then(Task task) {
        return new Boolean(task.p());
    }
}
