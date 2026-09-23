package com.google.android.gms.ads.internal.client;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamite.descriptors.com.google.android.gms.ads.dynamite.ModuleDescriptor;
import com.google.android.gms.internal.ads.zzbcb;
import com.google.android.gms.internal.ads.zzbcd;
import com.google.android.gms.internal.ads.zzbkb;
import com.google.android.gms.internal.ads.zzbkc;
import com.google.android.gms.internal.ads.zzbkh;
import com.google.android.gms.internal.ads.zzbki;
import com.google.android.gms.internal.ads.zzbon;
import com.google.android.gms.internal.ads.zzboo;
import com.google.android.gms.internal.ads.zzbop;
import com.google.android.gms.internal.ads.zzboq;
import com.google.android.gms.internal.ads.zzbsz;
import com.google.android.gms.internal.ads.zzbwp;
import com.google.android.gms.internal.ads.zzbwq;
import com.google.android.gms.internal.ads.zzbwr;
import com.google.android.gms.internal.ads.zzbwx;
import com.google.android.gms.internal.ads.zzbwy;
import com.google.android.gms.internal.ads.zzbzp;
import com.google.android.gms.internal.ads.zzcae;
import com.google.android.gms.internal.ads.zzcaf;
import com.google.android.gms.internal.ads.zzcci;
import com.google.android.gms.internal.ads.zzccj;

/* loaded from: classes.dex */
public final class zzcp extends zzbcb implements zzcr {
    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzb(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbsz zzbszVar, int i) {
        zzbx zzbvVar;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzrVar);
        I1.writeString(str);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(1, I1);
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

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzc(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbsz zzbszVar, int i) {
        zzbx zzbvVar;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzrVar);
        I1.writeString(str);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(2, I1);
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

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbt zzd(IObjectWrapper iObjectWrapper, String str, zzbsz zzbszVar, int i) {
        zzbt zzbrVar;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        I1.writeString(str);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(3, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzbrVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdLoaderBuilder");
            if (queryLocalInterface instanceof zzbt) {
                zzbrVar = (zzbt) queryLocalInterface;
            } else {
                zzbrVar = new zzbr(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbrVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbkc zze(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, iObjectWrapper2);
        Parcel f2 = f2(5, I1);
        zzbkc zzdF = zzbkb.zzdF(f2.readStrongBinder());
        f2.recycle();
        return zzdF;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbzp zzf(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i) {
        throw null;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbwy zzg(IObjectWrapper iObjectWrapper) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        Parcel f2 = f2(8, I1);
        zzbwy zzI = zzbwx.zzI(f2.readStrongBinder());
        f2.recycle();
        return zzI;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzck zzh(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i) {
        zzck zzciVar;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(18, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzciVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IAdPreloader");
            if (queryLocalInterface instanceof zzck) {
                zzciVar = (zzck) queryLocalInterface;
            } else {
                zzciVar = new zzci(readStrongBinder);
            }
        }
        f2.recycle();
        return zzciVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzdb zzi(IObjectWrapper iObjectWrapper, int i) {
        zzdb zzczVar;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(9, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzczVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IMobileAdsSettingManager");
            if (queryLocalInterface instanceof zzdb) {
                zzczVar = (zzdb) queryLocalInterface;
            } else {
                zzczVar = new zzcz(readStrongBinder);
            }
        }
        f2.recycle();
        return zzczVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzj(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, int i) {
        zzbx zzbvVar;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzrVar);
        I1.writeString(str);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(10, I1);
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

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbki zzk(IObjectWrapper iObjectWrapper, IObjectWrapper iObjectWrapper2, IObjectWrapper iObjectWrapper3) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, iObjectWrapper2);
        zzbcd.e(I1, iObjectWrapper3);
        Parcel f2 = f2(11, I1);
        zzbki zze = zzbkh.zze(f2.readStrongBinder());
        f2.recycle();
        return zze;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzcaf zzl(IObjectWrapper iObjectWrapper, String str, zzbsz zzbszVar, int i) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        I1.writeString(str);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(12, I1);
        zzcaf zzt = zzcae.zzt(f2.readStrongBinder());
        f2.recycle();
        return zzt;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbx zzm(IObjectWrapper iObjectWrapper, zzr zzrVar, String str, zzbsz zzbszVar, int i) {
        zzbx zzbvVar;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.c(I1, zzrVar);
        I1.writeString(str);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(13, I1);
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

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzccj zzn(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i) {
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(14, I1);
        zzccj zzb = zzcci.zzb(f2.readStrongBinder());
        f2.recycle();
        return zzb;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzbwr zzo(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i) {
        zzbwr zzbwpVar;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(15, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i2 = zzbwq.f4955c;
        if (readStrongBinder == null) {
            zzbwpVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.offline.IOfflineUtils");
            if (queryLocalInterface instanceof zzbwr) {
                zzbwpVar = (zzbwr) queryLocalInterface;
            } else {
                zzbwpVar = new zzbwp(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbwpVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzboq zzp(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i, zzbon zzbonVar) {
        zzboq zzbooVar;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        zzbcd.e(I1, zzbonVar);
        Parcel f2 = f2(16, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        int i2 = zzbop.f4805c;
        if (readStrongBinder == null) {
            zzbooVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.h5.client.IH5AdsManager");
            if (queryLocalInterface instanceof zzboq) {
                zzbooVar = (zzboq) queryLocalInterface;
            } else {
                zzbooVar = new zzboo(readStrongBinder);
            }
        }
        f2.recycle();
        return zzbooVar;
    }

    @Override // com.google.android.gms.ads.internal.client.zzcr
    public final zzdw zzq(IObjectWrapper iObjectWrapper, zzbsz zzbszVar, int i) {
        zzdw zzduVar;
        Parcel I1 = I1();
        zzbcd.e(I1, iObjectWrapper);
        zzbcd.e(I1, zzbszVar);
        I1.writeInt(ModuleDescriptor.MODULE_VERSION);
        Parcel f2 = f2(17, I1);
        IBinder readStrongBinder = f2.readStrongBinder();
        if (readStrongBinder == null) {
            zzduVar = null;
        } else {
            IInterface queryLocalInterface = readStrongBinder.queryLocalInterface("com.google.android.gms.ads.internal.client.IOutOfContextTester");
            if (queryLocalInterface instanceof zzdw) {
                zzduVar = (zzdw) queryLocalInterface;
            } else {
                zzduVar = new zzdu(readStrongBinder);
            }
        }
        f2.recycle();
        return zzduVar;
    }
}
