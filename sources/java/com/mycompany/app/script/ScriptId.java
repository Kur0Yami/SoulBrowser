package com.mycompany.app.script;

import android.text.TextUtils;

/* loaded from: classes3.dex */
public class ScriptId {

    /* renamed from: a, reason: collision with root package name */
    public final String f17548a;
    public final String b;

    public ScriptId(String str, String str2) {
        this.f17548a = str;
        this.b = str2;
    }

    public final boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        ScriptId scriptId = (ScriptId) obj;
        String str = scriptId.b;
        String str2 = scriptId.f17548a;
        String str3 = this.f17548a;
        if (str3 == null) {
            if (str2 != null) {
                return false;
            }
        } else if (!str3.equals(str2)) {
            return false;
        }
        String str4 = this.b;
        if (str4 == null) {
            if (str != null) {
                return false;
            }
        } else if (!str4.equals(str)) {
            return false;
        }
        return true;
    }

    public final int hashCode() {
        int hashCode;
        int i = 0;
        String str = this.f17548a;
        if (str == null) {
            hashCode = 0;
        } else {
            hashCode = str.hashCode();
        }
        int i2 = (hashCode + 31) * 31;
        String str2 = this.b;
        if (str2 != null) {
            i = str2.hashCode();
        }
        return i2 + i;
    }

    public final String toString() {
        StringBuilder sb = new StringBuilder();
        sb.append(this.f17548a);
        String str = this.b;
        if (!TextUtils.isEmpty(str)) {
            sb.append(", ");
            sb.append(str);
        }
        return sb.toString();
    }
}
