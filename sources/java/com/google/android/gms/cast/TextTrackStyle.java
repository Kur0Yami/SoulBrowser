package com.google.android.gms.cast;

import android.graphics.Color;
import android.os.Parcel;
import android.os.Parcelable;
import androidx.annotation.NonNull;
import com.google.android.gms.cast.internal.CastUtils;
import com.google.android.gms.common.annotation.KeepForSdk;
import com.google.android.gms.common.internal.Objects;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.JsonUtils;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "TextTrackStyleCreator")
@SafeParcelable.Reserved({1})
/* loaded from: classes.dex */
public final class TextTrackStyle extends AbstractSafeParcelable {

    @NonNull
    @KeepForSdk
    public static final Parcelable.Creator<TextTrackStyle> CREATOR = new Object();

    /* renamed from: c, reason: collision with root package name */
    public float f3460c;
    public int f;
    public int g;
    public int h;
    public int i;
    public int j;
    public int k;
    public int l;
    public String m;
    public int n;
    public int o;
    public String p;
    public JSONObject q;

    public TextTrackStyle(float f, int i, int i2, int i3, int i4, int i5, int i6, int i7, String str, int i8, int i9, String str2) {
        this.f3460c = f;
        this.f = i;
        this.g = i2;
        this.h = i3;
        this.i = i4;
        this.j = i5;
        this.k = i6;
        this.l = i7;
        this.m = str;
        this.n = i8;
        this.o = i9;
        this.p = str2;
        if (str2 != null) {
            try {
                this.q = new JSONObject(this.p);
                return;
            } catch (JSONException unused) {
                this.q = null;
                this.p = null;
                return;
            }
        }
        this.q = null;
    }

    public static final int G(String str) {
        if (str != null && str.length() == 9 && str.charAt(0) == '#') {
            try {
                return Color.argb(Integer.parseInt(str.substring(7, 9), 16), Integer.parseInt(str.substring(1, 3), 16), Integer.parseInt(str.substring(3, 5), 16), Integer.parseInt(str.substring(5, 7), 16));
            } catch (NumberFormatException unused) {
            }
        }
        return 0;
    }

    public static final String X(int i) {
        return String.format("#%02X%02X%02X%02X", Integer.valueOf(Color.red(i)), Integer.valueOf(Color.green(i)), Integer.valueOf(Color.blue(i)), Integer.valueOf(Color.alpha(i)));
    }

    public final JSONObject F() {
        JSONObject jSONObject = new JSONObject();
        try {
            jSONObject.put("fontScale", this.f3460c);
            int i = this.f;
            if (i != 0) {
                jSONObject.put("foregroundColor", X(i));
            }
            int i2 = this.g;
            if (i2 != 0) {
                jSONObject.put("backgroundColor", X(i2));
            }
            int i3 = this.h;
            if (i3 != 0) {
                if (i3 != 1) {
                    if (i3 != 2) {
                        if (i3 != 3) {
                            if (i3 == 4) {
                                jSONObject.put("edgeType", "DEPRESSED");
                            }
                        } else {
                            jSONObject.put("edgeType", "RAISED");
                        }
                    } else {
                        jSONObject.put("edgeType", "DROP_SHADOW");
                    }
                } else {
                    jSONObject.put("edgeType", "OUTLINE");
                }
            } else {
                jSONObject.put("edgeType", "NONE");
            }
            int i4 = this.i;
            if (i4 != 0) {
                jSONObject.put("edgeColor", X(i4));
            }
            int i5 = this.j;
            if (i5 != 0) {
                if (i5 != 1) {
                    if (i5 == 2) {
                        jSONObject.put("windowType", "ROUNDED_CORNERS");
                    }
                } else {
                    jSONObject.put("windowType", "NORMAL");
                }
            } else {
                jSONObject.put("windowType", "NONE");
            }
            int i6 = this.k;
            if (i6 != 0) {
                jSONObject.put("windowColor", X(i6));
            }
            if (this.j == 2) {
                jSONObject.put("windowRoundedCornerRadius", this.l);
            }
            String str = this.m;
            if (str != null) {
                jSONObject.put("fontFamily", str);
            }
            switch (this.n) {
                case 0:
                    jSONObject.put("fontGenericFamily", "SANS_SERIF");
                    break;
                case 1:
                    jSONObject.put("fontGenericFamily", "MONOSPACED_SANS_SERIF");
                    break;
                case 2:
                    jSONObject.put("fontGenericFamily", "SERIF");
                    break;
                case 3:
                    jSONObject.put("fontGenericFamily", "MONOSPACED_SERIF");
                    break;
                case 4:
                    jSONObject.put("fontGenericFamily", "CASUAL");
                    break;
                case 5:
                    jSONObject.put("fontGenericFamily", "CURSIVE");
                    break;
                case 6:
                    jSONObject.put("fontGenericFamily", "SMALL_CAPITALS");
                    break;
            }
            int i7 = this.o;
            if (i7 != 0) {
                if (i7 != 1) {
                    if (i7 != 2) {
                        if (i7 == 3) {
                            jSONObject.put("fontStyle", "BOLD_ITALIC");
                        }
                    } else {
                        jSONObject.put("fontStyle", "ITALIC");
                    }
                } else {
                    jSONObject.put("fontStyle", "BOLD");
                }
            } else {
                jSONObject.put("fontStyle", "NORMAL");
            }
            JSONObject jSONObject2 = this.q;
            if (jSONObject2 != null) {
                jSONObject.put("customData", jSONObject2);
            }
        } catch (JSONException unused) {
        }
        return jSONObject;
    }

