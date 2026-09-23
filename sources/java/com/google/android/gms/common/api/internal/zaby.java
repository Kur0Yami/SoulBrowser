package com.google.android.gms.common.api.internal;

import android.os.SystemClock;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import androidx.annotation.WorkerThread;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.ApiException;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.internal.BaseGmsClient;
import com.google.android.gms.common.internal.ConnectionTelemetryConfiguration;
import com.google.android.gms.common.internal.MethodInvocation;
import com.google.android.gms.common.internal.RootTelemetryConfigManager;
import com.google.android.gms.common.internal.RootTelemetryConfiguration;
import com.google.android.gms.common.util.ArrayUtils;
import com.google.android.gms.tasks.OnCompleteListener;
import com.google.android.gms.tasks.Task;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class zaby implements OnCompleteListener {
    private final GoogleApiManager zaa;
    private final int zab;
    private final ApiKey zac;
    private final long zad;
    private final long zae;

    @VisibleForTesting
    public zaby(GoogleApiManager googleApiManager, int i, ApiKey apiKey, long j, long j2, @Nullable String str, @Nullable String str2) {
        this.zaa = googleApiManager;
        this.zab = i;
        this.zac = apiKey;
        this.zad = j;
        this.zae = j2;
    }

    @Nullable
    public static zaby zaa(GoogleApiManager googleApiManager, int i, ApiKey apiKey) {
        boolean z;
        long j;
        if (googleApiManager.zam()) {
            RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
            if (config != null) {
                if (config.getMethodInvocationTelemetryEnabled()) {
                    z = config.getMethodTimingTelemetryEnabled();
                    zabk zag = googleApiManager.zag(apiKey);
                    if (zag != null) {
                        if (zag.zaf() instanceof BaseGmsClient) {
                            BaseGmsClient baseGmsClient = (BaseGmsClient) zag.zaf();
                            if (baseGmsClient.hasConnectionInfo() && !baseGmsClient.isConnecting()) {
                                ConnectionTelemetryConfiguration zab = zab(zag, baseGmsClient, i);
                                if (zab != null) {
                                    zag.zas();
                                    z = zab.getMethodTimingTelemetryEnabled();
                                } else {
                                    return null;
                                }
                            }
                        } else {
                            return null;
                        }
                    }
                } else {
                    return null;
                }
            } else {
                z = true;
            }
            long j2 = 0;
            if (z) {
                j = System.currentTimeMillis();
            } else {
                j = 0;
            }
            if (z) {
                j2 = SystemClock.elapsedRealtime();
            }
            return new zaby(googleApiManager, i, apiKey, j, j2, null, null);
        }
        return null;
    }

    @Nullable
    private static ConnectionTelemetryConfiguration zab(zabk zabkVar, BaseGmsClient baseGmsClient, int i) {
        int[] methodInvocationMethodKeyAllowlist;
        int[] methodInvocationMethodKeyDisallowlist;
        ConnectionTelemetryConfiguration telemetryConfiguration = baseGmsClient.getTelemetryConfiguration();
        if (telemetryConfiguration == null || !telemetryConfiguration.getMethodInvocationTelemetryEnabled() || ((methodInvocationMethodKeyAllowlist = telemetryConfiguration.getMethodInvocationMethodKeyAllowlist()) != null ? !ArrayUtils.contains(methodInvocationMethodKeyAllowlist, i) : !((methodInvocationMethodKeyDisallowlist = telemetryConfiguration.getMethodInvocationMethodKeyDisallowlist()) == null || !ArrayUtils.contains(methodInvocationMethodKeyDisallowlist, i))) || zabkVar.zar() >= telemetryConfiguration.getMaxMethodInvocationsLogged()) {
            return null;
        }
        return telemetryConfiguration;
    }

    @Override // com.google.android.gms.tasks.OnCompleteListener
    @WorkerThread
    public final void onComplete(@NonNull Task task) {
        zabk zag;
        boolean z;
        long j;
        int i;
        int i2;
        int i3;
        int i4;
        int i5;
        int i6;
        long j2;
        long j3;
        int i7;
        GoogleApiManager googleApiManager = this.zaa;
        if (googleApiManager.zam()) {
            RootTelemetryConfiguration config = RootTelemetryConfigManager.getInstance().getConfig();
            if ((config == null || config.getMethodInvocationTelemetryEnabled()) && (zag = googleApiManager.zag(this.zac)) != null && (zag.zaf() instanceof BaseGmsClient)) {
                BaseGmsClient baseGmsClient = (BaseGmsClient) zag.zaf();
                long j4 = this.zad;
                boolean z2 = true;
                if (j4 > 0) {
                    z = true;
                } else {
                    z = false;
                }
                int gCoreServiceId = baseGmsClient.getGCoreServiceId();
                if (config != null) {
                    z &= config.getMethodTimingTelemetryEnabled();
                    int batchPeriodMillis = config.getBatchPeriodMillis();
                    int maxMethodInvocationsInBatch = config.getMaxMethodInvocationsInBatch();
                    int version = config.getVersion();
                    if (baseGmsClient.hasConnectionInfo() && !baseGmsClient.isConnecting()) {
                        ConnectionTelemetryConfiguration zab = zab(zag, baseGmsClient, this.zab);
                        if (zab != null) {
                            if (!zab.getMethodTimingTelemetryEnabled() || j4 <= 0) {
                                z2 = false;
                            }
                            maxMethodInvocationsInBatch = zab.getMaxMethodInvocationsLogged();
                            i = version;
                            j = j4;
                            z = z2;
                        } else {
                            return;
                        }
                    } else {
                        i = version;
                        j = j4;
                    }
                    i3 = batchPeriodMillis;
                    i2 = maxMethodInvocationsInBatch;
                } else {
                    j = j4;
                    i = 0;
                    i2 = 100;
                    i3 = 5000;
                }
                if (task.p()) {
                    i6 = 0;
                    i5 = 0;
                } else if (task.n()) {
                    i5 = -1;
                    i6 = 100;
                } else {
                    Exception l = task.l();
                    if (l instanceof ApiException) {
                        Status status = ((ApiException) l).getStatus();
                        i4 = status.getStatusCode();
                        ConnectionResult connectionResult = status.getConnectionResult();
                        if (connectionResult != null) {
                            i5 = connectionResult.getErrorCode();
                            i6 = i4;
                        }
                    } else {
                        i4 = 101;
                    }
                    i5 = -1;
                    i6 = i4;
                }
                if (z) {
                    long j5 = this.zae;
                    long currentTimeMillis = System.currentTimeMillis();
                    j2 = j;
                    i7 = (int) (SystemClock.elapsedRealtime() - j5);
                    j3 = currentTimeMillis;
                } else {
                    j2 = 0;
                    j3 = 0;
                    i7 = -1;
                }
                googleApiManager.zar(new MethodInvocation(this.zab, i6, i5, j2, j3, null, null, gCoreServiceId, i7), i, i3, i2);
            }
        }
    }
}
