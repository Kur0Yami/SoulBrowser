package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.preference.PreferenceManager;
import j$.util.Objects;

/* loaded from: classes.dex */
public final class zzcbl implements SharedPreferences.OnSharedPreferenceChangeListener {

    /* renamed from: a, reason: collision with root package name */
    public final Context f5016a;
    public final SharedPreferences b;

    /* renamed from: c, reason: collision with root package name */
    public final com.google.android.gms.ads.internal.util.zzg f5017c;
    public String d = "-1";
    public int e = -1;

    public zzcbl(Context context, com.google.android.gms.ads.internal.util.zzg zzgVar) {
        this.b = PreferenceManager.getDefaultSharedPreferences(context);
        this.f5017c = zzgVar;
        this.f5016a = context;
    }

    public final void a(int i, String str) {
        Context context;
        boolean z = true;
        if (!((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.d1)).booleanValue() ? !(str.isEmpty() || str.charAt(0) != '1') : !(i == 0 || str.isEmpty() || (str.charAt(0) != '1' && !str.equals("-1")))) {
            z = false;
        }
        this.f5017c.zzw(z);
        if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.a7)).booleanValue() && z && (context = this.f5016a) != null) {
            context.deleteDatabase("OfflineUpload.db");
        }
    }

    @Override // android.content.SharedPreferences.OnSharedPreferenceChangeListener
    public final void onSharedPreferenceChanged(SharedPreferences sharedPreferences, String str) {
        try {
            if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.f1)).booleanValue()) {
                boolean equals = Objects.equals(str, "gad_has_consent_for_cookies");
                Context context = this.f5016a;
                com.google.android.gms.ads.internal.util.zzg zzgVar = this.f5017c;
                if (equals) {
                    int i = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
                    if (i != zzgVar.zzD()) {
                        zzgVar.zzw(true);
                        com.google.android.gms.ads.internal.util.zzac.zza(context);
                    }
                    zzgVar.zzC(i);
                    return;
                }
                if (Objects.equals(str, "IABTCF_TCString")) {
                    String string = sharedPreferences.getString(str, "-1");
                    if (!Objects.equals(string, zzgVar.zzB())) {
                        zzgVar.zzw(true);
                        com.google.android.gms.ads.internal.util.zzac.zza(context);
                    }
                    zzgVar.zzA(string);
                    return;
                }
                return;
            }
            String string2 = sharedPreferences.getString("IABTCF_PurposeConsents", "-1");
            int i2 = sharedPreferences.getInt("gad_has_consent_for_cookies", -1);
            String valueOf = String.valueOf(str);
            int hashCode = valueOf.hashCode();
            if (hashCode != -2004976699) {
                if (hashCode == -527267622 && valueOf.equals("gad_has_consent_for_cookies")) {
                    if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.d1)).booleanValue() && i2 != -1 && this.e != i2) {
                        this.e = i2;
                        a(i2, string2);
                        return;
                    }
                    return;
                }
                return;
            }
            if (valueOf.equals("IABTCF_PurposeConsents") && !string2.equals("-1") && !this.d.equals(string2)) {
                this.d = string2;
                a(i2, string2);
            }
        } catch (Throwable th) {
            com.google.android.gms.ads.internal.zzt.zzh().f("AdMobPlusIdlessListener.onSharedPreferenceChanged", th);
            com.google.android.gms.ads.internal.util.zze.zzb("onSharedPreferenceChanged, errorMessage = ", th);
        }
    }
}
