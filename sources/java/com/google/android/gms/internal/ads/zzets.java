package com.google.android.gms.internal.ads;

import android.os.Build;
import android.os.ext.SdkExtensions;
import com.google.android.gms.ads.internal.util.client.VersionInfoParcel;
import kotlin.time.DurationKt;

/* loaded from: classes.dex */
public final class zzets implements zzezv {

    /* renamed from: a, reason: collision with root package name */
    public final Integer f6930a;

    public zzets(Integer num) {
        this.f6930a = num;
    }

    public static /* synthetic */ zzets b(VersionInfoParcel versionInfoParcel) {
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.tb)).booleanValue()) {
            com.google.android.gms.ads.internal.zzt.zzc();
            int i = 0;
            try {
                int i2 = Build.VERSION.SDK_INT;
                if (i2 >= 30 && SdkExtensions.getExtensionVersion(30) > 3) {
                    i = SdkExtensions.getExtensionVersion(DurationKt.NANOS_IN_MILLIS);
                } else {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.wb)).booleanValue()) {
                        if (versionInfoParcel.clientJarVersion >= ((Integer) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.vb)).intValue() && i2 >= 31 && SdkExtensions.getExtensionVersion(31) >= 9) {
                            i = SdkExtensions.getExtensionVersion(31);
                        }
                    }
                }
            } catch (Exception e) {
                com.google.android.gms.ads.internal.zzt.zzh().f("AdUtil.getAdServicesExtensionVersion", e);
            }
            return new zzets(Integer.valueOf(i));
        }
        return new zzets(null);
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* synthetic */ void a(Object obj) {
    }

    @Override // com.google.android.gms.internal.ads.zzezv
    public final /* bridge */ /* synthetic */ void zza(Object obj) {
        zzczm zzczmVar = (zzczm) obj;
        Integer num = this.f6930a;
        if (num != null) {
            zzczmVar.f5627a.putInt("aos", num.intValue());
        }
    }
}
