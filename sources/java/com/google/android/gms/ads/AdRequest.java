package com.google.android.gms.ads;

import android.content.Context;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.ads.internal.client.zzek;
import com.google.android.gms.ads.mediation.MediationExtrasReceiver;
import com.google.android.gms.ads.mediation.customevent.CustomEvent;
import java.util.List;
import java.util.Set;

/* loaded from: classes.dex */
public class AdRequest {

    @NonNull
    public static final String DEVICE_ID_EMULATOR = "B3EEABB8EE11C2BE770B684D95219ECB";
    public static final int ERROR_CODE_APP_ID_MISSING = 8;
    public static final int ERROR_CODE_INTERNAL_ERROR = 0;
    public static final int ERROR_CODE_INVALID_AD_STRING = 11;
    public static final int ERROR_CODE_INVALID_REQUEST = 1;
    public static final int ERROR_CODE_MEDIATION_NO_FILL = 9;
    public static final int ERROR_CODE_NETWORK_ERROR = 2;
    public static final int ERROR_CODE_NO_FILL = 3;
    public static final int ERROR_CODE_REQUEST_ID_MISMATCH = 10;
    public static final int MAX_CONTENT_URL_LENGTH = 512;

    /* renamed from: a, reason: collision with root package name */
    public final zzek f2935a;

    /* loaded from: classes.dex */
    public static class Builder extends AbstractAdRequestBuilder<Builder> {
        @NonNull
        public AdRequest build() {
            return new AdRequest(this);
        }

        @Override // com.google.android.gms.ads.AbstractAdRequestBuilder
        @NonNull
        public Builder self() {
            return this;
        }
    }

    public AdRequest(AbstractAdRequestBuilder abstractAdRequestBuilder) {
        this.f2935a = new zzek(abstractAdRequestBuilder.f2927a, null);
    }

    @Nullable
    public String getAdString() {
        return this.f2935a.zzn();
    }

    @NonNull
    public String getContentUrl() {
        return this.f2935a.zza();
    }

    @Nullable
    @Deprecated
    public <T extends CustomEvent> Bundle getCustomEventExtrasBundle(@NonNull Class<T> cls) {
        return this.f2935a.zze(cls);
    }

    @NonNull
    public Bundle getCustomTargeting() {
        return this.f2935a.zzk();
    }

    @NonNull
    public Set<String> getKeywords() {
        return this.f2935a.zzc();
    }

    @NonNull
    public List<String> getNeighboringContentUrls() {
        return this.f2935a.zzb();
    }

    @Nullable
    public <T extends MediationExtrasReceiver> Bundle getNetworkExtrasBundle(@NonNull Class<T> cls) {
        return this.f2935a.zzd(cls);
    }

    public long getPlacementId() {
        return this.f2935a.zzr();
    }

    @NonNull
    public String getRequestAgent() {
        return this.f2935a.zzg();
    }

    public boolean isTestDevice(@NonNull Context context) {
        return this.f2935a.zzh(context);
    }

    public final zzek zza() {
        return this.f2935a;
    }
}
