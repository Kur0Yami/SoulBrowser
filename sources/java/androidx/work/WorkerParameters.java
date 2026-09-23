package androidx.work;

import android.net.Network;
import androidx.annotation.RestrictTo;
import androidx.work.impl.utils.WorkForegroundUpdater;
import androidx.work.impl.utils.WorkProgressUpdater;
import androidx.work.impl.utils.taskexecutor.WorkManagerTaskExecutor;
import java.util.Collections;
import java.util.HashSet;
import java.util.List;
import java.util.UUID;
import java.util.concurrent.ExecutorService;

/* loaded from: classes.dex */
public final class WorkerParameters {

    /* renamed from: a, reason: collision with root package name */
    public UUID f1857a;
    public Data b;

    /* renamed from: c, reason: collision with root package name */
    public HashSet f1858c;
    public RuntimeExtras d;
    public int e;
    public ExecutorService f;
    public WorkManagerTaskExecutor g;
    public WorkerFactory h;
    public WorkProgressUpdater i;
    public WorkForegroundUpdater j;

    @RestrictTo
    /* loaded from: classes.dex */
    public static class RuntimeExtras {

        /* renamed from: a, reason: collision with root package name */
        public List f1859a;
        public List b;

        /* renamed from: c, reason: collision with root package name */
        public Network f1860c;

        public RuntimeExtras() {
            List list = Collections.EMPTY_LIST;
            this.f1859a = list;
            this.b = list;
        }
    }
}
