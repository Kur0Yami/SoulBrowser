package com.google.android.gms.internal.ads;

import android.content.Context;
import android.os.Parcel;
import android.text.TextUtils;
import com.google.android.gms.dynamic.IObjectWrapper;
import java.util.regex.Pattern;
import org.json.JSONObject;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static void a(zzbqk zzbqkVar, String str, String str2) {
        zzbqkVar.zza(android.support.v4.media.a.r(new StringBuilder(androidx.work.impl.workers.a.d(1, String.valueOf(str2).length(), str) + 2), str, "(", str2, ");"));
    }

    public static void b(zzbqk zzbqkVar, String str, JSONObject jSONObject) {
        StringBuilder u = androidx.work.impl.workers.a.u("(window.AFMA_ReceiveMessage || function() {})('", str, "',", jSONObject.toString(), ");");
        String sb = u.toString();
        int i = com.google.android.gms.ads.internal.util.zze.zza;
        com.google.android.gms.ads.internal.util.client.zzo.zzd("Dispatching AFMA event: ".concat(sb));
        zzbqkVar.zza(u.toString());
    }

    public static int c(int i, int i2, int i3) {
        int i4 = i / i2;
        return i4 + i4 + i3;
    }

    public static int d(int i, int i2, int i3, int i4) {
        return ((i * i2) / i3) + i4;
    }

    public static int e(int i, int i2, int i3, int i4, int i5) {
        return Math.max(((i * i2) / i3) + i4, i5);
    }

    public static /* synthetic */ int f(long j) {
        int i = (int) j;
        if (j == i) {
            return i;
        }
        throw new ArithmeticException();
    }

    public static IObjectWrapper g(Parcel parcel, Parcel parcel2) {
        IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
        zzbcd.f(parcel2);
        return I1;
    }

    public static void h(String str, String str2, String str3) {
        zzee.c(str3, str2.concat(String.valueOf(str)));
    }

    public static void i(StringBuilder sb, String str, int i, String str2) {
        sb.append(str);
        sb.append(i);
        zzee.c(str2, sb.toString());
    }

    public static void j(StringBuilder sb, String str, long j, String str2) {
        sb.append(str);
        sb.append(j);
        sb.append(str2);
    }

    public static int k(int i, int i2, int i3) {
        return zzhzw.b(i) + i2 + i3;
    }

    public static int l(int i, int i2, int i3, int i4) {
        return ((i + i2) - i3) + i4;
    }

    public static int m(int i, int i2, int i3, int i4) {
        return zzhzw.b(i) + i2 + i3 + i4;
    }

    public static boolean n(int i, boolean z) {
        int i2 = i & 7;
        if (i2 != 4) {
            if (!z || i2 != 3) {
                return false;
            }
            return true;
        }
        return true;
    }

    /* JADX WARN: Type inference failed for: r2v1, types: [java.lang.Object, com.google.android.gms.internal.ads.zzfne] */
    public static zzfne o(Context context, int i) {
        boolean booleanValue;
        if (zzfnr.a()) {
            int i2 = i - 2;
            if (i2 != 20 && i2 != 21) {
                if (i2 != 110) {
                    switch (i2) {
                        case 2:
                        case 3:
                        case 6:
                        case 7:
                        case 8:
                            booleanValue = ((Boolean) zzbid.f4704c.c()).booleanValue();
                            break;
                        case 4:
                        case 9:
                        case 10:
                        case 11:
                        case 12:
                        case 13:
                            booleanValue = ((Boolean) zzbid.d.c()).booleanValue();
                            break;
                        case 5:
                            booleanValue = ((Boolean) zzbid.b.c()).booleanValue();
                            break;
                    }
                } else {
                    booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.ha)).booleanValue();
                }
            } else {
                booleanValue = ((Boolean) zzbid.e.c()).booleanValue();
            }
            if (booleanValue) {
                return new zzfng(context, i);
            }
        }
        return new Object();
    }

    public static zzfne p(Context context, int i, int i2, com.google.android.gms.ads.internal.client.zzm zzmVar) {
        boolean matches;
        zzfne o = o(context, i);
        if (o instanceof zzfng) {
            zzfng zzfngVar = (zzfng) o;
            zzfngVar.f();
            zzfngVar.d(i2);
            zzfngVar.c(com.google.android.gms.ads.nonagon.signalgeneration.zzaa.zzd(zzmVar.zzm));
            String str = zzmVar.zzp;
            if (TextUtils.isEmpty(str)) {
                matches = false;
            } else {
                matches = Pattern.matches((String) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.Z9), str);
            }
            if (matches) {
                zzfngVar.zze(str);
            }
        }
        return o;
    }
}
