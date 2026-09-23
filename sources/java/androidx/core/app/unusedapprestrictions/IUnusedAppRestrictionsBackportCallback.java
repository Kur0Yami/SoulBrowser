package androidx.core.app.unusedapprestrictions;

import android.os.Binder;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import androidx.annotation.RestrictTo;
import kotlin.text.Typography;

@RestrictTo
/* loaded from: classes.dex */
public interface IUnusedAppRestrictionsBackportCallback extends IInterface {

    /* renamed from: a, reason: collision with root package name */
    public static final String f648a = "androidx$core$app$unusedapprestrictions$IUnusedAppRestrictionsBackportCallback".replace(Typography.dollar, '.');

    /* loaded from: classes.dex */
    public static class Default implements IUnusedAppRestrictionsBackportCallback {
        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return null;
        }
    }

    /* loaded from: classes.dex */
    public static abstract class Stub extends Binder implements IUnusedAppRestrictionsBackportCallback {

        /* loaded from: classes.dex */
        public static class Proxy implements IUnusedAppRestrictionsBackportCallback {

            /* renamed from: c, reason: collision with root package name */
            public IBinder f649c;

            @Override // android.os.IInterface
            public final IBinder asBinder() {
                return this.f649c;
            }
        }

        @Override // android.os.IInterface
        public final IBinder asBinder() {
            return this;
        }

        @Override // android.os.Binder
        public final boolean onTransact(int i, Parcel parcel, Parcel parcel2, int i2) {
            boolean z;
            String str = IUnusedAppRestrictionsBackportCallback.f648a;
            boolean z2 = true;
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
            if (parcel.readInt() != 0) {
                z = true;
            } else {
                z = false;
            }
            if (parcel.readInt() == 0) {
                z2 = false;
            }
            f4(z, z2);
            throw null;
        }
    }

    void f4(boolean z, boolean z2);
}
