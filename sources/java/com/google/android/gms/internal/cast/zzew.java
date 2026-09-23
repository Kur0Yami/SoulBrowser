package com.google.android.gms.internal.cast;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.RemoteException;
import com.google.android.gms.cast.internal.Logger;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.internal.GmsClient;

@Deprecated
/* loaded from: classes.dex */
public final class zzew extends GmsClient implements IBinder.DeathRecipient {

    /* renamed from: c, reason: collision with root package name */
    public static final Logger f9689c = new Logger("CastRemoteDisplayClientImpl", null);

    @Override // android.os.IBinder.DeathRecipient
    public final void binderDied() {
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final /* synthetic */ IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.remote_display.ICastRemoteDisplayService");
        if (queryLocalInterface instanceof zzez) {
            return (zzez) queryLocalInterface;
        }
        return new zzez(iBinder);
    }

    /* JADX WARN: Multi-variable type inference failed */
    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        f9689c.b("disconnect", new Object[0]);
        try {
            zzez zzezVar = (zzez) getService();
            ApiMetadata a2 = zzff.a(getContext());
            Parcel I1 = zzezVar.I1();
            zzc.b(I1, a2);
            zzezVar.v2(3, I1);
        } catch (RemoteException | IllegalStateException unused) {
        } catch (Throwable th) {
            super.disconnect();
            throw th;
        }
        super.disconnect();
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.cast.remote_display.ICastRemoteDisplayService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.cast.remote_display.service.START";
    }
}
