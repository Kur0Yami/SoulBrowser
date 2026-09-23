package com.google.android.gms.cast.framework;

import android.os.Parcel;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;

/* loaded from: classes.dex */
public abstract class zzax extends com.google.android.gms.internal.cast.zzb implements zzay {
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        SessionManagerListener sessionManagerListener;
        SessionManagerListener sessionManagerListener2;
        SessionManagerListener sessionManagerListener3;
        SessionManagerListener sessionManagerListener4;
        SessionManagerListener sessionManagerListener5;
        SessionManagerListener sessionManagerListener6;
        SessionManagerListener sessionManagerListener7;
        SessionManagerListener sessionManagerListener8;
        SessionManagerListener sessionManagerListener9;
        boolean z = false;
        switch (i) {
            case 1:
                ObjectWrapper objectWrapper = new ObjectWrapper(((zzbg) this).f3589c);
                parcel2.writeNoException();
                com.google.android.gms.internal.cast.zzc.c(parcel2, objectWrapper);
                return true;
            case 2:
                IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzbg zzbgVar = (zzbg) this;
                Session session = (Session) ObjectWrapper.f2(I1);
                Class cls = zzbgVar.f;
                if (cls.isInstance(session) && (sessionManagerListener = zzbgVar.f3589c) != null) {
                    sessionManagerListener.n((Session) cls.cast(session));
                }
                parcel2.writeNoException();
                return true;
            case 3:
                IObjectWrapper I12 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                String readString = parcel.readString();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzbg zzbgVar2 = (zzbg) this;
                Session session2 = (Session) ObjectWrapper.f2(I12);
                Class cls2 = zzbgVar2.f;
                if (cls2.isInstance(session2) && (sessionManagerListener2 = zzbgVar2.f3589c) != null) {
                    sessionManagerListener2.h((Session) cls2.cast(session2), readString);
                }
                parcel2.writeNoException();
                return true;
            case 4:
                IObjectWrapper I13 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                int readInt = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzbg zzbgVar3 = (zzbg) this;
                Session session3 = (Session) ObjectWrapper.f2(I13);
                Class cls3 = zzbgVar3.f;
                if (cls3.isInstance(session3) && (sessionManagerListener3 = zzbgVar3.f3589c) != null) {
                    sessionManagerListener3.j((Session) cls3.cast(session3), readInt);
                }
                parcel2.writeNoException();
                return true;
            case 5:
                IObjectWrapper I14 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzbg zzbgVar4 = (zzbg) this;
                Session session4 = (Session) ObjectWrapper.f2(I14);
                Class cls4 = zzbgVar4.f;
                if (cls4.isInstance(session4) && (sessionManagerListener4 = zzbgVar4.f3589c) != null) {
                    sessionManagerListener4.o((Session) cls4.cast(session4));
                }
                parcel2.writeNoException();
                return true;
            case 6:
                IObjectWrapper I15 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                int readInt2 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzbg zzbgVar5 = (zzbg) this;
                Session session5 = (Session) ObjectWrapper.f2(I15);
                Class cls5 = zzbgVar5.f;
                if (cls5.isInstance(session5) && (sessionManagerListener5 = zzbgVar5.f3589c) != null) {
                    sessionManagerListener5.f((Session) cls5.cast(session5), readInt2);
                }
                parcel2.writeNoException();
                return true;
            case 7:
                IObjectWrapper I16 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                String readString2 = parcel.readString();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzbg zzbgVar6 = (zzbg) this;
                Session session6 = (Session) ObjectWrapper.f2(I16);
                Class cls6 = zzbgVar6.f;
                if (cls6.isInstance(session6) && (sessionManagerListener6 = zzbgVar6.f3589c) != null) {
                    sessionManagerListener6.e((Session) cls6.cast(session6), readString2);
                }
                parcel2.writeNoException();
                return true;
            case 8:
                IObjectWrapper I17 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                int i2 = com.google.android.gms.internal.cast.zzc.f9645a;
                if (parcel.readInt() != 0) {
                    z = true;
                }
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzbg zzbgVar7 = (zzbg) this;
                Session session7 = (Session) ObjectWrapper.f2(I17);
                Class cls7 = zzbgVar7.f;
                if (cls7.isInstance(session7) && (sessionManagerListener7 = zzbgVar7.f3589c) != null) {
                    sessionManagerListener7.k((Session) cls7.cast(session7), z);
                }
                parcel2.writeNoException();
                return true;
            case 9:
                IObjectWrapper I18 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                int readInt3 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzbg zzbgVar8 = (zzbg) this;
                Session session8 = (Session) ObjectWrapper.f2(I18);
                Class cls8 = zzbgVar8.f;
                if (cls8.isInstance(session8) && (sessionManagerListener8 = zzbgVar8.f3589c) != null) {
                    sessionManagerListener8.m((Session) cls8.cast(session8), readInt3);
                }
                parcel2.writeNoException();
                return true;
            case 10:
                IObjectWrapper I19 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
                int readInt4 = parcel.readInt();
                com.google.android.gms.internal.cast.zzc.d(parcel);
                zzbg zzbgVar9 = (zzbg) this;
                Session session9 = (Session) ObjectWrapper.f2(I19);
                Class cls9 = zzbgVar9.f;
                if (cls9.isInstance(session9) && (sessionManagerListener9 = zzbgVar9.f3589c) != null) {
                    sessionManagerListener9.d((Session) cls9.cast(session9), readInt4);
                }
                parcel2.writeNoException();
                return true;
            case 11:
                parcel2.writeNoException();
                parcel2.writeInt(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                return true;
            default:
                return false;
        }
    }
}
