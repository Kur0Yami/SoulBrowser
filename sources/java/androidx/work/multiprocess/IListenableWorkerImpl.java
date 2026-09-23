package androidx.work.multiprocess;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.work.multiprocess.IWorkManagerImplCallback;

/* loaded from: classes.dex */
public interface IListenableWorkerImpl extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IListenableWorkerImpl {
        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IListenableWorkerImpl {

        /* loaded from: classes.dex */
        public static class Proxy implements IListenableWorkerImpl {
            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return null;
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            if (i != 1) {
                if (i != 2) {
                    if (i != 1598968902) {
                        return super.onTransact(i, parcel, parcel2, i2);
                    }
                    parcel2.writeString("androidx.work.multiprocess.IListenableWorkerImpl");
                    return true;
                }
                parcel.enforceInterface("androidx.work.multiprocess.IListenableWorkerImpl");
                parcel.createByteArray();
                IWorkManagerImplCallback.Stub.I1(parcel.readStrongBinder());
                J4();
                return true;
            }
            parcel.enforceInterface("androidx.work.multiprocess.IListenableWorkerImpl");
            parcel.createByteArray();
            IWorkManagerImplCallback.Stub.I1(parcel.readStrongBinder());
            c2();
            return true;
        }
    }

    void J4();

    void c2();
}
