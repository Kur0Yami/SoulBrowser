package androidx.work.multiprocess;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;

/* loaded from: classes.dex */
public interface IWorkManagerImplCallback extends IInterface {

    /* loaded from: classes.dex */
    public static class Default implements IWorkManagerImplCallback {
        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IWorkManagerImplCallback {

        /* loaded from: classes.dex */
        public static class Proxy implements IWorkManagerImplCallback {

            /* renamed from: c, reason: collision with root package name */
            public IBinder f1988c;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f1988c;
            }
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.work.multiprocess.IWorkManagerImplCallback$Stub$Proxy, java.lang.Object, androidx.work.multiprocess.IWorkManagerImplCallback] */
        public static IWorkManagerImplCallback I1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface("androidx.work.multiprocess.IWorkManagerImplCallback");
            if (queryLocalInterface != null && (queryLocalInterface instanceof IWorkManagerImplCallback)) {
                return (IWorkManagerImplCallback) queryLocalInterface;
            }
            ?? obj = new Object();
            obj.f1988c = iBinder;
            return obj;
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
                    parcel2.writeString("androidx.work.multiprocess.IWorkManagerImplCallback");
                    return true;
                }
                parcel.enforceInterface("androidx.work.multiprocess.IWorkManagerImplCallback");
                parcel.readString();
                w();
                return true;
            }
            parcel.enforceInterface("androidx.work.multiprocess.IWorkManagerImplCallback");
            parcel.createByteArray();
            onSuccess();
            return true;
        }
    }

    void onSuccess();

    void w();
}
