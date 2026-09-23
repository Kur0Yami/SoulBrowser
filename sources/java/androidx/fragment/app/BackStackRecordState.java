package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.fragment.app.FragmentTransaction;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class BackStackRecordState implements Parcelable {
    public static final Parcelable.Creator<BackStackRecordState> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final int[] f1067c;
    public final ArrayList f;
    public final int[] g;
    public final int[] h;
    public final int i;
    public final String j;
    public final int k;
    public final int l;
    public final CharSequence m;
    public final int n;
    public final CharSequence o;
    public final ArrayList p;
    public final ArrayList q;
    public final boolean r;

    /* renamed from: androidx.fragment.app.BackStackRecordState$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Parcelable.Creator<BackStackRecordState> {
        @Override // android.os.Parcelable.Creator
        public final BackStackRecordState createFromParcel(Parcel parcel) {
            return new BackStackRecordState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final BackStackRecordState[] newArray(int i) {
            return new BackStackRecordState[i];
        }
    }

    public BackStackRecordState(BackStackRecord backStackRecord) {
        int size = backStackRecord.f1127a.size();
        this.f1067c = new int[size * 6];
        if (backStackRecord.g) {
            this.f = new ArrayList(size);
            this.g = new int[size];
            this.h = new int[size];
            int i = 0;
            for (int i2 = 0; i2 < size; i2++) {
                FragmentTransaction.Op op = (FragmentTransaction.Op) backStackRecord.f1127a.get(i2);
                int i3 = i + 1;
                this.f1067c[i] = op.f1129a;
                ArrayList arrayList = this.f;
                Fragment fragment = op.b;
                arrayList.add(fragment != null ? fragment.mWho : null);
                int[] iArr = this.f1067c;
                iArr[i3] = op.f1130c ? 1 : 0;
                iArr[i + 2] = op.d;
                iArr[i + 3] = op.e;
                int i4 = i + 5;
                iArr[i + 4] = op.f;
                i += 6;
                iArr[i4] = op.g;
                this.g[i2] = op.h.ordinal();
                this.h[i2] = op.i.ordinal();
            }
            this.i = backStackRecord.f;
            this.j = backStackRecord.h;
            this.k = backStackRecord.r;
            this.l = backStackRecord.i;
            this.m = backStackRecord.j;
            this.n = backStackRecord.k;
            this.o = backStackRecord.l;
            this.p = backStackRecord.m;
            this.q = backStackRecord.n;
            this.r = backStackRecord.o;
            return;
        }
        throw new IllegalStateException("Not on back stack");
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeIntArray(this.f1067c);
        parcel.writeStringList(this.f);
        parcel.writeIntArray(this.g);
        parcel.writeIntArray(this.h);
        parcel.writeInt(this.i);
        parcel.writeString(this.j);
        parcel.writeInt(this.k);
        parcel.writeInt(this.l);
        TextUtils.writeToParcel(this.m, parcel, 0);
        parcel.writeInt(this.n);
        TextUtils.writeToParcel(this.o, parcel, 0);
        parcel.writeStringList(this.p);
        parcel.writeStringList(this.q);
        parcel.writeInt(this.r ? 1 : 0);
    }

    public BackStackRecordState(Parcel parcel) {
        this.f1067c = parcel.createIntArray();
        this.f = parcel.createStringArrayList();
        this.g = parcel.createIntArray();
        this.h = parcel.createIntArray();
        this.i = parcel.readInt();
        this.j = parcel.readString();
        this.k = parcel.readInt();
        this.l = parcel.readInt();
        Parcelable.Creator creator = TextUtils.CHAR_SEQUENCE_CREATOR;
        this.m = (CharSequence) creator.createFromParcel(parcel);
        this.n = parcel.readInt();
        this.o = (CharSequence) creator.createFromParcel(parcel);
        this.p = parcel.createStringArrayList();
        this.q = parcel.createStringArrayList();
        this.r = parcel.readInt() != 0;
    }
}
