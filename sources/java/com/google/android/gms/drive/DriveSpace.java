package com.google.android.gms.drive;

import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.CollectionUtils;
import java.util.regex.Pattern;

@ShowFirstParty
@SafeParcelable.Class(creator = "DriveSpaceCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class DriveSpace extends AbstractSafeParcelable implements ReflectedParcelable {
    public static final Parcelable.Creator<DriveSpace> CREATOR = new Object();
    public static final DriveSpace f;
    public static final DriveSpace g;
    public static final DriveSpace h;

    /* renamed from: c, reason: collision with root package name */
    public final String f3678c;

    /* JADX WARN: Type inference failed for: r0v0, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.drive.DriveSpace>] */
    static {
        DriveSpace driveSpace = new DriveSpace("DRIVE");
        f = driveSpace;
        DriveSpace driveSpace2 = new DriveSpace("APP_DATA_FOLDER");
        g = driveSpace2;
        DriveSpace driveSpace3 = new DriveSpace("PHOTOS");
        h = driveSpace3;
        TextUtils.join(",", CollectionUtils.setOf(driveSpace, driveSpace2, driveSpace3).toArray());
        Pattern.compile("[A-Z0-9_]*");
    }

    public DriveSpace(String str) {
        this.f3678c = (String) Preconditions.checkNotNull(str);
    }

    public final boolean equals(Object obj) {
        if (obj != null && obj.getClass() == DriveSpace.class) {
            return this.f3678c.equals(((DriveSpace) obj).f3678c);
        }
        return false;
    }

    public final int hashCode() {
        return this.f3678c.hashCode() ^ 1247068382;
    }

    public final String toString() {
        return this.f3678c;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3678c, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
