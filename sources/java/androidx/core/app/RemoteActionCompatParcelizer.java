package androidx.core.app;

import android.app.PendingIntent;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.core.graphics.drawable.IconCompat;
import androidx.versionedparcelable.VersionedParcel;
import androidx.versionedparcelable.VersionedParcelable;

@RestrictTo
/* loaded from: classes.dex */
public class RemoteActionCompatParcelizer {
    public static RemoteActionCompat read(VersionedParcel versionedParcel) {
        RemoteActionCompat remoteActionCompat = new RemoteActionCompat();
        VersionedParcelable versionedParcelable = remoteActionCompat.f644a;
        if (versionedParcel.j(1)) {
            versionedParcelable = versionedParcel.o();
        }
        remoteActionCompat.f644a = (IconCompat) versionedParcelable;
        CharSequence charSequence = remoteActionCompat.b;
        if (versionedParcel.j(2)) {
            charSequence = versionedParcel.i();
        }
        remoteActionCompat.b = charSequence;
        CharSequence charSequence2 = remoteActionCompat.f645c;
        if (versionedParcel.j(3)) {
            charSequence2 = versionedParcel.i();
        }
        remoteActionCompat.f645c = charSequence2;
        Parcelable parcelable = remoteActionCompat.d;
        if (versionedParcel.j(4)) {
            parcelable = versionedParcel.m();
        }
        remoteActionCompat.d = (PendingIntent) parcelable;
        boolean z = remoteActionCompat.e;
        if (versionedParcel.j(5)) {
            z = versionedParcel.g();
        }
        remoteActionCompat.e = z;
        boolean z2 = remoteActionCompat.f;
        if (versionedParcel.j(6)) {
            z2 = versionedParcel.g();
        }
        remoteActionCompat.f = z2;
        return remoteActionCompat;
    }

    public static void write(RemoteActionCompat remoteActionCompat, VersionedParcel versionedParcel) {
        versionedParcel.q(false, false);
        IconCompat iconCompat = remoteActionCompat.f644a;
        versionedParcel.p(1);
        versionedParcel.y(iconCompat);
        CharSequence charSequence = remoteActionCompat.b;
        versionedParcel.p(2);
        versionedParcel.t(charSequence);
        CharSequence charSequence2 = remoteActionCompat.f645c;
        versionedParcel.p(3);
        versionedParcel.t(charSequence2);
        PendingIntent pendingIntent = remoteActionCompat.d;
        versionedParcel.p(4);
        versionedParcel.w(pendingIntent);
        boolean z = remoteActionCompat.e;
        versionedParcel.p(5);
        versionedParcel.r(z);
        boolean z2 = remoteActionCompat.f;
        versionedParcel.p(6);
        versionedParcel.r(z2);
    }
}
