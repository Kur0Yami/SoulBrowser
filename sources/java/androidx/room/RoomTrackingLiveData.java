package androidx.room;

import androidx.arch.core.executor.ArchTaskExecutor;
import androidx.lifecycle.LiveData;
import androidx.room.InvalidationTracker;
import java.util.Set;

/* loaded from: classes.dex */
class RoomTrackingLiveData<T> extends LiveData<T> {

    /* renamed from: androidx.room.RoomTrackingLiveData$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.room.RoomTrackingLiveData$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.room.RoomTrackingLiveData$3, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass3 extends InvalidationTracker.Observer {
        @Override // androidx.room.InvalidationTracker.Observer
        public final void a(Set set) {
            ArchTaskExecutor.a();
            throw null;
        }
    }

    @Override // androidx.lifecycle.LiveData
    public final void f() {
        throw null;
    }

    @Override // androidx.lifecycle.LiveData
    public final void g() {
        throw null;
    }
}
