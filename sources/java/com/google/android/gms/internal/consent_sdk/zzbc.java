package com.google.android.gms.internal.consent_sdk;

import com.google.android.ump.ConsentForm;
import com.google.android.ump.FormError;
import com.google.android.ump.UserMessagingPlatform;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzbc implements UserMessagingPlatform.OnConsentFormLoadSuccessListener, UserMessagingPlatform.OnConsentFormLoadFailureListener {

    /* renamed from: a, reason: collision with root package name */
    public final UserMessagingPlatform.OnConsentFormLoadSuccessListener f9945a;
    public final UserMessagingPlatform.OnConsentFormLoadFailureListener b;

    public /* synthetic */ zzbc(UserMessagingPlatform.OnConsentFormLoadSuccessListener onConsentFormLoadSuccessListener, UserMessagingPlatform.OnConsentFormLoadFailureListener onConsentFormLoadFailureListener) {
        this.f9945a = onConsentFormLoadSuccessListener;
        this.b = onConsentFormLoadFailureListener;
    }

    @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadFailureListener
    public final void a(FormError formError) {
        this.b.a(formError);
    }

    @Override // com.google.android.ump.UserMessagingPlatform.OnConsentFormLoadSuccessListener
    public final void b(ConsentForm consentForm) {
        this.f9945a.b(consentForm);
    }
}
