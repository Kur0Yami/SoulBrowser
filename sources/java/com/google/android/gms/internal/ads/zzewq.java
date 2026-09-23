package com.google.android.gms.internal.ads;

import android.content.Context;
import android.content.SharedPreferences;
import android.os.Bundle;
import android.preference.PreferenceManager;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.common.util.concurrent.ListenableFuture;
import java.util.concurrent.Callable;

/* loaded from: classes.dex */
public final class zzewq implements zzezx {

    /* renamed from: a, reason: collision with root package name */
    public final Context f7031a;
    public final zzgyw b;

    public zzewq(Context context, zzgyw zzgywVar) {
        this.f7031a = context;
        this.b = zzgywVar;
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final ListenableFuture zza() {
        return this.b.v0(new Callable() { // from class: com.google.android.gms.internal.ads.zzewp
            @Override // java.util.concurrent.Callable
            public final /* synthetic */ Object call() {
                String string;
                Context context = zzewq.this.f7031a;
                com.google.android.gms.ads.internal.zzt.zzc();
                boolean booleanValue = ((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.T6)).booleanValue();
                String str = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                if (!booleanValue) {
                    string = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
                } else {
                    string = context.getSharedPreferences("mobileads_consent", 0).getString("consent_string", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                }
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.V6)).booleanValue()) {
                    str = context.getSharedPreferences("mobileads_consent", 0).getString("fc_consent", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED);
                }
                com.google.android.gms.ads.internal.zzt.zzc();
                Bundle bundle = null;
                if (((Boolean) com.google.android.gms.ads.internal.client.zzbd.zzc().a(zzbgk.U6)).booleanValue()) {
                    SharedPreferences defaultSharedPreferences = PreferenceManager.getDefaultSharedPreferences(context);
                    Bundle bundle2 = new Bundle();
                    if (defaultSharedPreferences.contains("IABConsent_CMPPresent")) {
                        bundle2.putBoolean("IABConsent_CMPPresent", defaultSharedPreferences.getBoolean("IABConsent_CMPPresent", false));
                    }
                    String[] strArr = {"IABConsent_SubjectToGDPR", "IABConsent_ConsentString", "IABConsent_ParsedPurposeConsents", "IABConsent_ParsedVendorConsents"};
                    for (int i = 0; i < 4; i++) {
                        String str2 = strArr[i];
                        if (defaultSharedPreferences.contains(str2)) {
                            bundle2.putString(str2, defaultSharedPreferences.getString(str2, null));
                        }
                    }
                    bundle = bundle2;
                }
                return new zzewo(string, bundle, str);
            }
        });
    }

    @Override // com.google.android.gms.internal.ads.zzezx
    public final int zzb() {
        return 18;
    }
}
