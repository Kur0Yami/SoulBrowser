package androidx.work.impl;

import androidx.annotation.RestrictTo;
import androidx.lifecycle.LiveData;
import androidx.lifecycle.MutableLiveData;
import androidx.work.Operation;
import androidx.work.impl.utils.futures.SettableFuture;

@RestrictTo
/* loaded from: classes.dex */
public class OperationImpl implements Operation {

    /* renamed from: c, reason: collision with root package name */
    public final MutableLiveData f1862c = new LiveData();
    public final SettableFuture d = new Object();

    /* JADX WARN: Type inference failed for: r0v0, types: [androidx.lifecycle.MutableLiveData, androidx.lifecycle.LiveData] */
    /* JADX WARN: Type inference failed for: r0v1, types: [java.lang.Object, androidx.work.impl.utils.futures.SettableFuture] */
    public OperationImpl() {
        a(Operation.b);
    }

    public final void a(Operation.State state) {
        this.f1862c.j(state);
        boolean z = state instanceof Operation.State.SUCCESS;
        SettableFuture settableFuture = this.d;
        if (z) {
            settableFuture.h((Operation.State.SUCCESS) state);
        } else if (state instanceof Operation.State.FAILURE) {
            settableFuture.i(((Operation.State.FAILURE) state).f1847a);
        }
    }
}
