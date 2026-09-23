package androidx.work.impl.utils;

import androidx.annotation.RestrictTo;
import androidx.work.WorkerParameters;
import androidx.work.impl.WorkManagerImpl;

@RestrictTo
/* loaded from: classes.dex */
public class StartWorkRunnable implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public WorkManagerImpl f1955c;
    public String f;
    public WorkerParameters.RuntimeExtras g;

    @Override // java.lang.Runnable
    public final void run() {
        this.f1955c.f.h(this.f, this.g);
    }
}
