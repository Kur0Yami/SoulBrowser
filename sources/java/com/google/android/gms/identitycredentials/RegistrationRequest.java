package com.google.android.gms.identitycredentials;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.work.impl.workers.a;
import com.google.android.gms.ads.RequestConfiguration;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.Iterator;
import java.util.List;
import kotlin.Metadata;
import kotlin.jvm.JvmField;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.text.StringsKt;
import org.jetbrains.annotations.NotNull;

@Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\b\u0007\u0018\u00002\u00020\u0001:\u0001\u0002¨\u0006\u0003"}, d2 = {"Lcom/google/android/gms/identitycredentials/RegistrationRequest;", "Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;", "Companion", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
@SafeParcelable.Class(creator = "RegistrationRequestCreator")
@SourceDebugExtension({"SMAP\nRegistrationRequest.kt\nKotlin\n*S Kotlin\n*F\n+ 1 RegistrationRequest.kt\ncom/google/android/gms/identitycredentials/RegistrationRequest\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,66:1\n1734#2,3:67\n*S KotlinDebug\n*F\n+ 1 RegistrationRequest.kt\ncom/google/android/gms/identitycredentials/RegistrationRequest\n*L\n47#1:67,3\n*E\n"})
/* loaded from: classes.dex */
public final class RegistrationRequest extends AbstractSafeParcelable {

    @JvmField
    @NotNull
    public static final Parcelable.Creator<RegistrationRequest> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final byte[] f3836c;
    public final byte[] f;
    public final String g;
    public final String h;
    public final List i;

    @Metadata(d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000e\n\u0002\b\u0003\b\u0086\u0003\u0018\u00002\u00020\u0001R\u001a\u0010\u0004\u001a\b\u0012\u0004\u0012\u00020\u00030\u00028\u0006X\u0087\u0004¢\u0006\u0006\n\u0004\b\u0004\u0010\u0005R\u0014\u0010\u0007\u001a\u00020\u00068\u0006X\u0086T¢\u0006\u0006\n\u0004\b\u0007\u0010\b¨\u0006\t"}, d2 = {"Lcom/google/android/gms/identitycredentials/RegistrationRequest$Companion;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroid/os/Parcelable$Creator;", "Lcom/google/android/gms/identitycredentials/RegistrationRequest;", "CREATOR", "Landroid/os/Parcelable$Creator;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "TAG", "Ljava/lang/String;", "java.com.google.android.gmscore.integ.client.identity_credentials_identity_credentials"}, k = 1, mv = {2, 0, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
    }

    public RegistrationRequest(byte[] credentials, byte[] matcher, String type, String requestType, List protocolTypes) {
        boolean z;
        Intrinsics.checkNotNullParameter(credentials, "credentials");
        Intrinsics.checkNotNullParameter(matcher, "matcher");
        Intrinsics.checkNotNullParameter(type, "type");
        Intrinsics.checkNotNullParameter(requestType, "requestType");
        Intrinsics.checkNotNullParameter(protocolTypes, "protocolTypes");
        this.f3836c = credentials;
        this.f = matcher;
        this.g = type;
        this.h = requestType;
        this.i = protocolTypes;
        if (!StringsKt.isBlank(requestType) && !protocolTypes.isEmpty() && !protocolTypes.isEmpty()) {
            Iterator it = protocolTypes.iterator();
            while (it.hasNext()) {
                if (!StringsKt.isBlank((String) it.next())) {
                    z = true;
                    break;
                }
            }
        }
        z = false;
        boolean z2 = !StringsKt.isBlank(this.g) && this.h.length() == 0 && this.i.isEmpty();
        if (!z && !z2) {
            String str = this.g;
            String str2 = this.h;
            List list = this.i;
            StringBuilder u = a.u("Either type: ", str, ", or requestType: ", str2, " and protocolTypes: ");
            u.append(list);
            u.append(" must be specified, but all were blank, or for protocolTypes, empty or full of blank elements.");
            throw new IllegalArgumentException(u.toString());
        }
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel dest, int i) {
        Intrinsics.checkNotNullParameter(dest, "dest");
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(dest);
        SafeParcelWriter.writeByteArray(dest, 1, this.f3836c, false);
        SafeParcelWriter.writeByteArray(dest, 2, this.f, false);
        SafeParcelWriter.writeString(dest, 3, this.g, false);
        SafeParcelWriter.writeString(dest, 4, this.h, false);
        SafeParcelWriter.writeStringList(dest, 5, this.i, false);
        SafeParcelWriter.finishObjectHeader(dest, beginObjectHeader);
    }
}
