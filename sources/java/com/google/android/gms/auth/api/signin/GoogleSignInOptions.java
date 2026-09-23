package com.google.android.gms.auth.api.signin;

import android.accounts.Account;
import android.os.Parcel;
import android.os.Parcelable;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.google.android.gms.auth.api.signin.internal.GoogleSignInOptionsExtensionParcelable;
import com.google.android.gms.auth.api.signin.internal.HashAccumulator;
import com.google.android.gms.common.Scopes;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.ReflectedParcelable;
import com.google.android.gms.common.internal.safeparcel.AbstractSafeParcelable;
import com.google.android.gms.common.internal.safeparcel.SafeParcelWriter;
import com.google.android.gms.common.internal.safeparcel.SafeParcelable;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.Comparator;
import java.util.HashMap;
import java.util.HashSet;
import org.json.JSONArray;
import org.json.JSONObject;

@SafeParcelable.Class(creator = "GoogleSignInOptionsCreator")
@Deprecated
/* loaded from: classes.dex */
public class GoogleSignInOptions extends AbstractSafeParcelable implements Api.ApiOptions.Optional, ReflectedParcelable {

    @NonNull
    public static final Parcelable.Creator<GoogleSignInOptions> CREATOR;
    public static final GoogleSignInOptions o;
    public static final Scope p;
    public static final Scope q;
    public static final Scope r;
    public static final Comparator s;

    /* renamed from: c, reason: collision with root package name */
    public final int f3378c;
    public final ArrayList f;
    public final Account g;
    public final boolean h;
    public final boolean i;
    public final boolean j;
    public final String k;
    public final String l;
    public final ArrayList m;
    public final String n;

    @Deprecated
    /* loaded from: classes.dex */
    public static final class Builder {
        public boolean b;

        /* renamed from: c, reason: collision with root package name */
        public boolean f3380c;
        public boolean d;
        public String e;
        public Account f;
        public String g;
        public String i;

        /* renamed from: a, reason: collision with root package name */
        public HashSet f3379a = new HashSet();
        public HashMap h = new HashMap();

        public final GoogleSignInOptions a() {
            HashSet hashSet = this.f3379a;
            if (hashSet.contains(GoogleSignInOptions.r)) {
                Scope scope = GoogleSignInOptions.q;
                if (hashSet.contains(scope)) {
                    hashSet.remove(scope);
                }
            }
            if (this.d && (this.f == null || !hashSet.isEmpty())) {
                hashSet.add(GoogleSignInOptions.p);
            }
            return new GoogleSignInOptions(3, new ArrayList(hashSet), this.f, this.d, this.b, this.f3380c, this.e, this.g, this.h, this.i);
        }
    }

    /* JADX WARN: Type inference failed for: r0v3, types: [java.lang.Object, android.os.Parcelable$Creator<com.google.android.gms.auth.api.signin.GoogleSignInOptions>] */
    /* JADX WARN: Type inference failed for: r0v4, types: [java.lang.Object, java.util.Comparator] */
    static {
        Scope scope = new Scope(Scopes.PROFILE);
        new Scope(Scopes.EMAIL);
        Scope scope2 = new Scope(Scopes.OPEN_ID);
        p = scope2;
        Scope scope3 = new Scope(Scopes.GAMES_LITE);
        q = scope3;
        r = new Scope(Scopes.GAMES);
        Builder builder = new Builder();
        builder.f3379a.add(scope2);
        builder.f3379a.add(scope);
        o = builder.a();
        Builder builder2 = new Builder();
        HashSet hashSet = builder2.f3379a;
        hashSet.add(scope3);
        hashSet.addAll(Arrays.asList(new Scope[0]));
        builder2.a();
        CREATOR = new Object();
        s = new Object();
    }

    public GoogleSignInOptions(int i, ArrayList arrayList, Account account, boolean z, boolean z2, boolean z3, String str, String str2, HashMap hashMap, String str3) {
        this.f3378c = i;
        this.f = arrayList;
        this.g = account;
        this.h = z;
        this.i = z2;
        this.j = z3;
        this.k = str;
        this.l = str2;
        this.m = new ArrayList(hashMap.values());
        this.n = str3;
    }

