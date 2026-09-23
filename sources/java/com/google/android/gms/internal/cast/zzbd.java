package com.google.android.gms.internal.cast;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Parcel;
import androidx.mediarouter.media.MediaRouteSelector;
import androidx.mediarouter.media.MediaRouter;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.HashSet;
import java.util.Iterator;
import java.util.Set;

/* loaded from: classes.dex */
public abstract class zzbd extends zzb implements zzbe {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r2v10, types: [boolean] */
    /* JADX WARN: Type inference failed for: r3v4, types: [com.google.android.gms.internal.cast.zza] */
    @Override // com.google.android.gms.internal.cast.zzb
    public final boolean I1(int i, Parcel parcel, Parcel parcel2) {
        zzbg zzbgVar = null;
        Bundle bundle = null;
        int i2 = 0;
        r2 = 0;
        int i3 = 0;
        switch (i) {
            case 1:
                Bundle bundle2 = (Bundle) zzc.a(parcel, Bundle.CREATOR);
                IBinder readStrongBinder = parcel.readStrongBinder();
                if (readStrongBinder != null) {
                    IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.internal.IMediaRouterCallback");
                    if (queryLocalInterface instanceof zzbg) {
                        zzbgVar = (zzbg) queryLocalInterface;
                    } else {
                        zzbgVar = new zza(readStrongBinder, "com.google.android.gms.cast.framework.internal.IMediaRouterCallback");
                    }
                }
                zzc.d(parcel);
                zzbx zzbxVar = (zzbx) this;
                MediaRouteSelector b = MediaRouteSelector.b(bundle2);
                if (b != null) {
                    HashMap hashMap = zzbxVar.g;
                    if (!hashMap.containsKey(b)) {
                        hashMap.put(b, new HashSet());
                    }
                    ((Set) hashMap.get(b)).add(new zzbl(zzbgVar, zzbxVar, zzbxVar.h));
                }
                parcel2.writeNoException();
                return true;
            case 2:
                Bundle bundle3 = (Bundle) zzc.a(parcel, Bundle.CREATOR);
                final int readInt = parcel.readInt();
                zzc.d(parcel);
                final zzbx zzbxVar2 = (zzbx) this;
                final MediaRouteSelector b2 = MediaRouteSelector.b(bundle3);
                if (b2 != null) {
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        zzbxVar2.f2(b2, readInt);
                    } else {
                        new zzfk(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbu
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzbx zzbxVar3 = zzbx.this;
                                MediaRouteSelector mediaRouteSelector = b2;
                                int i4 = readInt;
                                synchronized (zzbxVar3.g) {
                                    zzbxVar3.f2(mediaRouteSelector, i4);
                                }
                            }
                        });
                    }
                }
                parcel2.writeNoException();
                return true;
            case 3:
                Bundle bundle4 = (Bundle) zzc.a(parcel, Bundle.CREATOR);
                zzc.d(parcel);
                final zzbx zzbxVar3 = (zzbx) this;
                final MediaRouteSelector b3 = MediaRouteSelector.b(bundle4);
                if (b3 != null) {
                    if (Looper.myLooper() == Looper.getMainLooper()) {
                        zzbxVar3.r2(b3);
                    } else {
                        new zzfk(Looper.getMainLooper()).post(new Runnable() { // from class: com.google.android.gms.internal.cast.zzbv
                            @Override // java.lang.Runnable
                            public final /* synthetic */ void run() {
                                zzbx.this.r2(b3);
                            }
                        });
                    }
                }
                parcel2.writeNoException();
                return true;
            case 4:
                Bundle bundle5 = (Bundle) zzc.a(parcel, Bundle.CREATOR);
                int readInt2 = parcel.readInt();
                zzc.d(parcel);
                zzbx zzbxVar4 = (zzbx) this;
                MediaRouteSelector b4 = MediaRouteSelector.b(bundle5);
                if (b4 != null) {
                    zzbxVar4.f9642c.getClass();
                    i2 = MediaRouter.o(b4, readInt2);
                }
                parcel2.writeNoException();
                parcel2.writeInt(i2);
                return true;
            case 5:
                String readString = parcel.readString();
                zzc.d(parcel);
                Logger logger = zzbx.l;
                logger.b("select route with routeId = %s", readString);
                ((zzbx) this).f9642c.getClass();
                ArrayList k = MediaRouter.k();
                int size = k.size();
                int i4 = 0;
                while (true) {
                    if (i4 < size) {
                        Object obj = k.get(i4);
                        i4++;
                        MediaRouter.RouteInfo routeInfo = (MediaRouter.RouteInfo) obj;
                        if (routeInfo.f1387c.equals(readString)) {
                            logger.b("media route is found and selected", new Object[0]);
                            routeInfo.m(true);
                        }
                    }
                }
                parcel2.writeNoException();
                return true;
            case 6:
                ((zzbx) this).f9642c.getClass();
                MediaRouter.f().m(true);
                parcel2.writeNoException();
                return true;
            case 7:
                ((zzbx) this).f9642c.getClass();
                boolean equals = MediaRouter.l().f1387c.equals(MediaRouter.f().f1387c);
                parcel2.writeNoException();
                int i5 = zzc.f9645a;
                parcel2.writeInt(equals ? 1 : 0);
                return true;
            case 8:
                String readString2 = parcel.readString();
                zzc.d(parcel);
                ((zzbx) this).f9642c.getClass();
                ArrayList k2 = MediaRouter.k();
                int size2 = k2.size();
                int i6 = 0;
                while (true) {
                    if (i6 < size2) {
                        Object obj2 = k2.get(i6);
                        i6++;
                        MediaRouter.RouteInfo routeInfo2 = (MediaRouter.RouteInfo) obj2;
                        if (routeInfo2.f1387c.equals(readString2)) {
                            bundle = routeInfo2.s;
                        }
                    }
                }
                parcel2.writeNoException();
                if (bundle == null) {
                    parcel2.writeInt(0);
                    return true;
                }
                parcel2.writeInt(1);
                bundle.writeToParcel(parcel2, 1);
                return true;
            case 9:
                ((zzbx) this).f9642c.getClass();
                String str = MediaRouter.l().f1387c;
                parcel2.writeNoException();
                parcel2.writeString(str);
                return true;
            case 10:
                parcel2.writeNoException();
                parcel2.writeInt(GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE);
                return true;
            case 11:
                zzbx zzbxVar5 = (zzbx) this;
                HashMap hashMap2 = zzbxVar5.g;
                Iterator it = hashMap2.values().iterator();
                while (it.hasNext()) {
                    Iterator it2 = ((Set) it.next()).iterator();
                    while (it2.hasNext()) {
                        zzbxVar5.f9642c.p((MediaRouter.Callback) it2.next());
                    }
                }
                hashMap2.clear();
                parcel2.writeNoException();
                return true;
            case 12:
                ((zzbx) this).f9642c.getClass();
                MediaRouter.RouteInfo d = MediaRouter.d();
                if (d != null && MediaRouter.l().f1387c.equals(d.f1387c)) {
                    i3 = 1;
                }
                parcel2.writeNoException();
                int i7 = zzc.f9645a;
                parcel2.writeInt(i3);
                return true;
            case 13:
                int readInt3 = parcel.readInt();
                zzc.d(parcel);
                ((zzbx) this).f9642c.getClass();
                MediaRouter.v(readInt3);
                parcel2.writeNoException();
                return true;
            case 14:
                String readString3 = parcel.readString();
                zzc.d(parcel);
                Logger logger2 = zzbx.l;
                ((zzbx) this).f9642c.getClass();
                ArrayList e = MediaRouter.e();
                int size3 = e.size();
                int i8 = 0;
                while (i8 < size3) {
                    Object obj3 = e.get(i8);
                    i8++;
                    MediaRouter.GroupRouteInfo groupRouteInfo = (MediaRouter.GroupRouteInfo) obj3;
                    if (groupRouteInfo.f1387c.equals(readString3)) {
                        logger2.b("clean up the connectedGroupRoute = %s", groupRouteInfo);
                        groupRouteInfo.b();
                    }
                }
                MediaRouter.RouteInfo l = MediaRouter.l();
                if (l != null && !l.h && l.f1387c.equals(readString3)) {
                    logger2.b("clean up the selected route = %s", l);
                    MediaRouter.v(0);
                }
                parcel2.writeNoException();
                return true;
            default:
                return false;
        }
    }
}
