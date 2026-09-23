package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.support.v4.media.a;
import android.util.Log;
import com.google.android.ump.ConsentForm;
import com.google.android.ump.ConsentInformation;
import com.google.android.ump.ConsentRequestParameters;
import com.google.android.ump.UserMessagingPlatform;
import j$.util.Objects;
import java.util.Queue;
import java.util.concurrent.atomic.AtomicReference;

/* loaded from: classes.dex */
public final class zzj implements ConsentInformation {

    /* renamed from: a, reason: collision with root package name */
    public final zzaq f10026a;
    public final zzw b;

    /* renamed from: c, reason: collision with root package name */
    public final zzbq f10027c;
    public final zzcr f;
    public final Object d = new Object();
    public final Object e = new Object();
    public boolean g = false;

    public zzj(zzaq zzaqVar, zzw zzwVar, zzbq zzbqVar, zzcr zzcrVar) {
        this.f10026a = zzaqVar;
        this.b = zzwVar;
        this.f10027c = zzbqVar;
        this.f = zzcrVar;
    }

    public final boolean a() {
        boolean z;
        int i;
        zzaq zzaqVar = this.f10026a;
        if (!zzaqVar.b.getBoolean("is_pub_misconfigured", false)) {
            synchronized (this.d) {
                z = this.g;
            }
            if (!z) {
                i = 0;
            } else {
                i = zzaqVar.b.getInt("consent_status", 0);
            }
            if (i != 1 && i != 3) {
                return false;
            }
        }
        return true;
    }

    public final void b(final Activity activity, final ConsentRequestParameters consentRequestParameters, final ConsentInformation.OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener, final ConsentInformation.OnConsentInfoUpdateFailureListener onConsentInfoUpdateFailureListener) {
        synchronized (this.d) {
            this.g = true;
        }
        ((Queue) this.f.f.get()).add(Long.valueOf(System.currentTimeMillis()));
        final zzw zzwVar = this.b;
        zzwVar.getClass();
        zzwVar.f10129c.execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzv
            @Override // java.lang.Runnable
            public final void run() {
                final zzw zzwVar2 = zzw.this;
                Activity activity2 = activity;
                ConsentRequestParameters consentRequestParameters2 = consentRequestParameters;
                final ConsentInformation.OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener2 = onConsentInfoUpdateSuccessListener;
                final ConsentInformation.OnConsentInfoUpdateFailureListener onConsentInfoUpdateFailureListener2 = onConsentInfoUpdateFailureListener;
                try {
                    Log.i("UserMessagingPlatform", "Use new ConsentDebugSettings.Builder().addTestDeviceHashedId(\"" + zzct.a(zzwVar2.f10128a) + "\") to set this as a debug device.");
                    final zzab a2 = zzwVar2.g.a(zzwVar2.a(zzwVar2.f.a(activity2, consentRequestParameters2)));
                    zzaq zzaqVar = zzwVar2.d;
                    zzaqVar.b.edit().putInt("consent_status", a2.f9922a).commit();
                    zzaqVar.b.edit().putString("privacy_options_requirement_status", a2.b.name()).commit();
                    zzwVar2.e.f9955c.set(a2.f9923c);
                    zzcr zzcrVar = zzwVar2.i;
                    zzcrVar.a((Queue) zzcrVar.f.get(), 8, 9, null);
                    zzwVar2.h.f10009a.execute(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzu
                        @Override // java.lang.Runnable
                        public final void run() {
                            final ConsentInformation.OnConsentInfoUpdateSuccessListener onConsentInfoUpdateSuccessListener3 = onConsentInfoUpdateSuccessListener2;
                            Runnable runnable = new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzt
                                @Override // java.lang.Runnable
                                public final void run() {
                                    ConsentInformation.OnConsentInfoUpdateSuccessListener.this.a();
                                }
                            };
                            zzw zzwVar3 = zzw.this;
                            zzwVar3.b.post(runnable);
                            if (a2.b != ConsentInformation.PrivacyOptionsRequirementStatus.f) {
                                final zzbq zzbqVar = zzwVar3.e;
                                zzbs zzbsVar = (zzbs) zzbqVar.f9955c.get();
                                if (zzbsVar == null) {
                                    Log.e("UserMessagingPlatform", "Failed to load and cache a form due to null consent form resources.");
                                    return;
                                }
                                final zzbe zza = ((zzak) ((zzaj) ((zzay) ((zzag) zzbqVar.f9954a).zzb()).a(zzbsVar)).zzb()).zza();
                                zza.m = true;
                                zzcz.f10001a.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzbg
                                    /* JADX WARN: Multi-variable type inference failed */
                                    /* JADX WARN: Type inference failed for: r0v2, types: [java.lang.Object, com.google.android.ump.UserMessagingPlatform$OnConsentFormLoadFailureListener] */
                                    @Override // java.lang.Runnable
                                    public final void run() {
                                        final AtomicReference atomicReference = zzbq.this.d;
                                        Objects.requireNonNull(atomicReference);
                                        zza.b(new UserMessagingPlatform.OnConsentFormLoadSuccessListener() { // from class: com.google.android.gms.internal.consent_sdk.zzbh
                                            @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadSuccessListener
                                            public final void b(ConsentForm consentForm) {
                                                atomicReference.set(consentForm);
                                            }
                                        }, new Object());
                                    }
                                });
                            }
                        }
                    });
                } catch (zzg e) {
                    zzcr zzcrVar2 = zzwVar2.i;
                    zzcrVar2.a((Queue) zzcrVar2.f.get(), 8, 9, a.m("RequestConsentUpdate exception. Error: ", e.getMessage(), ", cause: ", String.valueOf(e.getCause())));
                    zzwVar2.b.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzr
                        @Override // java.lang.Runnable
                        public final void run() {
                            e.a();
                            ConsentInformation.OnConsentInfoUpdateFailureListener.this.a();
                        }
                    });
                } catch (RuntimeException e2) {
                    zzcr zzcrVar3 = zzwVar2.i;
                    zzcrVar3.a((Queue) zzcrVar3.f.get(), 8, 9, "RequestConsentUpdate RuntimeException. ".concat(String.valueOf(e2.getMessage())));
                    final zzg zzgVar = new zzg(1, "Caught exception when trying to request consent info update: ".concat(String.valueOf(Log.getStackTraceString(e2))));
                    zzwVar2.b.post(new Runnable() { // from class: com.google.android.gms.internal.consent_sdk.zzs
                        @Override // java.lang.Runnable
                        public final void run() {
                            zzgVar.a();
                            ConsentInformation.OnConsentInfoUpdateFailureListener.this.a();
                        }
                    });
                }
            }
        });
    }
}
