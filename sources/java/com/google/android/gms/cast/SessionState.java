package com.google.android.gms.cast;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "SessionStateCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class SessionState extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<SessionState> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final MediaLoadRequestData f3459c;
    public String f;
    public final JSONObject g;

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public SessionState(MediaLoadRequestData mediaLoadRequestData, JSONObject jSONObject) {
        this.f3459c = mediaLoadRequestData;
        this.g = jSONObject;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof SessionState)) {
            return false;
        }
        SessionState sessionState = (SessionState) obj;
        if (!JsonUtils.areJsonValuesEquivalent(this.g, sessionState.g)) {
            return false;
        }
        return Objects.equal(this.f3459c, sessionState.f3459c);
    }

    public final int hashCode() {
        return Objects.hashCode(this.f3459c, String.valueOf(this.g));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String jSONObject;
        JSONObject jSONObject2 = this.g;
        if (jSONObject2 == null) {
            jSONObject = null;
        } else {
            jSONObject = jSONObject2.toString();
        }
        this.f = jSONObject;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeParcelable(parcel, 2, this.f3459c, i, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
