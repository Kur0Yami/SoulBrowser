package androidx.fragment.app;

import android.annotation.SuppressLint;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.fragment.app.FragmentManager;
import java.util.ArrayList;

/* JADX INFO: Access modifiers changed from: package-private */
@SuppressLint({"BanParcelableUsage"})
/* loaded from: classes.dex */
public final class FragmentManagerState implements Parcelable {
    public static final Parcelable.Creator<FragmentManagerState> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public ArrayList f1115c;
    public ArrayList f;
    public BackStackRecordState[] g;
    public int h;
    public String i;
    public ArrayList j;
    public ArrayList k;
    public ArrayList l;

    /* renamed from: androidx.fragment.app.FragmentManagerState$1, reason: invalid class name */
    /* loaded from: classes.dex */
    public class AnonymousClass1 implements Parcelable.Creator<FragmentManagerState> {
        /* JADX WARN: Type inference failed for: r0v0, types: [androidx.fragment.app.FragmentManagerState, java.lang.Object] */
        @Override // android.os.Parcelable.Creator
        public final FragmentManagerState createFromParcel(Parcel parcel) {
            ?? obj = new Object();
            obj.i = null;
            obj.j = new ArrayList();
            obj.k = new ArrayList();
            obj.f1115c = parcel.createStringArrayList();
            obj.f = parcel.createStringArrayList();
            obj.g = (BackStackRecordState[]) parcel.createTypedArray(BackStackRecordState.CREATOR);
            obj.h = parcel.readInt();
            obj.i = parcel.readString();
            obj.j = parcel.createStringArrayList();
            obj.k = parcel.createTypedArrayList(BackStackState.CREATOR);
            obj.l = parcel.createTypedArrayList(FragmentManager.LaunchedFragmentInfo.CREATOR);
            return obj;
        }

        @Override // android.os.Parcelable.Creator
        public final FragmentManagerState[] newArray(int i) {
            return new FragmentManagerState[i];
        }
    }

    @Override // android.os.Parcelable
    public final int describeContents() {
        return 0;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        parcel.writeStringList(this.f1115c);
        parcel.writeStringList(this.f);
        parcel.writeTypedArray(this.g, i);
        parcel.writeInt(this.h);
        parcel.writeString(this.i);
        parcel.writeStringList(this.j);
        parcel.writeTypedList(this.k);
        parcel.writeTypedList(this.l);
    }
}
