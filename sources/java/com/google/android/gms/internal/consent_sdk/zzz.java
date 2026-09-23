package com.google.android.gms.internal.consent_sdk;

import com.google.android.ump.ConsentInformation;
import java.util.HashSet;

/* loaded from: classes.dex */
final class zzz {

    /* renamed from: a, reason: collision with root package name */
    public final zze f10133a;
    public final zzao b;

    /* renamed from: c, reason: collision with root package name */
    public final zzaq f10134c;
    public final zzcr d;

    public zzz(zze zzeVar, zzao zzaoVar, zzaq zzaqVar, zzcr zzcrVar) {
        this.f10133a = zzeVar;
        this.b = zzaoVar;
        this.f10134c = zzaqVar;
        this.d = zzcrVar;
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.consent_sdk.zzy, java.lang.Object] */
    public final zzab a(zzcn zzcnVar) {
        boolean z;
        zzbs zzbsVar;
        String str;
        ?? obj = new Object();
        obj.f10132a = 0;
        obj.b = ConsentInformation.PrivacyOptionsRequirementStatus.f12066c;
        int i = zzcnVar.g;
        if (i == 8) {
            z = true;
        } else {
            z = false;
        }
        zzaq zzaqVar = this.f10134c;
        zzaqVar.b.edit().putBoolean("is_pub_misconfigured", z).commit();
        int i2 = i - 1;
        if (i != 0) {
            switch (i2) {
                case 1:
                case 2:
                case 3:
                    obj.f10132a = 3;
                    break;
                case 4:
                    obj.f10132a = 2;
                    break;
                case 5:
                    obj.f10132a = 1;
                    break;
                case 6:
                    throw new zzg(1, "Invalid response from server: ".concat(String.valueOf(zzcnVar.f9986c)));
                case 7:
                    throw new zzg(3, "Publisher misconfiguration: ".concat(String.valueOf(zzcnVar.f9986c)));
                default:
                    throw new zzg(1, "Invalid response from server.");
            }
            int i3 = zzcnVar.h;
            int i4 = i3 - 1;
            if (i3 != 0) {
                if (i4 != 1) {
                    if (i4 == 2) {
                        obj.b = ConsentInformation.PrivacyOptionsRequirementStatus.f;
                    } else {
                        throw new zzg(1, "Invalid response from server.");
                    }
                } else {
                    obj.b = ConsentInformation.PrivacyOptionsRequirementStatus.g;
                }
                String str2 = zzcnVar.f9985a;
                if (str2 == null) {
                    zzbsVar = null;
                } else {
                    zzbsVar = new zzbs(zzcnVar.b, str2);
                }
                this.d.f9991a.set(zzcnVar.f);
                zzaqVar.b.edit().putStringSet("stored_info", new HashSet(zzcnVar.d)).commit();
                for (zzcm zzcmVar : zzcnVar.e) {
                    int i5 = zzcmVar.b;
                    int i6 = i5 - 1;
                    if (i5 != 0) {
                        if (i6 != 0) {
                            if (i6 != 1) {
                                if (i6 == 2) {
                                    str = "clear";
                                } else {
                                    throw new RuntimeException(null, null);
                                }
                            } else {
                                str = "write";
                            }
                        } else {
                            str = null;
                        }
                        if (str != null) {
                            String str3 = zzcmVar.f9984a;
                            zzd[] zzdVarArr = {this.b};
                            zze zzeVar = this.f10133a;
                            zzeVar.getClass();
                            zzeVar.f10009a.execute(new zzc(str, str3, zzdVarArr));
                        }
                    } else {
                        throw null;
                    }
                }
                return new zzab(obj.f10132a, obj.b, zzbsVar);
            }
            throw null;
        }
        throw null;
    }
}
