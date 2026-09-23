package androidx.core.graphics.drawable;

import android.content.res.ColorStateList;
import android.graphics.Bitmap;
import android.graphics.PorterDuff;
import android.os.Parcelable;
import androidx.annotation.RestrictTo;
import androidx.versionedparcelable.VersionedParcel;
import java.io.ByteArrayOutputStream;
import java.nio.charset.Charset;

@RestrictTo
/* loaded from: classes.dex */
public class IconCompatParcelizer {
    /* JADX WARN: Can't fix incorrect switch cases order, some code will duplicate */
    public static IconCompat read(VersionedParcel versionedParcel) {
        IconCompat iconCompat = new IconCompat();
        iconCompat.f691a = versionedParcel.l(iconCompat.f691a, 1);
        byte[] bArr = iconCompat.f692c;
        if (versionedParcel.j(2)) {
            bArr = versionedParcel.h();
        }
        iconCompat.f692c = bArr;
        Parcelable parcelable = iconCompat.d;
        if (versionedParcel.j(3)) {
            parcelable = versionedParcel.m();
        }
        iconCompat.d = parcelable;
        iconCompat.e = versionedParcel.l(iconCompat.e, 4);
        iconCompat.f = versionedParcel.l(iconCompat.f, 5);
        Parcelable parcelable2 = iconCompat.g;
        if (versionedParcel.j(6)) {
            parcelable2 = versionedParcel.m();
        }
        iconCompat.g = (ColorStateList) parcelable2;
        String str = iconCompat.i;
        if (versionedParcel.j(7)) {
            str = versionedParcel.n();
        }
        iconCompat.i = str;
        String str2 = iconCompat.j;
        if (versionedParcel.j(8)) {
            str2 = versionedParcel.n();
        }
        iconCompat.j = str2;
        iconCompat.h = PorterDuff.Mode.valueOf(iconCompat.i);
        switch (iconCompat.f691a) {
            case -1:
                Parcelable parcelable3 = iconCompat.d;
                if (parcelable3 != null) {
                    iconCompat.b = parcelable3;
                    return iconCompat;
                }
                throw new IllegalArgumentException("Invalid icon");
            case 0:
            default:
                return iconCompat;
            case 1:
            case 5:
                Parcelable parcelable4 = iconCompat.d;
                if (parcelable4 != null) {
                    iconCompat.b = parcelable4;
                    return iconCompat;
                }
                byte[] bArr2 = iconCompat.f692c;
                iconCompat.b = bArr2;
                iconCompat.f691a = 3;
                iconCompat.e = 0;
                iconCompat.f = bArr2.length;
                return iconCompat;
            case 2:
            case 4:
            case 6:
                String str3 = new String(iconCompat.f692c, Charset.forName("UTF-16"));
                iconCompat.b = str3;
                if (iconCompat.f691a == 2 && iconCompat.j == null) {
                    iconCompat.j = str3.split(":", -1)[0];
                }
                return iconCompat;
            case 3:
                iconCompat.b = iconCompat.f692c;
                return iconCompat;
        }
    }

    public static void write(IconCompat iconCompat, VersionedParcel versionedParcel) {
        versionedParcel.q(true, true);
        boolean f = versionedParcel.f();
        iconCompat.i = iconCompat.h.name();
        switch (iconCompat.f691a) {
            case -1:
                if (!f) {
                    iconCompat.d = (Parcelable) iconCompat.b;
                    break;
                } else {
                    throw new IllegalArgumentException("Can't serialize Icon created with IconCompat#createFromIcon");
                }
            case 1:
            case 5:
                if (f) {
                    Bitmap bitmap = (Bitmap) iconCompat.b;
                    ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
                    bitmap.compress(Bitmap.CompressFormat.PNG, 90, byteArrayOutputStream);
                    iconCompat.f692c = byteArrayOutputStream.toByteArray();
                    break;
                } else {
                    iconCompat.d = (Parcelable) iconCompat.b;
                    break;
                }
            case 2:
                iconCompat.f692c = ((String) iconCompat.b).getBytes(Charset.forName("UTF-16"));
                break;
            case 3:
                iconCompat.f692c = (byte[]) iconCompat.b;
                break;
            case 4:
            case 6:
                iconCompat.f692c = iconCompat.b.toString().getBytes(Charset.forName("UTF-16"));
                break;
        }
        int i = iconCompat.f691a;
        if (-1 != i) {
            versionedParcel.v(i, 1);
        }
        byte[] bArr = iconCompat.f692c;
        if (bArr != null) {
            versionedParcel.p(2);
            versionedParcel.s(bArr);
        }
        Parcelable parcelable = iconCompat.d;
        if (parcelable != null) {
            versionedParcel.p(3);
            versionedParcel.w(parcelable);
        }
        int i2 = iconCompat.e;
        if (i2 != 0) {
            versionedParcel.v(i2, 4);
        }
        int i3 = iconCompat.f;
        if (i3 != 0) {
            versionedParcel.v(i3, 5);
        }
        ColorStateList colorStateList = iconCompat.g;
        if (colorStateList != null) {
            versionedParcel.p(6);
            versionedParcel.w(colorStateList);
        }
        String str = iconCompat.i;
        if (str != null) {
            versionedParcel.p(7);
            versionedParcel.x(str);
        }
        String str2 = iconCompat.j;
        if (str2 != null) {
            versionedParcel.p(8);
            versionedParcel.x(str2);
        }
    }
}