    public final boolean equals(Object obj) {
        boolean z;
        boolean z2;
        if (this == obj) {
            return true;
        }
        if (!(obj instanceof TextTrackStyle)) {
            return false;
        }
        TextTrackStyle textTrackStyle = (TextTrackStyle) obj;
        JSONObject jSONObject = this.q;
        if (jSONObject != null) {
            z = false;
        } else {
            z = true;
        }
        JSONObject jSONObject2 = textTrackStyle.q;
        if (jSONObject2 != null) {
            z2 = false;
        } else {
            z2 = true;
        }
        if (z != z2) {
            return false;
        }
        if ((jSONObject == null || jSONObject2 == null || JsonUtils.areJsonValuesEquivalent(jSONObject, jSONObject2)) && this.f3460c == textTrackStyle.f3460c && this.f == textTrackStyle.f && this.g == textTrackStyle.g && this.h == textTrackStyle.h && this.i == textTrackStyle.i && this.j == textTrackStyle.j && this.k == textTrackStyle.k && this.l == textTrackStyle.l && CastUtils.c(this.m, textTrackStyle.m) && this.n == textTrackStyle.n && this.o == textTrackStyle.o) {
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return Objects.hashCode(Float.valueOf(this.f3460c), Integer.valueOf(this.f), Integer.valueOf(this.g), Integer.valueOf(this.h), Integer.valueOf(this.i), Integer.valueOf(this.j), Integer.valueOf(this.k), Integer.valueOf(this.l), this.m, Integer.valueOf(this.n), Integer.valueOf(this.o), String.valueOf(this.q));
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        String jSONObject;
        JSONObject jSONObject2 = this.q;
        if (jSONObject2 == null) {
            jSONObject = null;
        } else {
            jSONObject = jSONObject2.toString();
        }
        this.p = jSONObject;
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeFloat(parcel, 2, this.f3460c);
        SafeParcelWriter.writeInt(parcel, 3, this.f);
        SafeParcelWriter.writeInt(parcel, 4, this.g);
        SafeParcelWriter.writeInt(parcel, 5, this.h);
        SafeParcelWriter.writeInt(parcel, 6, this.i);
        SafeParcelWriter.writeInt(parcel, 7, this.j);
        SafeParcelWriter.writeInt(parcel, 8, this.k);
        SafeParcelWriter.writeInt(parcel, 9, this.l);
        SafeParcelWriter.writeString(parcel, 10, this.m, false);
        SafeParcelWriter.writeInt(parcel, 11, this.n);
        SafeParcelWriter.writeInt(parcel, 12, this.o);
        SafeParcelWriter.writeString(parcel, 13, this.p, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
