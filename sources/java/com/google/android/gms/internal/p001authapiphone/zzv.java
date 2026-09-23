package com.google.android.gms.internal.p001authapiphone;

import com.google.android.gms.auth.api.phone.SmsCodeBrowserClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* loaded from: classes.dex */
public final class zzv extends GoogleApi implements SmsCodeBrowserClient {
    static {
        new Api("SmsCodeBrowser.API", new Api.AbstractClientBuilder(), new Api.ClientKey());
    }
}
