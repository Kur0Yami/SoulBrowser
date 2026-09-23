package com.google.android.gms.internal.cast;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.support.v4.media.session.PlaybackStateCompat;
import com.google.android.gms.cast.framework.CastOptions;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.HashMap;

/* loaded from: classes.dex */
public final class zzbb extends zza implements zzbc {
    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.cast.framework.zzar] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.zzar F1(ObjectWrapper objectWrapper, IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        ?? zzaVar;
        Parcel I1 = I1();
        zzc.c(I1, objectWrapper);
        zzc.c(I1, iObjectWrapper);
        zzc.c(I1, iObjectWrapper2);
        Parcel f2 = f2(5, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i = com.google.android.gms.cast.framework.zzaq.f3586c;
        if (readStrongBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.IReconnectionService");
            if (queryLocalInterface instanceof com.google.android.gms.cast.framework.zzar) {
                zzaVar = (com.google.android.gms.cast.framework.zzar) queryLocalInterface;
            } else {
                zzaVar = new zza(readStrongBinder, "com.google.android.gms.cast.framework.IReconnectionService");
            }
        }
        f2.recycle();
        return zzaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.cast.framework.zzak] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.zzak H(CastOptions castOptions, IObjectWrapper iObjectWrapper, com.google.android.gms.cast.framework.zzae zzaeVar) {
        ?? zzaVar;
        Parcel I1 = I1();
        zzc.b(I1, castOptions);
        zzc.c(I1, iObjectWrapper);
        zzc.c(I1, zzaeVar);
        Parcel f2 = f2(3, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i = com.google.android.gms.cast.framework.zzaj.f3585c;
        if (readStrongBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastSession");
            if (queryLocalInterface instanceof com.google.android.gms.cast.framework.zzak) {
                zzaVar = (com.google.android.gms.cast.framework.zzak) queryLocalInterface;
            } else {
                zzaVar = new zza(readStrongBinder, "com.google.android.gms.cast.framework.ICastSession");
            }
        }
        f2.recycle();
        return zzaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.google.android.gms.cast.framework.media.internal.zzg] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.media.internal.zzg I0(ObjectWrapper objectWrapper, ObjectWrapper objectWrapper2, com.google.android.gms.cast.framework.media.internal.zzi zziVar, int i, int i2) {
        ?? zzaVar;
        Parcel I1 = I1();
        zzc.c(I1, objectWrapper);
        zzc.c(I1, objectWrapper2);
        zzc.c(I1, zziVar);
        I1.writeInt(i);
        I1.writeInt(i2);
        I1.writeInt(0);
        I1.writeLong(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        I1.writeInt(5);
        I1.writeInt(333);
        I1.writeInt(10000);
        Parcel f2 = f2(7, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i3 = com.google.android.gms.cast.framework.media.internal.zzf.f3514c;
        if (readStrongBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask");
            if (queryLocalInterface instanceof com.google.android.gms.cast.framework.media.internal.zzg) {
                zzaVar = (com.google.android.gms.cast.framework.media.internal.zzg) queryLocalInterface;
            } else {
                zzaVar = new zza(readStrongBinder, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask");
            }
        }
        f2.recycle();
        return zzaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.google.android.gms.cast.framework.media.internal.zzg] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.media.internal.zzg X1(ObjectWrapper objectWrapper, com.google.android.gms.cast.framework.media.internal.zzi zziVar, int i, int i2) {
        ?? zzaVar;
        Parcel I1 = I1();
        zzc.c(I1, objectWrapper);
        zzc.c(I1, zziVar);
        I1.writeInt(i);
        I1.writeInt(i2);
        I1.writeInt(0);
        I1.writeLong(PlaybackStateCompat.ACTION_SET_SHUFFLE_MODE);
        I1.writeInt(5);
        I1.writeInt(333);
        I1.writeInt(10000);
        Parcel f2 = f2(6, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i3 = com.google.android.gms.cast.framework.media.internal.zzf.f3514c;
        if (readStrongBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask");
            if (queryLocalInterface instanceof com.google.android.gms.cast.framework.media.internal.zzg) {
                zzaVar = (com.google.android.gms.cast.framework.media.internal.zzg) queryLocalInterface;
            } else {
                zzaVar = new zza(readStrongBinder, "com.google.android.gms.cast.framework.media.internal.IFetchBitmapTask");
            }
        }
        f2.recycle();
        return zzaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r4v2 */
    /* JADX WARN: Type inference failed for: r4v5, types: [com.google.android.gms.cast.framework.zzau] */
    /* JADX WARN: Type inference failed for: r4v6 */
    /* JADX WARN: Type inference failed for: r4v7 */
    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.zzau Y4(String str, String str2, com.google.android.gms.cast.framework.zzbc zzbcVar) {
        ?? zzaVar;
        Parcel I1 = I1();
        I1.writeString(str);
        I1.writeString(str2);
        zzc.c(I1, zzbcVar);
        Parcel f2 = f2(2, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i = com.google.android.gms.cast.framework.zzat.f3587c;
        if (readStrongBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ISession");
            if (queryLocalInterface instanceof com.google.android.gms.cast.framework.zzau) {
                zzaVar = (com.google.android.gms.cast.framework.zzau) queryLocalInterface;
            } else {
                zzaVar = new zza(readStrongBinder, "com.google.android.gms.cast.framework.ISession");
            }
        }
        f2.recycle();
        return zzaVar;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v2 */
    /* JADX WARN: Type inference failed for: r3v5, types: [com.google.android.gms.cast.framework.zzah] */
    /* JADX WARN: Type inference failed for: r3v6 */
    /* JADX WARN: Type inference failed for: r3v7 */
    @Override // com.google.android.gms.internal.cast.zzbc
    public final com.google.android.gms.cast.framework.zzah u3(ObjectWrapper objectWrapper, CastOptions castOptions, zzbx zzbxVar, HashMap hashMap) {
        ?? zzaVar;
        Parcel I1 = I1();
        zzc.c(I1, objectWrapper);
        zzc.b(I1, castOptions);
        zzc.c(I1, zzbxVar);
        I1.writeMap(hashMap);
        Parcel f2 = f2(1, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i = com.google.android.gms.cast.framework.zzag.f3584c;
        if (readStrongBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.cast.framework.ICastContext");
            if (queryLocalInterface instanceof com.google.android.gms.cast.framework.zzah) {
                zzaVar = (com.google.android.gms.cast.framework.zzah) queryLocalInterface;
            } else {
                zzaVar = new zza(readStrongBinder, "com.google.android.gms.cast.framework.ICastContext");
            }
        }
        f2.recycle();
        return zzaVar;
    }

    @Override // com.google.android.gms.internal.cast.zzbc
    public final int zze() {
        Parcel f2 = f2(8, I1());
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }
}
