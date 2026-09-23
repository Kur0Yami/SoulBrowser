package androidx.core.app.unusedapprestrictions;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.annotation.RestrictTo;
import kotlin.text.Typography;

@RestrictTo
/* loaded from: classes.dex */
public interface IUnusedAppRestrictionsBackportService extends IInterface {
    public static final String b = "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportService".replace(Typography.dollar, '.');

    /* loaded from: classes.dex */
    public static class Default implements IUnusedAppRestrictionsBackportService {
        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }

        @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
        public final void g1(IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) {
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IUnusedAppRestrictionsBackportService {

        /* loaded from: classes.dex */
        public static class Proxy implements IUnusedAppRestrictionsBackportService {

            /* renamed from: c, reason: collision with root package name */
            public IBinder f650c;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f650c;
            }

            @Override // androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService
            public final void g1(IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback) {
                Parcel obtain = Parcel.obtain();
                try {
                    obtain.writeInterfaceToken(IUnusedAppRestrictionsBackportService.b);
                    obtain.writeStrongInterface(iUnusedAppRestrictionsBackportCallback);
                    this.f650c.transact(1, obtain, null, 1);
                } finally {
                    obtain.recycle();
                }
            }
        }

        /* JADX WARN: Type inference failed for: r0v2, types: [androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService, java.lang.Object, androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportService$Stub$Proxy] */
        public static IUnusedAppRestrictionsBackportService I1(IBinder iBinder) {
            if (iBinder == null) {
                return null;
            }
            IInterface queryLocalInterface = iBinder.queryLocalInterface(IUnusedAppRestrictionsBackportService.b);
            if (queryLocalInterface != null && (queryLocalInterface instanceof IUnusedAppRestrictionsBackportService)) {
                return (IUnusedAppRestrictionsBackportService) queryLocalInterface;
            }
            ?? obj = new Object();
            obj.f650c = iBinder;
            return obj;
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        /* JADX WARN: Type inference failed for: r5v3, types: [java.lang.Object, androidx.core.app.unusedapprestrictions.IUnusedAppRestrictionsBackportCallback$Stub$Proxy] */
        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback;
            String str = IUnusedAppRestrictionsBackportService.b;
            if (i >= 1 && i <= 16777215) {
                parcel.enforceInterface(str);
            }
            if (i == 1598968902) {
                parcel2.writeString(str);
                return true;
            }
            if (i != 1) {
                return super.onTransact(i, parcel, parcel2, i2);
            }
            IBinder readStrongBinder = parcel.readStrongBinder();
            if (readStrongBinder == null) {
                iUnusedAppRestrictionsBackportCallback = null;
            } else {
                IInterface queryLocalInterface = readStrongBinder.queryLocalInterface(IUnusedAppRestrictionsBackportCallback.f648a);
                if (queryLocalInterface != null && (queryLocalInterface instanceof IUnusedAppRestrictionsBackportCallback)) {
                    iUnusedAppRestrictionsBackportCallback = (IUnusedAppRestrictionsBackportCallback) queryLocalInterface;
                } else {
                    ?? obj = new Object();
                    obj.f649c = readStrongBinder;
                    iUnusedAppRestrictionsBackportCallback = obj;
                }
            }
            g1(iUnusedAppRestrictionsBackportCallback);
            return true;
        }
    }

    void g1(IUnusedAppRestrictionsBackportCallback iUnusedAppRestrictionsBackportCallback);
}
