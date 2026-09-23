package androidx.room;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.room.IMultiInstanceInvalidationCallback;
import androidx.room.MultiInstanceInvalidationService;

/* loaded from: classes.dex */
public interface IMultiInstanceInvalidationService extends IInterface {

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IMultiInstanceInvalidationService {

        /* renamed from: c, reason: collision with root package name */
        public static final /* synthetic */ int f1613c = 0;

        /* loaded from: classes.dex */
        public static class Proxy implements IMultiInstanceInvalidationService {

            /* renamed from: c, reason: collision with root package name */
            public IBinder f1614c;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f1614c;
            }

            @Override // androidx.room.IMultiInstanceInvalidationService
            public final int e1(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, String str) {
                IMultiInstanceInvalidationCallback.Stub stub;
                Parcel obtain = Parcel.obtain();
                Parcel obtain2 = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken("androidx.room.IMultiInstanceInvalidationService");
                    if (iMultiInstanceInvalidationCallback != null) {
                        stub = (IMultiInstanceInvalidationCallback.Stub) iMultiInstanceInvalidationCallback;
                    } else {
                        stub = null;
                    }
                    obtain.writeStrongBinder(stub);
                    obtain.writeString(null);
                    this.f1614c.transact(1, obtain, obtain2, 0);
                    obtain2.readException();
                    int readInt = obtain2.readInt();
                    obtain2.recycle();
                    obtain.recycle();
                    return readInt;
                } catch (Throwable th) {
                    obtain2.recycle();
                    obtain.recycle();
                    throw th;
                }
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        /* JADX WARN: Type inference failed for: r1v2, types: [androidx.room.IMultiInstanceInvalidationCallback$Stub$Proxy, java.lang.Object] */
        /* JADX WARN: Type inference failed for: r1v6, types: [androidx.room.IMultiInstanceInvalidationCallback$Stub$Proxy, java.lang.Object] */
        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback = null;
            IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback2 = null;
            if (i != 1) {
                if (i != 2) {
                    if (i != 3) {
                        if (i != 1598968902) {
                            return super.onTransact(i, parcel, parcel2, i2);
                        }
                        parcel2.writeString("androidx.room.IMultiInstanceInvalidationService");
                        return true;
                    }
                    parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                    MultiInstanceInvalidationService.AnonymousClass2 anonymousClass2 = (MultiInstanceInvalidationService.AnonymousClass2) this;
                    anonymousClass2.I1(parcel.createStringArray(), parcel.readInt());
                    return true;
                }
                parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
                    if (queryLocalInterface != null && (queryLocalInterface instanceof IMultiInstanceInvalidationCallback)) {
                        iMultiInstanceInvalidationCallback2 = (IMultiInstanceInvalidationCallback) queryLocalInterface;
                    } else {
                        ?? obj = new Object();
                        obj.f1612c = readStrongBinder;
                        iMultiInstanceInvalidationCallback2 = obj;
                    }
                }
                int readInt = parcel.readInt();
                MultiInstanceInvalidationService.AnonymousClass2 anonymousClass22 = (MultiInstanceInvalidationService.AnonymousClass2) this;
                synchronized (MultiInstanceInvalidationService.this.g) {
                    MultiInstanceInvalidationService.this.g.unregister(iMultiInstanceInvalidationCallback2);
                    MultiInstanceInvalidationService.this.f.remove(Integer.valueOf(readInt));
                }
                parcel2.writeNoException();
                return true;
            }
            parcel.enforceInterface("androidx.room.IMultiInstanceInvalidationService");
            IBinder readStrongBinder2 = parcel.readStrongBinder();
            if (readStrongBinder2 != null) {
                IInterface queryLocalInterface2 = readStrongBinder2.queryLocalInterface("androidx.room.IMultiInstanceInvalidationCallback");
                if (queryLocalInterface2 != null && (queryLocalInterface2 instanceof IMultiInstanceInvalidationCallback)) {
                    iMultiInstanceInvalidationCallback = (IMultiInstanceInvalidationCallback) queryLocalInterface2;
                } else {
                    ?? obj2 = new Object();
                    obj2.f1612c = readStrongBinder2;
                    iMultiInstanceInvalidationCallback = obj2;
                }
            }
            int e1 = ((MultiInstanceInvalidationService.AnonymousClass2) this).e1(iMultiInstanceInvalidationCallback, parcel.readString());
            parcel2.writeNoException();
            parcel2.writeInt(e1);
            return true;
        }
    }

    int e1(IMultiInstanceInvalidationCallback iMultiInstanceInvalidationCallback, String str);
}
