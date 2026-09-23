package androidx.work.multiprocess;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.work.multiprocess.IWorkManagerImplCallback;

/* loaded from: classes.dex */
public interface IWorkManagerImpl extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IWorkManagerImpl {
        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IWorkManagerImpl {

        /* loaded from: classes.dex */
        public static class Proxy implements IWorkManagerImpl {
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
            if (i != 1598968902) {
                switch (i) {
                    case 1:
                        parcel.enforceInterface("androidx.work.multiprocess.IWorkManagerImpl");
                        parcel.createByteArray();
                        IWorkManagerImplCallback.Stub.I1(parcel.readStrongBinder());
                        E0();
                        return true;
                    case 2:
                        parcel.enforceInterface("androidx.work.multiprocess.IWorkManagerImpl");
                        parcel.createByteArray();
                        IWorkManagerImplCallback.Stub.I1(parcel.readStrongBinder());
                        R2();
                        return true;
                    case 3:
                        parcel.enforceInterface("androidx.work.multiprocess.IWorkManagerImpl");
                        parcel.readString();
                        IWorkManagerImplCallback.Stub.I1(parcel.readStrongBinder());
                        w3();
                        return true;
                    case 4:
                        parcel.enforceInterface("androidx.work.multiprocess.IWorkManagerImpl");
                        parcel.readString();
                        IWorkManagerImplCallback.Stub.I1(parcel.readStrongBinder());
                        X();
                        return true;
                    case 5:
                        parcel.enforceInterface("androidx.work.multiprocess.IWorkManagerImpl");
                        parcel.readString();
                        IWorkManagerImplCallback.Stub.I1(parcel.readStrongBinder());
                        S();
                        return true;
                    case 6:
                        parcel.enforceInterface("androidx.work.multiprocess.IWorkManagerImpl");
                        IWorkManagerImplCallback.Stub.I1(parcel.readStrongBinder());
                        k2();
                        return true;
                    case 7:
                        parcel.enforceInterface("androidx.work.multiprocess.IWorkManagerImpl");
                        parcel.createByteArray();
                        IWorkManagerImplCallback.Stub.I1(parcel.readStrongBinder());
                        K1();
                        return true;
                    case 8:
                        parcel.enforceInterface("androidx.work.multiprocess.IWorkManagerImpl");
                        parcel.createByteArray();
                        IWorkManagerImplCallback.Stub.I1(parcel.readStrongBinder());
                        e0();
                        return true;
                    default:
                        return super.onTransact(i, parcel, parcel2, i2);
                }
            }
            parcel2.writeString("androidx.work.multiprocess.IWorkManagerImpl");
            return true;
        }
    }

    void E0();

    void K1();

    void R2();

    void S();

    void X();

    void e0();

    void k2();

    void w3();
}
