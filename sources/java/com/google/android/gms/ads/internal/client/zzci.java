package com.google.android.gms.ads.internal.client;

import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbeb;
import com.google.android.gms.internal.ads.zzbec;
import com.google.android.gms.internal.ads.zzbed;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzcae;
import com.google.android.gms.internal.ads.zzcaf;
import java.util.List;

/* loaded from: classes.dex */
public final class zzci extends zzbcb implements zzck {
    public zzci(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.ads.internal.client.IAdPreloader");
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final void zze(List list, zzce zzceVar) {
        Parcel I1 = I1();
        I1.writeTypedList(list);
        zzbcd.e(I1, zzceVar);
        r2(1, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzf(String str) {
        boolean z;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(2, I1);
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzcaf zzg(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(3, I1);
        zzcaf zzt = zzcae.zzt(f2.readStrongBinder());
        f2.recycle();
        return zzt;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzh(String str) {
        boolean z;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(4, I1);
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzbed zzi(String str) {
        zzbed zzbebVar;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(5, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i = zzbec.f4590c;
        if (readStrongBinder == null) {
            zzbebVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
            if (queryLocalInterface instanceof zzbed) {
                zzbebVar = (zzbed) queryLocalInterface;
            } else {
                zzbebVar = new zzbeb(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbebVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzj(String str) {
        boolean z;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(6, I1);
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzbx zzk(String str) {
        zzbx zzbvVar;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(7, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final void zzl(zzbsz zzbszVar) {
        Parcel I1 = I1();
        zzbcd.e(I1, zzbszVar);
        r2(8, I1);
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzm(String str, zzft zzftVar, zzch zzchVar) {
        boolean z;
        Parcel I1 = I1();
        I1.writeString(str);
        zzbcd.c(I1, zzftVar);
        zzbcd.e(I1, zzchVar);
        Parcel f2 = f2(9, I1);
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzn(int i, String str) {
        boolean z;
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeString(str);
        Parcel f2 = f2(10, I1);
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzbx zzo(String str) {
        zzbx zzbvVar;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(11, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbvVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdManager");
            if (queryLocalInterface instanceof zzbx) {
                zzbvVar = (zzbx) queryLocalInterface;
            } else {
                zzbvVar = new zzbv(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbvVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzbed zzp(String str) {
        zzbed zzbebVar;
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(12, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i = zzbec.f4590c;
        if (readStrongBinder == null) {
            zzbebVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.appopen.client.IAppOpenAd");
            if (queryLocalInterface instanceof zzbed) {
                zzbebVar = (zzbed) queryLocalInterface;
            } else {
                zzbebVar = new zzbeb(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbebVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzcaf zzq(String str) {
        Parcel I1 = I1();
        I1.writeString(str);
        Parcel f2 = f2(13, I1);
        zzcaf zzt = zzcae.zzt(f2.readStrongBinder());
        f2.recycle();
        return zzt;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final zzft zzr(int i, String str) {
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeString(str);
        Parcel f2 = f2(14, I1);
        zzft zzftVar = (zzft) zzbcd.b(f2, zzft.CREATOR);
        f2.recycle();
        return zzftVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final Bundle zzs(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        Parcel f2 = f2(15, I1);
        Bundle bundle = (Bundle) zzbcd.b(f2, Bundle.CREATOR);
        f2.recycle();
        return bundle;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final int zzt(int i, String str) {
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeString(str);
        Parcel f2 = f2(16, I1);
        int readInt = f2.readInt();
        f2.recycle();
        return readInt;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final boolean zzu(int i, String str) {
        boolean z;
        Parcel I1 = I1();
        I1.writeInt(i);
        I1.writeString(str);
        Parcel f2 = f2(17, I1);
        ClassLoader classLoader = zzbcd.f4538a;
        if (f2.readInt() != 0) {
            z = true;
        } else {
            z = false;
        }
        f2.recycle();
        return z;
    }

    @Override // com.google.android.gms.ads.internal.client.zzck
    public final void zzv(int i) {
        Parcel I1 = I1();
        I1.writeInt(i);
        r2(18, I1);
    }
}
