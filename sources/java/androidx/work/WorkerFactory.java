package androidx.work;

import android.content.Context;
import android.support.v4.media.a;

/* loaded from: classes.dex */
public abstract class WorkerFactory {

    /* renamed from: a, reason: collision with root package name */
    public static final String f1856a = Logger.e("WorkerFactory");

    /* renamed from: androidx.work.WorkerFactory$1, reason: invalid class name */
    /* loaded from: classes.dex */
    class AnonymousClass1 extends WorkerFactory {
        @Override // androidx.work.WorkerFactory
        public final ListenableWorker a() {
            return null;
        }
    }

    public abstract ListenableWorker a();

    public final ListenableWorker b(Context context, String str, WorkerParameters workerParameters) {
        Class cls;
        String str2 = f1856a;
        ListenableWorker a2 = a();
        if (a2 == null) {
            try {
                cls = Class.forName(str).asSubclass(ListenableWorker.class);
            } catch (Throwable th) {
                Logger.c().b(str2, a.C("Invalid class: ", str), th);
                cls = null;
            }
            if (cls != null) {
                try {
                    a2 = (ListenableWorker) cls.getDeclaredConstructor(Context.class, WorkerParameters.class).newInstance(context, workerParameters);
                } catch (Throwable th2) {
                    Logger.c().b(str2, a.C("Could not instantiate ", str), th2);
                }
            }
        }
        if (a2 != null && a2.isUsed()) {
            throw new IllegalStateException(a.n("WorkerFactory (", getClass().getName(), ") returned an instance of a ListenableWorker (", str, ") which has already been invoked. createWorker() must always return a new instance of a ListenableWorker."));
        }
        return a2;
    }
}
