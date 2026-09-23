package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import kotlin.uuid.Uuid;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class FragmentState implements Parcelable {
    public static final Parcelable.Creator<FragmentState> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public final String f1117c;
    public final String f;
    public final boolean g;
    public final int h;
    public final int i;
    public final String j;
    public final boolean k;
    public final boolean l;
    public final boolean m;
    public final boolean n;
    public final int o;
    public final String p;
    public final int q;
    public final boolean r;

    /* renamed from: androidx.fragment.app.FragmentState$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Parcelable.Creator<FragmentState> {
        @Override // android.os.Parcelable.Creator
        public final FragmentState createFromParcel(Parcel parcel) {
            return new FragmentState(parcel);
        }

        @Override // android.os.Parcelable.Creator
        public final FragmentState[] newArray(int i) {
            return new FragmentState[i];
        }
    }

    public FragmentState(Fragment fragment) {
        this.f1117c = fragment.getClass().getName();
        this.f = fragment.mWho;
        this.g = fragment.mFromLayout;
        this.h = fragment.mFragmentId;
        this.i = fragment.mContainerId;
        this.j = fragment.mTag;
        this.k = fragment.mRetainInstance;
        this.l = fragment.mRemoving;
        this.m = fragment.mDetached;
        this.n = fragment.mHidden;
        this.o = fragment.mMaxState.ordinal();
        this.p = fragment.mTargetWho;
        this.q = fragment.mTargetRequestCode;
        this.r = fragment.mUserVisibleHint;
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder(Uuid.SIZE_BITS);
        sb.append("FragmentState{");
        sb.append(this.f1117c);
        sb.append(" (");
        sb.append(this.f);
        sb.append(")}:");
        if (this.g) {
            sb.append(" fromLayout");
        }
        int i = this.i;
        if (i != 0) {
            sb.append(" id=0x");
            sb.append(Integer.toHexString(i));
        }
        String str = this.j;
        if (str != null && !str.isEmpty()) {
            sb.append(" tag=");
            sb.append(str);
        }
        if (this.k) {
            sb.append(" retainInstance");
        }
        if (this.l) {
            sb.append(" removing");
        }
        if (this.m) {
            sb.append(" detached");
        }
        if (this.n) {
            sb.append(" hidden");
        }
        String str2 = this.p;
        if (str2 != null) {
            sb.append(" targetWho=");
            sb.append(str2);
            sb.append(" targetRequestCode=");
            sb.append(this.q);
        }
        if (this.r) {
            sb.append(" userVisibleHint");
        }
        return sb.toString();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeString(this.f1117c);
        parcel.writeString(this.f);
        parcel.writeInt(this.g ? 1 : 0);
        parcel.writeInt(this.h);
        parcel.writeInt(this.i);
        parcel.writeString(this.j);
        parcel.writeInt(this.k ? 1 : 0);
        parcel.writeInt(this.l ? 1 : 0);
        parcel.writeInt(this.m ? 1 : 0);
        parcel.writeInt(this.n ? 1 : 0);
        parcel.writeInt(this.o);
        parcel.writeString(this.p);
        parcel.writeInt(this.q);
        parcel.writeInt(this.r ? 1 : 0);
    }

    public FragmentState(Parcel parcel) {
        this.f1117c = parcel.readString();
        this.f = parcel.readString();
        this.g = parcel.readInt() != 0;
        this.h = parcel.readInt();
        this.i = parcel.readInt();
        this.j = parcel.readString();
        this.k = parcel.readInt() != 0;
        this.l = parcel.readInt() != 0;
        this.m = parcel.readInt() != 0;
        this.n = parcel.readInt() != 0;
        this.o = parcel.readInt();
        this.p = parcel.readString();
        this.q = parcel.readInt();
        this.r = parcel.readInt() != 0;
    }
}