    public static GoogleSignInOptions F(String str) {
        String str2;
        Account account;
        String str3;
        String str4 = null;
        if (TextUtils.isEmpty(str)) {
            return null;
        }
        JSONObject jSONObject = new JSONObject(str);
        HashSet hashSet = new HashSet();
        JSONArray jSONArray = jSONObject.getJSONArray("scopes");
        int length = jSONArray.length();
        for (int i = 0; i < length; i++) {
            hashSet.add(new Scope(jSONArray.getString(i)));
        }
        if (jSONObject.has("accountName")) {
            str2 = jSONObject.optString("accountName");
        } else {
            str2 = null;
        }
        if (!TextUtils.isEmpty(str2)) {
            account = new Account(str2, "com.google");
        } else {
            account = null;
        }
        ArrayList arrayList = new ArrayList(hashSet);
        boolean z = jSONObject.getBoolean("idTokenRequested");
        boolean z2 = jSONObject.getBoolean("serverAuthRequested");
        boolean z3 = jSONObject.getBoolean("forceCodeForRefreshToken");
        if (jSONObject.has("serverClientId")) {
            str3 = jSONObject.optString("serverClientId");
        } else {
            str3 = null;
        }
        if (jSONObject.has("hostedDomain")) {
            str4 = jSONObject.optString("hostedDomain");
        }
        return new GoogleSignInOptions(3, arrayList, account, z, z2, z3, str3, str4, new HashMap(), null);
    }

    public static HashMap G(ArrayList arrayList) {
        HashMap hashMap = new HashMap();
        if (arrayList != null) {
            int size = arrayList.size();
            int i = 0;
            while (i < size) {
                Object obj = arrayList.get(i);
                i++;
                GoogleSignInOptionsExtensionParcelable googleSignInOptionsExtensionParcelable = (GoogleSignInOptionsExtensionParcelable) obj;
                hashMap.put(Integer.valueOf(googleSignInOptionsExtensionParcelable.f), googleSignInOptionsExtensionParcelable);
            }
        }
        return hashMap;
    }

    public final boolean equals(Object obj) {
        String str = this.k;
        if (obj != null) {
            try {
                GoogleSignInOptions googleSignInOptions = (GoogleSignInOptions) obj;
                ArrayList arrayList = googleSignInOptions.f;
                String str2 = googleSignInOptions.k;
                Account account = googleSignInOptions.g;
                if (this.m.isEmpty() && googleSignInOptions.m.isEmpty()) {
                    ArrayList arrayList2 = this.f;
                    if (arrayList2.size() == new ArrayList(arrayList).size() && arrayList2.containsAll(new ArrayList(arrayList))) {
                        Account account2 = this.g;
                        if (account2 == null) {
                            if (account != null) {
                                return false;
                            }
                        } else if (!account2.equals(account)) {
                            return false;
                        }
                        if (TextUtils.isEmpty(str)) {
                            if (!TextUtils.isEmpty(str2)) {
                                return false;
                            }
                        } else if (!str.equals(str2)) {
                            return false;
                        }
                        if (this.j == googleSignInOptions.j && this.h == googleSignInOptions.h && this.i == googleSignInOptions.i) {
                            if (TextUtils.equals(this.n, googleSignInOptions.n)) {
                                return true;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            } catch (ClassCastException unused) {
                return false;
            }
        }
        return false;
    }

    public final int hashCode() {
        ArrayList arrayList = new ArrayList();
        ArrayList arrayList2 = this.f;
        int size = arrayList2.size();
        for (int i = 0; i < size; i++) {
            arrayList.add(((Scope) arrayList2.get(i)).getScopeUri());
        }
        Collections.sort(arrayList);
        HashAccumulator hashAccumulator = new HashAccumulator();
        hashAccumulator.a(arrayList);
        hashAccumulator.a(this.g);
        hashAccumulator.a(this.k);
        hashAccumulator.f3384a = (((((hashAccumulator.f3384a * 31) + (this.j ? 1 : 0)) * 31) + (this.h ? 1 : 0)) * 31) + (this.i ? 1 : 0);
        hashAccumulator.a(this.n);
        return hashAccumulator.f3384a;
    }

    @Override // android.os.Parcelable
    public final void writeToParcel(Parcel parcel, int i) {
        int beginObjectHeader = SafeParcelWriter.beginObjectHeader(parcel);
        SafeParcelWriter.writeInt(parcel, 1, this.f3378c);
        SafeParcelWriter.writeTypedList(parcel, 2, new ArrayList(this.f), false);
        SafeParcelWriter.writeParcelable(parcel, 3, this.g, i, false);
        SafeParcelWriter.writeBoolean(parcel, 4, this.h);
        SafeParcelWriter.writeBoolean(parcel, 5, this.i);
        SafeParcelWriter.writeBoolean(parcel, 6, this.j);
        SafeParcelWriter.writeString(parcel, 7, this.k, false);
        SafeParcelWriter.writeString(parcel, 8, this.l, false);
        SafeParcelWriter.writeTypedList(parcel, 9, this.m, false);
        SafeParcelWriter.writeString(parcel, 10, this.n, false);
        SafeParcelWriter.finishObjectHeader(parcel, beginObjectHeader);
    }
}
