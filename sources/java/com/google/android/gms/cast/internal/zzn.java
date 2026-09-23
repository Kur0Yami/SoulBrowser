package com.google.android.gms.cast.internal;

import android.content.Context;
import android.os.Parcel;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.ApiMetadata;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.internal.cast.zzff;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
public final class zzn extends GoogleApi {

    /* renamed from: a, reason: collision with root package name */
    public static final Api f3625a = new Api("CastApi.API", new Api.AbstractClientBuilder(), new Api.ClientKey());

    public zzn(Context context) {
        super(context, (Api<Api.ApiOptions.NoOptions>) f3625a, Api.ApiOptions.NO_OPTIONS, GoogleApi.Settings.DEFAULT_SETTINGS);
    }

    public final Task g(final String[] strArr) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.internal.zzj
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzo zzoVar = (zzo) obj;
                zzg zzgVar = new zzg(zzn.this, (TaskCompletionSource) obj2);
                zzak zzakVar = (zzak) zzoVar.getService();
                ApiMetadata a2 = zzff.a(zzoVar.getContext());
                Parcel I1 = zzakVar.I1();
                com.google.android.gms.internal.cast.zzc.c(I1, zzgVar);
                I1.writeStringArray(strArr);
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzakVar.v2(5, I1);
            }
        }).setFeatures(com.google.android.gms.cast.zzaq.b).setAutoResolveMissingFeatures(false).setMethodKey(8425).build());
    }

    public final Task h(final String[] strArr) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.internal.zzk
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzo zzoVar = (zzo) obj;
                zzh zzhVar = new zzh(zzn.this, (TaskCompletionSource) obj2);
                zzak zzakVar = (zzak) zzoVar.getService();
                ApiMetadata a2 = zzff.a(zzoVar.getContext());
                Parcel I1 = zzakVar.I1();
                com.google.android.gms.internal.cast.zzc.c(I1, zzhVar);
                I1.writeStringArray(strArr);
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzakVar.v2(6, I1);
            }
        }).setFeatures(com.google.android.gms.cast.zzaq.f3641c).setAutoResolveMissingFeatures(false).setMethodKey(8426).build());
    }

    public final Task i(final String[] strArr) {
        return doRead(TaskApiCall.builder().run(new RemoteCall() { // from class: com.google.android.gms.cast.internal.zzl
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzo zzoVar = (zzo) obj;
                zzi zziVar = new zzi(zzn.this, (TaskCompletionSource) obj2);
                zzak zzakVar = (zzak) zzoVar.getService();
                ApiMetadata a2 = zzff.a(zzoVar.getContext());
                Parcel I1 = zzakVar.I1();
                com.google.android.gms.internal.cast.zzc.c(I1, zziVar);
                I1.writeStringArray(strArr);
                com.google.android.gms.internal.cast.zzc.b(I1, a2);
                zzakVar.v2(7, I1);
            }
        }).setFeatures(com.google.android.gms.cast.zzaq.d).setAutoResolveMissingFeatures(false).setMethodKey(8427).build());
    }
}
