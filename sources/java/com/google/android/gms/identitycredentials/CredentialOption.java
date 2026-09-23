package com.google.android.gms.identitycredentials;

import android.os.Bundle;
import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/android/gms/identitycredentials/CredentialOption;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SafeParcelable.Class(creator = "CredentialOptionCreator")
/* loaded from: classes.dex */
public final class CredentialOption extends AbstractSafeParcelable {

    @JvmField
    @NotNull
    public static final Parcelable.Creator<CredentialOption> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f3831c;
    public final Bundle f;
    public final Bundle g;
    public final String h;
    public final String i;
    public final String j;

    @Metadata(d1 = {"\u0000\u0014\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005¨\u0006\u0006"}, d2 = {"Lcom/google/android/gms/identitycredentials/CredentialOption$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroid/os/Parcelable$Creator;", "Lcom/google/android/gms/identitycredentials/CredentialOption;", "CREATOR", "Landroid/os/Parcelable$Creator;", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public CredentialOption(String type, Bundle credentialRetrievalData, Bundle candidateQueryData, String requestMatcher, String requestType, String protocolType) {
        boolean z;
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(credentialRetrievalData, "credentialRetrievalData");
        Intrinsics.checkNotNullParameter(candidateQueryData, "candidateQueryData");
        Intrinsics.checkNotNullParameter(requestMatcher, "requestMatcher");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(protocolType, "protocolType");
        this.f3831c = type;
        this.f = credentialRetrievalData;
        this.g = candidateQueryData;
        this.h = requestMatcher;
        this.i = requestType;
        this.j = protocolType;
        if (!StringsKt.isBlank(requestType) && !StringsKt.isBlank(protocolType)) {
            z = true;
        } else {
            z = false;
        }
        boolean z2 = !StringsKt.isBlank(type) && requestType.length() == 0 && protocolType.length() == 0;
        if (!z && !z2) {
            throw new IllegalArgumentException(a.p(androidx.work.impl.workers.a.u("Either type: ", type, ", or requestType: ", requestType, " and protocolType: "), protocolType, " must be specified, but at least one contains an invalid blank value."));
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(dest);
        SafeParcelWriter.writeString(dest, 1, this.f3831c, false);
        SafeParcelWriter.writeBundle(dest, 2, this.f, false);
        SafeParcelWriter.writeBundle(dest, 3, this.g, false);
        SafeParcelWriter.writeString(dest, 4, this.h, false);
        SafeParcelWriter.writeString(dest, 5, this.i, false);
        SafeParcelWriter.writeString(dest, 6, this.j, false);
        SafeParcelWriter.finishObjectHeader(dest, beginObjectHeader);
    }
}
