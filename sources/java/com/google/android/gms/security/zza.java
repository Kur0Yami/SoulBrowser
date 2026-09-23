package com.google.android.gms.security;

import android.content.Context;
import android.os.AsyncTask;
import com.google.android.gms.common.GoogleApiAvailabilityLight;
import com.google.android.gms.common.GooglePlayServicesNotAvailableException;
import com.google.android.gms.common.GooglePlayServicesRepairableException;
import com.google.android.gms.security.ProviderInstaller;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public final class zza extends AsyncTask {

    /* renamed from: a, reason: collision with root package name */
    public final /* synthetic */ Context f11595a;
    public final /* synthetic */ ProviderInstaller.ProviderInstallListener b;

    public zza(Context context, ProviderInstaller.ProviderInstallListener providerInstallListener) {
        this.f11595a = context;
        this.b = providerInstallListener;
    }

    @Override // android.os.AsyncTask
    public final /* bridge */ /* synthetic */ Object doInBackground(Object[] objArr) {
        try {
            ProviderInstaller.a(this.f11595a);
            return 0;
        } catch (GooglePlayServicesNotAvailableException e) {
            return Integer.valueOf(e.errorCode);
        } catch (GooglePlayServicesRepairableException e2) {
            return Integer.valueOf(e2.getConnectionStatusCode());
        }
    }

    @Override // android.os.AsyncTask
    public final /* synthetic */ void onPostExecute(Object obj) {
        Integer num = (Integer) obj;
        if (num.intValue() == 0) {
            return;
        }
        GoogleApiAvailabilityLight googleApiAvailabilityLight = ProviderInstaller.f11593a;
        ProviderInstaller.f11593a.getErrorResolutionIntent(this.f11595a, num.intValue(), "pi");
    }
}
