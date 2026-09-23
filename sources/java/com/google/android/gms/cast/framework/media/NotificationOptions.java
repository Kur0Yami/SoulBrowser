package com.google.android.gms.cast.framework.media;

import android.os.IBinder;
import android.os.IInterface;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.framework.media.internal.ResourceProvider;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.internal.cast.zzhv;
import com.google.android.gms.internal.cast.zzib;
import com.google.android.gms.internal.cast.zzim;
import java.lang.reflect.InvocationTargetException;
import java.util.AbstractCollection;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Map;

@SafeParcelable.Class(creator = "NotificationOptionsCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public class NotificationOptions extends AbstractSafeParcelable {

    @NonNull
    public static final Parcelable.Creator<NotificationOptions> CREATOR;
    public static final zzhv M;
    public static final int[] N;
    public final int A;
    public final int B;
    public final int C;
    public final int D;
    public final int E;
    public final int F;
    public final int G;
    public final int H;
    public final int I;
    public final zzg J;
    public final boolean K;
    public final boolean L;

    /* renamed from: c, reason: collision with root package name */
    public final ArrayList f3502c;
    public final int[] f;
    public final long g;
    public final String h;
    public final int i;
    public final int j;
    public final int k;
    public final int l;
    public final int m;
    public final int n;
    public final int o;
    public final int p;
    public final int q;
    public final int r;
    public final int s;
    public final int t;
    public final int u;
    public final int v;
    public final int w;
    public final int x;
    public final int y;
    public final int z;

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public String f3503a;
        public AbstractCollection b = NotificationOptions.M;

        /* renamed from: c, reason: collision with root package name */
        public int[] f3504c = NotificationOptions.N;
        public final int d = b("smallIconDrawableResId");
        public final int e = b("stopLiveStreamDrawableResId");
        public final int f = b("pauseDrawableResId");
        public final int g = b("playDrawableResId");
        public final int h = b("skipNextDrawableResId");
        public final int i = b("skipPrevDrawableResId");
        public final int j = b("forwardDrawableResId");
        public final int k = b("forward10DrawableResId");
        public final int l = b("forward30DrawableResId");
        public final int m = b("rewindDrawableResId");
        public final int n = b("rewind10DrawableResId");
        public final int o = b("rewind30DrawableResId");
        public final int p = b("disconnectDrawableResId");
        public final long q = 10000;

        public static int b(String str) {
            Integer num;
            try {
                Map map = ResourceProvider.f3508a;
                num = (Integer) ResourceProvider.class.getMethod("findResourceByName", String.class).invoke(null, str);
            } catch (ClassNotFoundException | IllegalAccessException | NoSuchMethodException | InvocationTargetException unused) {
            }
            if (num == null) {
                return 0;
            }
            return num.intValue();
        }

        /* JADX WARN: Type inference failed for: r2v0, types: [java.util.AbstractCollection, java.util.List] */
        public final NotificationOptions a() {
            return new NotificationOptions(this.b, this.f3504c, this.q, this.f3503a, this.d, this.e, this.f, this.g, this.h, this.i, this.j, this.k, this.l, this.m, this.n, this.o, this.p, b("notificationImageSizeDimenResId"), b("castingToDeviceStringResId"), b("stopLiveStreamStringResId"), b("pauseStringResId"), b("playStringResId"), b("skipNextStringResId"), b("skipPrevStringResId"), b("forwardStringResId"), b("forward10StringResId"), b("forward30StringResId"), b("rewindStringResId"), b("rewind10StringResId"), b("rewind30StringResId"), b("disconnectStringResId"), null, false, false);
        }
    }

    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.cast.framework.media.NotificationOptions>] */
    static {
        zzim zzimVar = zzhv.f;
        Object[] objArr = {MediaIntentReceiver.ACTION_TOGGLE_PLAYBACK, MediaIntentReceiver.ACTION_STOP_CASTING};
        for (int i = 0; i < 2; i++) {
            zzib.a(i, objArr[i]);
        }
        M = zzhv.p(2, objArr);
        N = new int[]{0, 1};
        CREATOR = new Object();
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r3v25 */
    /* JADX WARN: Type inference failed for: r3v28, types: [com.google.android.gms.cast.framework.media.zzg] */
    /* JADX WARN: Type inference failed for: r3v29 */
    /* JADX WARN: Type inference failed for: r3v30 */
    public NotificationOptions(List list, int[] iArr, long j, String str, int i, int i2, int i3, int i4, int i5, int i6, int i7, int i8, int i9, int i10, int i11, int i12, int i13, int i14, int i15, int i16, int i17, int i18, int i19, int i20, int i21, int i22, int i23, int i24, int i25, int i26, int i27, IBinder iBinder, boolean z, boolean z2) {
        ?? zzaVar;
        this.f3502c = new ArrayList(list);
        this.f = Arrays.copyOf(iArr, iArr.length);
        this.g = j;
        this.h = str;
        this.i = i;
        this.j = i2;
        this.k = i3;
        this.l = i4;
        this.m = i5;
        this.n = i6;
        this.o = i7;
        this.p = i8;
        this.q = i9;
        this.r = i10;
        this.s = i11;
        this.t = i12;
        this.u = i13;
        this.v = i14;
        this.w = i15;
        this.x = i16;
        this.y = i17;
        this.z = i18;
        this.A = i19;
        this.B = i20;
        this.C = i21;
        this.D = i22;
        this.E = i23;
        this.F = i24;
        this.G = i25;
        this.H = i26;
        this.I = i27;
        this.K = z;
        this.L = z2;
        if (iBinder == null) {
            zzaVar = 0;
        } else {
            IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.cast.framework.media.INotificationActionsProvider");
            if (queryLocalInterface instanceof zzg) {
                zzaVar = (zzg) queryLocalInterface;
            } else {
                zzaVar = new com.google.android.gms.internal.cast.zza(iBinder, "com.google.android.gms.cast.framework.media.INotificationActionsProvider");
            }
        }
        this.J = zzaVar;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        IBinder asBinder;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeStringList(parcel, 2, this.f3502c, false);
        int[] iArr = this.f;
        SafeParcelWriter.writeIntArray(parcel, 3, Arrays.copyOf(iArr, iArr.length), false);
        SafeParcelWriter.writeLong(parcel, 4, this.g);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        SafeParcelWriter.writeInt(parcel, 6, this.i);
        SafeParcelWriter.writeInt(parcel, 7, this.j);
        SafeParcelWriter.writeInt(parcel, 8, this.k);
        SafeParcelWriter.writeInt(parcel, 9, this.l);
        SafeParcelWriter.writeInt(parcel, 10, this.m);
        SafeParcelWriter.writeInt(parcel, 11, this.n);
        SafeParcelWriter.writeInt(parcel, 12, this.o);
        SafeParcelWriter.writeInt(parcel, 13, this.p);
        SafeParcelWriter.writeInt(parcel, 14, this.q);
        SafeParcelWriter.writeInt(parcel, 15, this.r);
        SafeParcelWriter.writeInt(parcel, 16, this.s);
        SafeParcelWriter.writeInt(parcel, 17, this.t);
        SafeParcelWriter.writeInt(parcel, 18, this.u);
        SafeParcelWriter.writeInt(parcel, 19, this.v);
        SafeParcelWriter.writeInt(parcel, 20, this.w);
        SafeParcelWriter.writeInt(parcel, 21, this.x);
        SafeParcelWriter.writeInt(parcel, 22, this.y);
        SafeParcelWriter.writeInt(parcel, 23, this.z);
        SafeParcelWriter.writeInt(parcel, 24, this.A);
        SafeParcelWriter.writeInt(parcel, 25, this.B);
        SafeParcelWriter.writeInt(parcel, 26, this.C);
        SafeParcelWriter.writeInt(parcel, 27, this.D);
        SafeParcelWriter.writeInt(parcel, 28, this.E);
        SafeParcelWriter.writeInt(parcel, 29, this.F);
        SafeParcelWriter.writeInt(parcel, 30, this.G);
        SafeParcelWriter.writeInt(parcel, 31, this.H);
        SafeParcelWriter.writeInt(parcel, 32, this.I);
        zzg zzgVar = this.J;
        if (zzgVar == null) {
            asBinder = null;
        } else {
            asBinder = zzgVar.asBinder();
        }
        SafeParcelWriter.writeIBinder(parcel, 33, asBinder, false);
        SafeParcelWriter.writeBoolean(parcel, 34, this.K);
        SafeParcelWriter.writeBoolean(parcel, 35, this.L);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
