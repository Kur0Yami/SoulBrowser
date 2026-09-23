package androidx.collection;

import android.support.v4.media.a;
import com.google.android.gms.ads.RequestConfiguration;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.SourceDebugExtension;
import kotlin.ranges.IntRange;
import kotlin.ranges.RangesKt;

@Metadata(d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0018\u0002\n\u0000\b6\u0018\u00002\u00020\u0001\u0082\u0001\u0001\u0002¨\u0006\u0003"}, d2 = {"Landroidx/collection/FloatList;", RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED, "Landroidx/collection/MutableFloatList;", "collection"}, k = 1, mv = {1, 8, 0}, xi = 48)
@SourceDebugExtension({"SMAP\nFloatList.kt\nKotlin\n*S Kotlin\n*F\n+ 1 FloatList.kt\nandroidx/collection/FloatList\n*L\n1#1,969:1\n253#1,6:970\n279#1,6:976\n253#1,6:982\n75#1:988\n253#1,6:989\n253#1,6:995\n253#1,6:1001\n266#1,6:1007\n279#1,6:1013\n293#1,6:1019\n70#1:1025\n70#1:1026\n266#1,6:1027\n266#1,6:1033\n293#1,6:1039\n70#1:1045\n279#1,6:1046\n293#1,6:1052\n266#1,6:1058\n266#1,6:1064\n253#1,6:1070\n75#1:1076\n467#1,10:1077\n266#1,4:1087\n477#1,9:1091\n271#1:1100\n486#1,2:1101\n467#1,10:1103\n266#1,4:1113\n477#1,9:1117\n271#1:1126\n486#1,2:1127\n467#1,10:1129\n266#1,4:1139\n477#1,9:1143\n271#1:1152\n486#1,2:1153\n467#1,10:1155\n266#1,4:1165\n477#1,9:1169\n271#1:1178\n486#1,2:1179\n467#1,10:1181\n266#1,4:1191\n477#1,9:1195\n271#1:1204\n486#1,2:1205\n*S KotlinDebug\n*F\n+ 1 FloatList.kt\nandroidx/collection/FloatList\n*L\n96#1:970,6\n110#1:976,6\n122#1:982,6\n135#1:988\n153#1:989,6\n175#1:995,6\n192#1:1001,6\n208#1:1007,6\n225#1:1013,6\n241#1:1019,6\n306#1:1025\n317#1:1026\n343#1:1027,6\n357#1:1033,6\n371#1:1039,6\n397#1:1045\n407#1:1046,6\n420#1:1052,6\n445#1:1058,6\n476#1:1064,6\n494#1:1070,6\n510#1:1076\n-1#1:1077,10\n-1#1:1087,4\n-1#1:1091,9\n-1#1:1100\n-1#1:1101,2\n-1#1:1103,10\n-1#1:1113,4\n-1#1:1117,9\n-1#1:1126\n-1#1:1127,2\n-1#1:1129,10\n-1#1:1139,4\n-1#1:1143,9\n-1#1:1152\n-1#1:1153,2\n-1#1:1155,10\n-1#1:1165,4\n-1#1:1169,9\n-1#1:1178\n-1#1:1179,2\n-1#1:1181,10\n-1#1:1191,4\n-1#1:1195,9\n-1#1:1204\n-1#1:1205,2\n*E\n"})
/* loaded from: classes.dex */
public abstract class FloatList {

    /* renamed from: a, reason: collision with root package name */
    public float[] f440a;
    public int b;

    public static String b(FloatList floatList, int i) {
        String prefix;
        int i2 = i & 2;
        String postfix = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        if (i2 != 0) {
            prefix = RequestConfiguration.MAX_AD_CONTENT_RATING_UNSPECIFIED;
        } else {
            prefix = "[";
        }
        if ((i & 4) == 0) {
            postfix = "]";
        }
        floatList.getClass();
        Intrinsics.checkNotNullParameter(", ", "separator");
        Intrinsics.checkNotNullParameter(prefix, "prefix");
        Intrinsics.checkNotNullParameter(postfix, "postfix");
        Intrinsics.checkNotNullParameter("...", "truncated");
        StringBuilder sb = new StringBuilder();
        sb.append((CharSequence) prefix);
        float[] fArr = floatList.f440a;
        int i3 = floatList.b;
        int i4 = 0;
        while (true) {
            if (i4 < i3) {
                float f = fArr[i4];
                if (i4 == -1) {
                    sb.append((CharSequence) "...");
                    break;
                }
                if (i4 != 0) {
                    sb.append((CharSequence) ", ");
                }
                sb.append(f);
                i4++;
            } else {
                sb.append((CharSequence) postfix);
                break;
            }
        }
        String sb2 = sb.toString();
        Intrinsics.checkNotNullExpressionValue(sb2, "StringBuilder().apply(builderAction).toString()");
        return sb2;
    }

    public final float a(int i) {
        if (i >= 0 && i < this.b) {
            return this.f440a[i];
        }
        StringBuilder s = a.s(i, "Index ", " must be in 0..");
        s.append(this.b - 1);
        throw new IndexOutOfBoundsException(s.toString());
    }

    public final boolean equals(Object obj) {
        if (obj instanceof FloatList) {
            FloatList floatList = (FloatList) obj;
            int i = floatList.b;
            int i2 = this.b;
            if (i == i2) {
                float[] fArr = this.f440a;
                float[] fArr2 = floatList.f440a;
                IntRange until = RangesKt.until(0, i2);
                int first = until.getFirst();
                int last = until.getLast();
                if (first <= last) {
                    while (fArr[first] == fArr2[first]) {
                        if (first != last) {
                            first++;
                        } else {
                            return true;
                        }
                    }
                    return false;
                }
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        float[] fArr = this.f440a;
        int i = this.b;
        int i2 = 0;
        for (int i3 = 0; i3 < i; i3++) {
            i2 += Float.floatToIntBits(fArr[i3]) * 31;
        }
        return i2;
    }

    public final String toString() {
        return b(this, 25);
    }
}
