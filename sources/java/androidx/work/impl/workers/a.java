package androidx.work.impl.workers;

import android.content.ContentValues;
import android.os.Bundle;
import android.os.Parcel;
import android.widget.RelativeLayout;
import com.google.android.gms.ads.internal.zzt;
import com.google.android.gms.dynamic.IObjectWrapper;
import com.google.android.gms.internal.consent_sdk.zzpv;
import com.google.android.gms.internal.drive.zzjr;
import com.google.android.gms.internal.mlkit_code_scanner.zzad;
import com.google.android.gms.internal.mlkit_common.zzay;
import com.google.android.gms.internal.mlkit_vision_common.zzae;
import com.google.android.gms.internal.mlkit_vision_text_common.zzct;
import com.google.firebase.encoders.FieldDescriptor;
import java.util.HashMap;

/* loaded from: classes.dex */
public abstract /* synthetic */ class a {
    public static void A(StringBuilder sb, String str, int i, String str2, int i2) {
        sb.append(str);
        sb.append(i);
        sb.append(str2);
        sb.append(i2);
    }

    public static void B(HashMap hashMap, String str, Integer num, int i, String str2) {
        hashMap.put(str, num);
        hashMap.put(str2, Integer.valueOf(i));
    }

    public static int C(int i, int i2, int i3) {
        return zzjr.g(i) + i2 + i3;
    }

    public static int D(int i, int i2, int i3) {
        return (zzjr.g(i) * i2) + i3;
    }

    public static int a(int i, int i2) {
        return String.valueOf(i).length() + i2;
    }

    public static int b(int i, int i2, int i3) {
        return zzpv.c(i) + i2 + i3;
    }

    public static int c(int i, int i2, int i3, int i4) {
        return zzjr.i(i) + i2 + i3 + i4;
    }

    public static int d(int i, int i2, String str) {
        return str.length() + i + i2;
    }

    public static int e(int i, String str) {
        return String.valueOf(str).length() + i;
    }

    public static ContentValues f(String str, String str2) {
        ContentValues contentValues = new ContentValues();
        contentValues.put(str, str2);
        return contentValues;
    }

    public static RelativeLayout.LayoutParams g(int i, int i2, int i3) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
        layoutParams.addRule(i3);
        return layoutParams;
    }

    public static RelativeLayout.LayoutParams h(int i, int i2, int i3, int i4) {
        RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(i, i2);
        layoutParams.addRule(i3, i4);
        return layoutParams;
    }

    public static IObjectWrapper i(Parcel parcel) {
        IObjectWrapper I1 = IObjectWrapper.Stub.I1(parcel.readStrongBinder());
        parcel.recycle();
        return I1;
    }

    public static FieldDescriptor.Builder j(zzad zzadVar, FieldDescriptor.Builder builder, String str) {
        builder.b(zzadVar.a());
        builder.a();
        return new FieldDescriptor.Builder(str);
    }

    public static FieldDescriptor.Builder k(zzay zzayVar, FieldDescriptor.Builder builder, String str) {
        builder.b(zzayVar.a());
        builder.a();
        return new FieldDescriptor.Builder(str);
    }

    public static FieldDescriptor.Builder l(zzae zzaeVar, FieldDescriptor.Builder builder, String str) {
        builder.b(zzaeVar.a());
        builder.a();
        return new FieldDescriptor.Builder(str);
    }

    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.mlkit_common.zzay, java.lang.Object] */
    public static FieldDescriptor m(int i, FieldDescriptor.Builder builder) {
        ?? obj = new Object();
        obj.f10659a = i;
        builder.b(obj.a());
        return builder.a();
    }

    public static FieldDescriptor n(zzad zzadVar, FieldDescriptor.Builder builder) {
        builder.b(zzadVar.a());
        return builder.a();
    }

    public static FieldDescriptor o(zzay zzayVar, FieldDescriptor.Builder builder) {
        builder.b(zzayVar.a());
        return builder.a();
    }

    public static FieldDescriptor p(zzae zzaeVar, FieldDescriptor.Builder builder) {
        builder.b(zzaeVar.a());
        return builder.a();
    }

    public static FieldDescriptor q(zzct zzctVar, FieldDescriptor.Builder builder) {
        builder.b(zzctVar.a());
        return builder.a();
    }

    public static String r(int i, String str, StringBuilder sb) {
        sb.append(str);
        sb.append(i);
        return sb.toString();
    }

    public static String s(String str, int i, int i2, String str2) {
        return str + i + str2 + i2;
    }

    public static String t(StringBuilder sb, String str, int i, String str2) {
        sb.append(str);
        sb.append(i);
        sb.append(str2);
        return sb.toString();
    }

    public static StringBuilder u(String str, String str2, String str3, String str4, String str5) {
        StringBuilder sb = new StringBuilder(str);
        sb.append(str2);
        sb.append(str3);
        sb.append(str4);
        sb.append(str5);
        return sb;
    }

    public static void v(int i, HashMap hashMap, String str, int i2, String str2) {
        hashMap.put(str, Integer.valueOf(i));
        hashMap.put(str2, Integer.valueOf(i2));
    }

    public static void w(zzad zzadVar, FieldDescriptor.Builder builder) {
        builder.b(zzadVar.a());
        builder.a();
    }

    public static void x(zzay zzayVar, FieldDescriptor.Builder builder) {
        builder.b(zzayVar.a());
        builder.a();
    }

    public static void y(zzae zzaeVar, FieldDescriptor.Builder builder) {
        builder.b(zzaeVar.a());
        builder.a();
    }

    public static void z(String str, Bundle bundle) {
        bundle.putLong(str, zzt.zzk().currentTimeMillis());
    }
}
