package com.google.android.gms.drive.metadata;

import android.os.Parcel;
import android.os.Parcelable;
import androidx.work.impl.workers.a;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.regex.Pattern;

@SafeParcelable.Class(creator = "CustomPropertyKeyCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class CustomPropertyKey extends AbstractSafeParcelable {
    public static final Parcelable.Creator<CustomPropertyKey> CREATOR = new Object();
    public static final Pattern g = Pattern.compile("[\\w.!@$%^&*()/-]+");

    /* renamed from: c, reason: collision with root package name */
    public final String f3698c;
    public final int f;

    public CustomPropertyKey(String str, int i) {
        Preconditions.checkNotNull(str, "key");
        Preconditions.checkArgument(g.matcher(str).matches(), "key name characters must be alphanumeric or one of .!@$%^&*()-_/");
        boolean z = true;
        if (i != 0 && i != 1) {
            z = false;
        }
        Preconditions.checkArgument(z, "visibility must be either PUBLIC or PRIVATE");
        this.f3698c = str;
        this.f = i;
    }

    public final boolean equals(Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj != null && obj.getClass() == getClass()) {
            CustomPropertyKey customPropertyKey = (CustomPropertyKey) obj;
            if (customPropertyKey.f3698c.equals(this.f3698c) && customPropertyKey.f == this.f) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        String str = this.f3698c;
        StringBuilder sb = new StringBuilder(a.e(11, str));
        sb.append(str);
        sb.append(this.f);
        return sb.toString().hashCode();
    }

    public final String toString() {
        String str = this.f3698c;
        StringBuilder sb = new StringBuilder(a.e(31, str));
        sb.append("CustomPropertyKey(");
        sb.append(str);
        sb.append(",");
        sb.append(this.f);
        sb.append(")");
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3698c, false);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
