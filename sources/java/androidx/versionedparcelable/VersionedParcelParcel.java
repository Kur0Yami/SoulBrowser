package androidx.versionedparcelable;

import android.os.Parcel;
import android.os.Parcelable;
import android.support.v4.media.a;
import android.text.TextUtils;
import android.util.SparseIntArray;
import androidx.annotation.RestrictTo;
import androidx.collection.ArrayMap;
import androidx.collection.SimpleArrayMap;
import com.google.android.gms.ads.RequestConfiguration;

@RestrictTo
/* loaded from: classes.dex */
class VersionedParcelParcel extends VersionedParcel {
    public final SparseIntArray d;
    public final Parcel e;
    public final int f;
    public final int g;
    public final String h;
    public int i;
    public int j;
    public int k;

    /* JADX WARN: Type inference failed for: r5v0, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    /* JADX WARN: Type inference failed for: r6v0, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    /* JADX WARN: Type inference failed for: r7v0, types: [androidx.collection.SimpleArrayMap, androidx.collection.ArrayMap] */
    public VersionedParcelParcel(Parcel parcel) {
        this(parcel, parcel.dataPosition(), parcel.dataSize(), RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, new SimpleArrayMap(0), new SimpleArrayMap(0), new SimpleArrayMap(0));
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void a() {
        int i = this.i;
        if (i >= 0) {
            int i2 = this.d.get(i);
            Parcel parcel = this.e;
            int dataPosition = parcel.dataPosition();
            parcel.setDataPosition(i2);
            parcel.writeInt(dataPosition - i2);
            parcel.setDataPosition(dataPosition);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final VersionedParcel b() {
        Parcel parcel = this.e;
        int dataPosition = parcel.dataPosition();
        int i = this.j;
        if (i == this.f) {
            i = this.g;
        }
        return new VersionedParcelParcel(parcel, dataPosition, i, a.p(new StringBuilder(), this.h, "  "), this.f1751a, this.b, this.f1752c);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final boolean g() {
        if (this.e.readInt() != 0) {
            return true;
        }
        return false;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final byte[] h() {
        Parcel parcel = this.e;
        int readInt = parcel.readInt();
        if (readInt < 0) {
            return null;
        }
        byte[] bArr = new byte[readInt];
        parcel.readByteArray(bArr);
        return bArr;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final CharSequence i() {
        return (CharSequence) TextUtils.CHAR_SEQUENCE_CREATOR.createFromParcel(this.e);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final boolean j(int i) {
        while (this.j < this.g) {
            int i2 = this.k;
            if (i2 != i) {
                if (String.valueOf(i2).compareTo(String.valueOf(i)) <= 0) {
                    int i3 = this.j;
                    Parcel parcel = this.e;
                    parcel.setDataPosition(i3);
                    int readInt = parcel.readInt();
                    this.k = parcel.readInt();
                    this.j += readInt;
                } else {
                    return false;
                }
            } else {
                return true;
            }
        }
        if (this.k == i) {
            return true;
        }
        return false;
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final int k() {
        return this.e.readInt();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final Parcelable m() {
        return this.e.readParcelable(getClass().getClassLoader());
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final String n() {
        return this.e.readString();
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void p(int i) {
        a();
        this.i = i;
        this.d.put(i, this.e.dataPosition());
        u(0);
        u(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void r(boolean z) {
        this.e.writeInt(z ? 1 : 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void s(byte[] bArr) {
        Parcel parcel = this.e;
        if (bArr != null) {
            parcel.writeInt(bArr.length);
            parcel.writeByteArray(bArr);
        } else {
            parcel.writeInt(-1);
        }
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void t(CharSequence charSequence) {
        TextUtils.writeToParcel(charSequence, this.e, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void u(int i) {
        this.e.writeInt(i);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void w(Parcelable parcelable) {
        this.e.writeParcelable(parcelable, 0);
    }

    @Override // androidx.versionedparcelable.VersionedParcel
    public final void x(String str) {
        this.e.writeString(str);
    }

    public VersionedParcelParcel(Parcel parcel, int i, int i2, String str, ArrayMap arrayMap, ArrayMap arrayMap2, ArrayMap arrayMap3) {
        super(arrayMap, arrayMap2, arrayMap3);
        this.d = new SparseIntArray();
        this.i = -1;
        this.k = -1;
        this.e = parcel;
        this.f = i;
        this.g = i2;
        this.j = i;
        this.h = str;
    }
}
