package com.google.android.gms.ads;

import android.os.Bundle;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.ads.mediation.admob.AdMobAdapter;
import com.google.android.gms.ads.AbstractAdRequestBuilder;
import com.google.android.gms.ads.internal.client.zzej;
import com.google.android.gms.ads.internal.util.client.zzo;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import com.google.android.gms.common.internal.Preconditions;
import java.util.List;

/* loaded from: classes.dex */
public abstract class AbstractAdRequestBuilder<T extends AbstractAdRequestBuilder<T>> {

    /* renamed from: a, reason: collision with root package name */
    public final zzej f2927a;

    public AbstractAdRequestBuilder() {
        zzej zzejVar = new zzej();
        this.f2927a = zzejVar;
        zzejVar.zze(AdRequest.DEVICE_ID_EMULATOR);
    }

    @NonNull
    @Deprecated
    public T addCustomEventExtrasBundle(@NonNull Class<? extends CustomEvent> cls, @NonNull Bundle bundle) {
        this.f2927a.zzd(cls, bundle);
        return (T) self();
    }

    @NonNull
    public T addCustomTargeting(@NonNull String str, @NonNull String str2) {
        if (!TextUtils.isEmpty(str2) && str2.contains(",")) {
            StringBuilder sb = new StringBuilder(str2.length() + 108);
            sb.append("Value ");
            sb.append(str2);
            sb.append(" contains invalid character ',' (comma). The server will parse it as a list of comma-separated values.");
            zzo.zzi(sb.toString());
        }
        this.f2927a.zzl(str, str2);
        return (T) self();
    }

    @NonNull
    public T addKeyword(@NonNull String str) {
        this.f2927a.zza(str);
        return (T) self();
    }

    @NonNull
    public T addNetworkExtrasBundle(@NonNull Class<? extends MediationExtrasReceiver> cls, @NonNull Bundle bundle) {
        zzej zzejVar = this.f2927a;
        zzejVar.zzc(cls, bundle);
        if (cls.equals(AdMobAdapter.class) && bundle.getBoolean("_emulatorLiveAds")) {
            zzejVar.zzf(AdRequest.DEVICE_ID_EMULATOR);
        }
        return (T) self();
    }

    public abstract AbstractAdRequestBuilder self();

    @NonNull
    public T setAdString(@NonNull String str) {
        this.f2927a.zzo(str);
        return (T) self();
    }

    @NonNull
    public T setContentUrl(@NonNull String str) {
        Preconditions.checkNotNull(str, "Content URL must be non-null.");
        Preconditions.checkNotEmpty(str, "Content URL must be non-empty.");
        int length = str.length();
        boolean z = false;
        Object[] objArr = {512, Integer.valueOf(str.length())};
        if (length <= 512) {
            z = true;
        }
        Preconditions.checkArgument(z, "Content URL must not exceed %d in length.  Provided length was %d.", objArr);
        this.f2927a.zzg(str);
        return (T) self();
    }

    @NonNull
    public T setHttpTimeoutMillis(int i) {
        this.f2927a.zzp(i);
        return (T) self();
    }

    @NonNull
    public T setNeighboringContentUrls(@NonNull List<String> list) {
        if (list == null) {
            zzo.zzi("neighboring content URLs list should not be null");
            return (T) self();
        }
        this.f2927a.zzh(list);
        return (T) self();
    }

    @NonNull
    public T setPlacementId(long j) {
        this.f2927a.zzq(j);
        return (T) self();
    }

    @NonNull
    public T setRequestAgent(@NonNull String str) {
        this.f2927a.zzj(str);
        return (T) self();
    }

    @NonNull
    public final AbstractAdRequestBuilder zza(@NonNull Bundle bundle) {
        this.f2927a.zzb(bundle);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zzb(@NonNull String str) {
        this.f2927a.zze(str);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zzc(boolean z) {
        this.f2927a.zzk(z);
        return self();
    }

    @NonNull
    @Deprecated
    public final AbstractAdRequestBuilder zzd(boolean z) {
        this.f2927a.zzn(z);
        return self();
    }

    @NonNull
    public T addCustomTargeting(@NonNull String str, @NonNull List<String> list) {
        if (list != null) {
            for (String str2 : list) {
                if (!TextUtils.isEmpty(str2) && str2.contains(",")) {
                    StringBuilder sb = new StringBuilder(str2.length() + 108);
                    sb.append("Value ");
                    sb.append(str2);
                    sb.append(" contains invalid character ',' (comma). The server will parse it as a list of comma-separated values.");
                    zzo.zzi(sb.toString());
                }
            }
            this.f2927a.zzl(str, TextUtils.join(",", list));
        }
        return (T) self();
    }
}
