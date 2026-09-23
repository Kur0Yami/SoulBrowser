package androidx.lifecycle;

import androidx.arch.core.executor.ArchTaskExecutor;

/* loaded from: classes.dex */
public class MutableLiveData<T> extends LiveData<T> {
    public final void j(Object obj) {
        boolean z;
        synchronized (this.f1205a) {
            if (this.f == LiveData.k) {
                z = true;
            } else {
                z = false;
            }
            this.f = obj;
        }
        if (!z) {
            return;
        }
        ArchTaskExecutor.a().b(this.j);
    }
}
