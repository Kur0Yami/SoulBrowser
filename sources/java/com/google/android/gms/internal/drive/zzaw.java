package com.google.android.gms.internal.drive;

import android.content.Context;
import android.content.Intent;
import android.content.pm.ResolveInfo;
import android.content.pm.ServiceInfo;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.Process;
import android.os.RemoteException;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.GooglePlayServicesUtilLight;
import com.google.android.gms.common.api.GoogleApiClient;
import com.google.android.gms.common.internal.ClientSettings;
import com.google.android.gms.common.internal.GmsClient;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.util.UidVerifier;
import com.google.android.gms.drive.DriveId;
import java.util.HashMap;
import java.util.List;

/* loaded from: classes.dex */
public final class zzaw extends GmsClient<zzeo> {

    /* renamed from: c, reason: collision with root package name */
    public final String f10144c;
    public final Bundle f;
    public final boolean g;
    public volatile DriveId h;
    public volatile DriveId i;
    public final HashMap j;
    public final HashMap k;
    public final HashMap l;
    public final HashMap m;

    public zzaw(Context context, Bundle bundle, Looper looper, GoogleApiClient.ConnectionCallbacks connectionCallbacks, GoogleApiClient.OnConnectionFailedListener onConnectionFailedListener, ClientSettings clientSettings) {
        super(context, looper, 11, clientSettings, connectionCallbacks, onConnectionFailedListener);
        this.j = new HashMap();
        this.k = new HashMap();
        this.l = new HashMap();
        this.m = new HashMap();
        this.f10144c = clientSettings.getRealClientPackageName();
        this.f = bundle;
        Intent intent = new Intent("com.google.android.gms.drive.events.HANDLE_EVENT");
        intent.setPackage(context.getPackageName());
        List<ResolveInfo> queryIntentServices = context.getPackageManager().queryIntentServices(intent, 0);
        int size = queryIntentServices.size();
        if (size != 0) {
            if (size == 1) {
                ServiceInfo serviceInfo = queryIntentServices.get(0).serviceInfo;
                if (serviceInfo.exported) {
                    this.g = true;
                    return;
                }
                String str = serviceInfo.name;
                StringBuilder sb = new StringBuilder(a.e(60, str));
                sb.append("Drive event service ");
                sb.append(str);
                sb.append(" must be exported in AndroidManifest.xml");
                throw new IllegalStateException(sb.toString());
            }
            String action = intent.getAction();
            StringBuilder sb2 = new StringBuilder(a.e(72, action));
            sb2.append("AndroidManifest.xml can only define one service that handles the ");
            sb2.append(action);
            sb2.append(" action");
            throw new IllegalStateException(sb2.toString());
        }
        this.g = false;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final IInterface createServiceInterface(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.drive.internal.IDriveService");
        if (queryLocalInterface instanceof zzeo) {
            return (zzeo) queryLocalInterface;
        }
        return new zza(iBinder, "com.google.android.gms.drive.internal.IDriveService");
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v0, types: [com.google.android.gms.internal.drive.zzad, com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable] */
    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final void disconnect() {
        if (isConnected()) {
            try {
                ((zzeo) getService()).K3(new AbstractSafeParcelable());
            } catch (RemoteException unused) {
            }
        }
        super.disconnect();
        synchronized (this.j) {
            this.j.clear();
        }
        synchronized (this.k) {
            this.k.clear();
        }
        synchronized (this.l) {
            this.l.clear();
        }
        synchronized (this.m) {
            this.m.clear();
        }
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final Bundle getGetServiceRequestExtraArgs() {
        String packageName = getContext().getPackageName();
        Preconditions.checkNotNull(packageName);
        Preconditions.checkState(!getClientSettings().getAllRequestedScopes().isEmpty());
        Bundle bundle = new Bundle();
        String str = this.f10144c;
        if (!packageName.equals(str)) {
            bundle.putString("proxy_package_name", str);
        }
        bundle.putAll(this.f);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final int getMinApkVersion() {
        return GooglePlayServicesUtilLight.GOOGLE_PLAY_SERVICES_VERSION_CODE;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getServiceDescriptor() {
        return "com.google.android.gms.drive.internal.IDriveService";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final String getStartServiceAction() {
        return "com.google.android.gms.drive.ApiService.START";
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient
    public final void onPostInitHandler(int i, IBinder iBinder, Bundle bundle, int i2) {
        if (bundle != null) {
            bundle.setClassLoader(zzaw.class.getClassLoader());
            this.h = (DriveId) bundle.getParcelable("com.google.android.gms.drive.root_id");
            this.i = (DriveId) bundle.getParcelable("com.google.android.gms.drive.appdata_id");
        }
        super.onPostInitHandler(i, iBinder, bundle, i2);
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean requiresAccount() {
        return true;
    }

    @Override // com.google.android.gms.common.internal.BaseGmsClient, com.google.android.gms.common.api.Api.Client
    public final boolean requiresSignIn() {
        if (getContext().getPackageName().equals(this.f10144c) && UidVerifier.isGooglePlayServicesUid(getContext(), Process.myUid())) {
            return false;
        }
        return true;
    }
}
