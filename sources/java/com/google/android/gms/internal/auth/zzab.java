package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.internal.RemoteCall;
import com.google.android.gms.common.api.internal.TaskApiCall;
import com.google.android.gms.common.api.internal.TaskUtil;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.logging.Logger;
import com.google.android.gms.tasks.Task;
import com.google.android.gms.tasks.TaskCompletionSource;

/* loaded from: classes.dex */
final class zzab extends GoogleApi implements zzg {

    /* renamed from: a, reason: collision with root package name */
    public static final Api f9478a = new Api("GoogleAuthService.API", new Api.AbstractClientBuilder(), new Api.ClientKey());
    public static final Logger b = new Logger("Auth", "GoogleAuthServiceClient");

    public static /* bridge */ /* synthetic */ void g(Status status, Parcelable parcelable, TaskCompletionSource taskCompletionSource) {
        if (!TaskUtil.trySetResultOrApiException(status, parcelable, taskCompletionSource)) {
            b.w("The task is already complete.", new Object[0]);
        }
    }

    @Override // com.google.android.gms.internal.auth.zzg
    public final Task c(final Account account, final String str, final Bundle bundle) {
        Preconditions.checkNotNull(account, "Account name cannot be null!");
        Preconditions.checkNotEmpty(str, "Scope cannot be null!");
        return doWrite(TaskApiCall.builder().setFeatures(com.google.android.gms.auth.zze.f3417c).run(new RemoteCall(this) { // from class: com.google.android.gms.internal.auth.zzs
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzp zzpVar = (zzp) ((zzi) obj).getService();
                zzw zzwVar = new zzw((TaskCompletionSource) obj2);
                Parcel I1 = zzpVar.I1();
                zzc.d(I1, zzwVar);
                zzc.c(I1, account);
                I1.writeString(str);
                zzc.c(I1, bundle);
                zzpVar.r2(1, I1);
            }
        }).setMethodKey(1512).build());
    }

    @Override // com.google.android.gms.internal.auth.zzg
    public final Task f(final zzbw zzbwVar) {
        return doWrite(TaskApiCall.builder().setFeatures(com.google.android.gms.auth.zze.f3417c).run(new RemoteCall(this) { // from class: com.google.android.gms.internal.auth.zzt
            /* JADX WARN: Multi-variable type inference failed */
            @Override // com.google.android.gms.common.api.internal.RemoteCall
            public final void accept(Object obj, Object obj2) {
                zzp zzpVar = (zzp) ((zzi) obj).getService();
                zzx zzxVar = new zzx((TaskCompletionSource) obj2);
                Parcel I1 = zzpVar.I1();
                zzc.d(I1, zzxVar);
                zzc.c(I1, zzbwVar);
                zzpVar.r2(2, I1);
            }
        }).setMethodKey(1513).build());
    }
}
