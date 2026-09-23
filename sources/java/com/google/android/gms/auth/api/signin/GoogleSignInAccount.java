package com.google.android.gms.auth.api.signin;

import android.net.Uri;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.Preconditions;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import com.google.android.gms.common.util.Clock;
import com.google.android.gms.common.util.DefaultClock;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collection;
import java.util.HashSet;
import java.util.List;
import org.json.JSONArray;
import org.json.JSONException;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "GoogleSignInAccountCreator")
@Deprecated
/* loaded from: classes.dex */
public class GoogleSignInAccount extends AbstractSafeParcelable implements ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleSignInAccount> CREATOR = new Object();
    public static final Clock q = DefaultClock.getInstance();

    /* renamed from: c, reason: collision with root package name */
    public final String f3376c;
    public final String f;
    public final String g;
    public final String h;
    public final Uri i;
    public String j;
    public final long k;
    public final String l;
    public final List m;
    public final String n;
    public final String o;
    public final HashSet p = new HashSet();

    public GoogleSignInAccount(String str, String str2, String str3, String str4, Uri uri, String str5, long j, String str6, ArrayList arrayList, String str7, String str8) {
        this.f3376c = str;
        this.f = str2;
        this.g = str3;
        this.h = str4;
        this.i = uri;
        this.j = str5;
        this.k = j;
        this.l = str6;
        this.m = arrayList;
        this.n = str7;
        this.o = str8;
    }

    public static GoogleSignInAccount G(String str) {
        Uri uri;
        String str2;
        String str3;
        String str4;
        String str5;
        String str6;
        String str7 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        String optString = jSONObject.optString("photoUrl");
        if (!TextUtils.isEmpty(optString)) {
            uri = Uri.parse(optString);
        } else {
            uri = null;
        }
        long parseLong = Long.parseLong(jSONObject.getString("expirationTime"));
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("grantedScopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        String optString2 = jSONObject.optString("id");
        if (jSONObject.has("tokenId")) {
            str2 = jSONObject.optString("tokenId");
        } else {
            str2 = null;
        }
        if (jSONObject.has(Scopes.EMAIL)) {
            str3 = jSONObject.optString(Scopes.EMAIL);
        } else {
            str3 = null;
        }
        if (jSONObject.has("displayName")) {
            str4 = jSONObject.optString("displayName");
        } else {
            str4 = null;
        }
        if (jSONObject.has("givenName")) {
            str5 = jSONObject.optString("givenName");
        } else {
            str5 = null;
        }
        if (jSONObject.has("familyName")) {
            str6 = jSONObject.optString("familyName");
        } else {
            str6 = null;
        }
        GoogleSignInAccount googleSignInAccount = new GoogleSignInAccount(optString2, str2, str3, str4, uri, null, parseLong, Preconditions.checkNotEmpty(jSONObject.getString("obfuscatedIdentifier")), new ArrayList((Collection) Preconditions.checkNotNull(hashSet)), str5, str6);
        if (jSONObject.has("serverAuthCode")) {
            str7 = jSONObject.optString("serverAuthCode");
        }
        googleSignInAccount.j = str7;
        return googleSignInAccount;
    }

    public final HashSet F() {
        HashSet hashSet = new HashSet(this.m);
        hashSet.addAll(this.p);
        return hashSet;
    }

    public final String X() {
        JSONObject jSONObject = new JSONObject();
        try {
            String str = this.f3376c;
            if (str != null) {
                jSONObject.put("id", str);
            }
            String str2 = this.f;
            if (str2 != null) {
                jSONObject.put("tokenId", str2);
            }
            String str3 = this.g;
            if (str3 != null) {
                jSONObject.put(Scopes.EMAIL, str3);
            }
            String str4 = this.h;
            if (str4 != null) {
                jSONObject.put("displayName", str4);
            }
            String str5 = this.n;
            if (str5 != null) {
                jSONObject.put("givenName", str5);
            }
            String str6 = this.o;
            if (str6 != null) {
                jSONObject.put("familyName", str6);
            }
            Uri uri = this.i;
            if (uri != null) {
                jSONObject.put("photoUrl", uri.toString());
            }
            String str7 = this.j;
            if (str7 != null) {
                jSONObject.put("serverAuthCode", str7);
            }
            jSONObject.put("expirationTime", this.k);
            jSONObject.put("obfuscatedIdentifier", this.l);
            JSONArray jSONArray = new JSONArray();
            List list = this.m;
            Scope[] scopeArr = (Scope[]) list.toArray(new Scope[list.size()]);
            Arrays.sort(scopeArr, zaa.f3397c);
            for (Scope scope : scopeArr) {
                jSONArray.put(scope.getScopeUri());
            }
            jSONObject.put("grantedScopes", jSONArray);
            jSONObject.remove("serverAuthCode");
            return jSONObject.toString();
        } catch (JSONException e) {
            throw new RuntimeException(e);
        }
    }

    public final boolean equals(Object obj) {
        if (obj != null) {
            if (obj != this) {
                if (obj instanceof GoogleSignInAccount) {
                    GoogleSignInAccount googleSignInAccount = (GoogleSignInAccount) obj;
                    if (googleSignInAccount.l.equals(this.l) && googleSignInAccount.F().equals(F())) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }
        return false;
    }

    public final int hashCode() {
        return ((this.l.hashCode() + 527) * 31) + F().hashCode();
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeString(parcel, 2, this.f3376c, false);
        SafeParcelWriter.writeString(parcel, 3, this.f, false);
        SafeParcelWriter.writeString(parcel, 4, this.g, false);
        SafeParcelWriter.writeString(parcel, 5, this.h, false);
        SafeParcelWriter.writeParcelable(parcel, 6, this.i, i, false);
        SafeParcelWriter.writeString(parcel, 7, this.j, false);
        SafeParcelWriter.writeLong(parcel, 8, this.k);
        SafeParcelWriter.writeString(parcel, 9, this.l, false);
        SafeParcelWriter.writeTypedList(parcel, 10, this.m, false);
        SafeParcelWriter.writeString(parcel, 11, this.n, false);
        SafeParcelWriter.writeString(parcel, 12, this.o, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
