package com.google.android.gms.internal.consent_sdk;

import android.app.Activity;
import android.app.Application;
import com.google.android.ump.ConsentDebugSettings;
import com.google.android.ump.ConsentRequestParameters;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zzn {

    /* renamed from: a, reason: collision with root package name */
    public final Application f10052a;
    public final zzaq b;

    public zzn(Application application, zzaq zzaqVar) {
        this.f10052a = application;
        this.b = zzaqVar;
    }

    public final zzcl a(Activity activity, ConsentRequestParameters consentRequestParameters) {
        ConsentDebugSettings.Builder builder = new ConsentDebugSettings.Builder(this.f10052a);
        boolean z = true;
        if (!zzdb.a()) {
            if (!builder.f12065a.contains(zzct.a(builder.b))) {
                z = false;
            }
        }
        return zzp.a(new zzp(this, activity, new ConsentDebugSettings(z, builder), consentRequestParameters));
    }
}
