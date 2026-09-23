package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.auth.api.phone.SmsCodeAutofillClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* loaded from: classes.dex */
public final class zzr extends GoogleApi implements SmsCodeAutofillClient {
    static {
        new Api("SmsCodeAutofill.API", new Api.AbstractClientBuilder(), new Api.ClientKey());
    }
}
