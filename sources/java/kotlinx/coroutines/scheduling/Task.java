package kotlinx.coroutines.scheduling;

import kotlin.Metadata;
import kotlin.PublishedApi;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\b!\u0018\u00002\u00060\u0001j\u0002`\u0002¨\u0006\u0003"}, d2 = {"Lkotlinx/coroutines/scheduling/Task;", "Ljava/lang/Runnable;", "Lkotlinx/coroutines/Runnable;", "kotlinx-coroutines-core"}, k = 1, mv = {1, 9, 0}, xi = 48)
@PublishedApi
/* loaded from: classes4.dex */
public abstract class Task implements Runnable {

    /* renamed from: c, reason: collision with root package name */
    public long f21909c;
    public TaskContext f;

    public Task(long j, TaskContext taskContext) {
        this.f21909c = j;
        this.f = taskContext;
    }
}
