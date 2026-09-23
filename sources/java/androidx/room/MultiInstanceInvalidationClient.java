package androidx.room;

import android.content.ComponentName;
import android.content.ServiceConnection;
import android.os.IBinder;
import android.os.IInterface;
import androidx.room.IMultiInstanceInvalidationCallback;
import androidx.room.IMultiInstanceInvalidationService;
import androidx.room.InvalidationTracker;
import java.util.Set;

/* loaded from: classes.dex */
class MultiInstanceInvalidationClient {

    /* renamed from: a, reason: collision with root package name */
    public IMultiInstanceInvalidationService f1620a;

    /* renamed from: androidx.room.MultiInstanceInvalidationClient$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 extends IMultiInstanceInvalidationCallback.Stub {

        /* renamed from: androidx.room.MultiInstanceInvalidationClient$1$1, reason: invalid class name and collision with other inner class name */
        /* loaded from: classes.dex */
        class RunnableC00051 implements Runnable {
            @Override // java.lang.Runnable
            public final void run() {
                throw null;
            }
        }

        @Override // androidx.room.IMultiInstanceInvalidationCallback
        public final void A0(String[] strArr) {
            throw null;
        }
    }

    /* renamed from: androidx.room.MultiInstanceInvalidationClient$2, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass2 implements ServiceConnection {
        @Override // android.content.ServiceConnection
        public final void onServiceConnected(ComponentName componentName, IBinder iBinder) {
            IInterface queryLocalInterface;
            int i = IMultiInstanceInvalidationService.Stub.f1613c;
            if (iBinder != null && (queryLocalInterface = iBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationService")) != null && (queryLocalInterface instanceof IMultiInstanceInvalidationService)) {
            }
            throw null;
        }

        @Override // android.content.ServiceConnection
        public final void onServiceDisconnected(ComponentName componentName) {
            throw null;
        }
    }

    /* renamed from: androidx.room.MultiInstanceInvalidationClient$3, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass3 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.room.MultiInstanceInvalidationClient$4, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass4 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.room.MultiInstanceInvalidationClient$5, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass5 implements Runnable {
        @Override // java.lang.Runnable
        public final void run() {
            throw null;
        }
    }

    /* renamed from: androidx.room.MultiInstanceInvalidationClient$6, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass6 extends InvalidationTracker.Observer {
        @Override // androidx.room.InvalidationTracker.Observer
        public final void a(Set set) {
            throw null;
        }
    }
}
