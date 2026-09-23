package com.google.android.gms.ads.internal.util;

import android.content.Context;
import androidx.annotation.NonNull;
import androidx.work.Configuration;
import androidx.work.Constraints;
import androidx.work.Data;
import androidx.work.NetworkType;
import androidx.work.OneTimeWorkRequest;
import androidx.work.impl.WorkManagerImpl;
import androidx.work.impl.model.WorkSpec;
import androidx.work.impl.utils.CancelWorkRunnable;
import com.google.android.apps.common.proguard.UsedByReflection;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.ads.internal.offline.buffering.OfflineNotificationPoster;
import com.google.android.gms.ads.internal.offline.buffering.OfflinePingSender;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.dynamic.ObjectWrapper;
import java.util.Collections;

@KeepForSdk
/* loaded from: classes.dex */
public class WorkManagerUtil extends zzbn {
    @UsedByReflection("This class must be instantiated reflectively so that the default class loader can be used.")
    public WorkManagerUtil() {
    }

    @Override // com.google.android.gms.ads.internal.util.zzbo
    public final boolean zze(@NonNull IObjectWrapper iObjectWrapper, @NonNull String str, @NonNull String str2) {
        return zzg(iObjectWrapper, new com.google.android.gms.ads.internal.offline.buffering.zza(str, str2, RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED));
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.work.Configuration$Builder, java.lang.Object] */
    @Override // com.google.android.gms.ads.internal.util.zzbo
    public final void zzf(@NonNull IObjectWrapper iObjectWrapper) {
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        try {
            WorkManagerImpl.d(context.getApplicationContext(), new Configuration(new Object()));
        } catch (IllegalStateException unused) {
        }
        try {
            WorkManagerImpl c2 = WorkManagerImpl.c(context);
            c2.getClass();
            c2.d.b(CancelWorkRunnable.c(c2));
            Constraints.Builder builder = new Constraints.Builder();
            builder.f1830a = NetworkType.f;
            Constraints a2 = builder.a();
            OneTimeWorkRequest.Builder builder2 = new OneTimeWorkRequest.Builder(OfflinePingSender.class);
            builder2.b.j = a2;
            builder2.f1854c.add("offline_ping_sender_work");
            c2.a(Collections.singletonList((OneTimeWorkRequest) builder2.a()));
        } catch (IllegalStateException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to instantiate WorkManager.", e);
        }
    }

    /* JADX WARN: Type inference failed for: r1v3, types: [androidx.work.Configuration$Builder, java.lang.Object] */
    @Override // com.google.android.gms.ads.internal.util.zzbo
    public final boolean zzg(IObjectWrapper iObjectWrapper, com.google.android.gms.ads.internal.offline.buffering.zza zzaVar) {
        Context context = (Context) ObjectWrapper.f2(iObjectWrapper);
        try {
            WorkManagerImpl.d(context.getApplicationContext(), new Configuration(new Object()));
        } catch (IllegalStateException unused) {
        }
        Constraints.Builder builder = new Constraints.Builder();
        builder.f1830a = NetworkType.f;
        Constraints a2 = builder.a();
        Data.Builder builder2 = new Data.Builder();
        builder2.f1835a.put("uri", zzaVar.zza);
        builder2.f1835a.put("gws_query_id", zzaVar.zzb);
        builder2.f1835a.put("image_url", zzaVar.zzc);
        Data a3 = builder2.a();
        OneTimeWorkRequest.Builder builder3 = new OneTimeWorkRequest.Builder(OfflineNotificationPoster.class);
        WorkSpec workSpec = builder3.b;
        workSpec.j = a2;
        workSpec.e = a3;
        builder3.f1854c.add("offline_notification_work");
        OneTimeWorkRequest oneTimeWorkRequest = (OneTimeWorkRequest) builder3.a();
        try {
            WorkManagerImpl c2 = WorkManagerImpl.c(context);
            c2.getClass();
            c2.a(Collections.singletonList(oneTimeWorkRequest));
            return true;
        } catch (IllegalStateException e) {
            com.google.android.gms.ads.internal.util.client.zzo.zzj("Failed to instantiate WorkManager.", e);
            return false;
        }
    }
}
