package com.google.android.gms.internal.measurement;

import android.os.IBinder;
import android.os.Parcel;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes3.dex */
public abstract class zzcb extends zzbn implements zzcc {
    @Override // com.google.android.gms.internal.measurement.zzbn
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        switch (i) {
            case 1:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                parcel.readLong();
                zzbo.b(parcel);
                s();
                throw null;
            case 2:
                parcel.readString();
                parcel.readString();
                parcel.readInt();
                parcel.readInt();
                parcel.readLong();
                zzbo.b(parcel);
                X0();
                throw null;
            case 3:
                parcel.readString();
                parcel.readString();
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    readStrongBinder.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                parcel.readLong();
                zzbo.b(parcel);
                z1();
                break;
            case 4:
                parcel.readString();
                parcel.readString();
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                ClassLoader classLoader = zzbo.f10366a;
                parcel.readInt();
                parcel.readLong();
                zzbo.b(parcel);
                B3();
                throw null;
            case 5:
                parcel.readString();
                parcel.readString();
                ClassLoader classLoader2 = zzbo.f10366a;
                parcel.readInt();
                IBinder readStrongBinder2 = parcel.readStrongBinder();
                if (readStrongBinder2 != null) {
                    readStrongBinder2.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                zzbo.b(parcel);
                R1();
                throw null;
            case 6:
                parcel.readString();
                IBinder readStrongBinder3 = parcel.readStrongBinder();
                if (readStrongBinder3 != null) {
                    readStrongBinder3.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                zzbo.b(parcel);
                A3();
                throw null;
            case 7:
                parcel.readString();
                parcel.readLong();
                zzbo.b(parcel);
                g2();
                throw null;
            case 8:
                parcel.readLong();
                zzbo.b(parcel);
                i3();
                throw null;
            case 9:
                parcel.readString();
                parcel.readString();
                zzbo.b(parcel);
                V();
                throw null;
            case 10:
                parcel.readString();
                parcel.readString();
                IBinder readStrongBinder4 = parcel.readStrongBinder();
                if (readStrongBinder4 != null) {
                    readStrongBinder4.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                zzbo.b(parcel);
                Z0();
                throw null;
            case 11:
                ClassLoader classLoader3 = zzbo.f10366a;
                parcel.readInt();
                parcel.readLong();
                zzbo.b(parcel);
                o1();
                throw null;
            case 12:
                parcel.readLong();
                zzbo.b(parcel);
                u4();
                throw null;
            case 13:
                parcel.readLong();
                zzbo.b(parcel);
                y1();
                break;
            case 14:
                parcel.readLong();
                zzbo.b(parcel);
                O0();
                throw null;
            case 15:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                parcel.readString();
                parcel.readString();
                parcel.readLong();
                zzbo.b(parcel);
                Q4();
                throw null;
            case 16:
                IBinder readStrongBinder5 = parcel.readStrongBinder();
                if (readStrongBinder5 != null) {
                    readStrongBinder5.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                zzbo.b(parcel);
                x1();
                throw null;
            case 17:
                IBinder readStrongBinder6 = parcel.readStrongBinder();
                if (readStrongBinder6 != null) {
                    readStrongBinder6.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                zzbo.b(parcel);
                g3();
                throw null;
            case 18:
                IBinder readStrongBinder7 = parcel.readStrongBinder();
                if (readStrongBinder7 != null) {
                    readStrongBinder7.queryLocalInterface("com.google.android.gms.measurement.api.internal.IStringProvider");
                }
                zzbo.b(parcel);
                A1();
                break;
            case 19:
                IBinder readStrongBinder8 = parcel.readStrongBinder();
                if (readStrongBinder8 != null) {
                    readStrongBinder8.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                zzbo.b(parcel);
                Z1();
                throw null;
            case 20:
                IBinder readStrongBinder9 = parcel.readStrongBinder();
                if (readStrongBinder9 != null) {
                    readStrongBinder9.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                zzbo.b(parcel);
                c1();
                throw null;
            case 21:
                IBinder readStrongBinder10 = parcel.readStrongBinder();
                if (readStrongBinder10 != null) {
                    readStrongBinder10.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                zzbo.b(parcel);
                P2();
                throw null;
            case 22:
                IBinder readStrongBinder11 = parcel.readStrongBinder();
                if (readStrongBinder11 != null) {
                    readStrongBinder11.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                zzbo.b(parcel);
                w1();
                throw null;
            case ConnectionResult.API_DISABLED /* 23 */:
                parcel.readString();
                parcel.readLong();
                zzbo.b(parcel);
                x2();
                throw null;
            case ConnectionResult.API_DISABLED_FOR_CONNECTION /* 24 */:
                parcel.readString();
                parcel.readLong();
                zzbo.b(parcel);
                C3();
                throw null;
            case 25:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                parcel.readLong();
                zzbo.b(parcel);
                T4();
                throw null;
            case 26:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                parcel.readLong();
                zzbo.b(parcel);
                b2();
                throw null;
            case 27:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                parcel.readLong();
                zzbo.b(parcel);
                L4();
                throw null;
            case 28:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                parcel.readLong();
                zzbo.b(parcel);
                P4();
                throw null;
            case 29:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                parcel.readLong();
                zzbo.b(parcel);
                x3();
                throw null;
            case 30:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                parcel.readLong();
                zzbo.b(parcel);
                P1();
                throw null;
            case 31:
                IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IBinder readStrongBinder12 = parcel.readStrongBinder();
                if (readStrongBinder12 != null) {
                    readStrongBinder12.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                parcel.readLong();
                zzbo.b(parcel);
                U0();
                throw null;
            case 32:
                IBinder readStrongBinder13 = parcel.readStrongBinder();
                if (readStrongBinder13 != null) {
                    readStrongBinder13.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                parcel.readLong();
                zzbo.b(parcel);
                c0();
                throw null;
            case 33:
                parcel.readInt();
                parcel.readString();
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                IObjectWrapper I13 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                zzbo.b(parcel);
                V1((ObjectWrapper) I1, (ObjectWrapper) I12, (ObjectWrapper) I13);
                break;
            case 34:
                IBinder readStrongBinder14 = parcel.readStrongBinder();
                if (readStrongBinder14 != null) {
                    readStrongBinder14.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                }
                zzbo.b(parcel);
                M0();
                throw null;
            case 35:
                IBinder readStrongBinder15 = parcel.readStrongBinder();
                if (readStrongBinder15 != null) {
                    readStrongBinder15.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                }
                zzbo.b(parcel);
                A4();
                throw null;
            case 36:
                IBinder readStrongBinder16 = parcel.readStrongBinder();
                if (readStrongBinder16 != null) {
                    readStrongBinder16.queryLocalInterface("com.google.android.gms.measurement.api.internal.IEventHandlerProxy");
                }
                zzbo.b(parcel);
                t3();
                throw null;
            case 37:
                parcel.readHashMap(zzbo.f10366a);
                zzbo.b(parcel);
                O2();
                break;
            case 38:
                IBinder readStrongBinder17 = parcel.readStrongBinder();
                if (readStrongBinder17 != null) {
                    readStrongBinder17.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                parcel.readInt();
                zzbo.b(parcel);
                o4();
                throw null;
            case 39:
                ClassLoader classLoader4 = zzbo.f10366a;
                parcel.readInt();
                zzbo.b(parcel);
                v0();
                throw null;
            case 40:
                IBinder readStrongBinder18 = parcel.readStrongBinder();
                if (readStrongBinder18 != null) {
                    readStrongBinder18.queryLocalInterface("com.google.android.gms.measurement.api.internal.IBundleReceiver");
                }
                zzbo.b(parcel);
                d2();
                break;
            case 41:
            default:
                return false;
            case 42:
                zzbo.b(parcel);
                v4();
                throw null;
            case 43:
                parcel.readLong();
                zzbo.b(parcel);
                G();
                throw null;
            case 44:
                parcel.readLong();
                zzbo.b(parcel);
                K2();
                throw null;
            case 45:
                parcel.readLong();
                zzbo.b(parcel);
                N3();
                throw null;
        }
        parcel2.writeNoException();
        return true;
    }
}
