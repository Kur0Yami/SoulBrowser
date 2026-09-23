package com.google.android.gms.internal.ads;

import android.os.Process;
import android.os.RemoteException;
import android.text.TextUtils;
import android.util.Log;
import java.util.IllegalFormatException;
import java.util.Locale;

/* loaded from: classes.dex */
public final class zzgpe {

    /* renamed from: a, reason: collision with root package name */
    public final String f8194a;

    public zzgpe(String str) {
        int myUid = Process.myUid();
        int myPid = Process.myPid();
        StringBuilder sb = new StringBuilder(String.valueOf(myUid).length() + 15 + String.valueOf(myPid).length() + 2);
        androidx.work.impl.workers.a.A(sb, "UID: [", myUid, "]  PID: [", myPid);
        sb.append("] ");
        this.f8194a = sb.toString().concat(str);
    }

    public static String e(String str, String str2, Object... objArr) {
        if (objArr.length > 0) {
            try {
                str2 = String.format(Locale.US, str2, objArr);
            } catch (IllegalFormatException e) {
                Log.e("PlayCore", "Unable to format ".concat(str2), e);
                String join = TextUtils.join(", ", objArr);
                int length = str2.length();
                str2 = android.support.v4.media.a.r(new StringBuilder(String.valueOf(join).length() + length + 2 + 1), str2, " [", join, "]");
            }
        }
        return android.support.v4.media.a.q(new StringBuilder(str.length() + 3 + String.valueOf(str2).length()), str, " : ", str2);
    }

    public final void a(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 4)) {
            Log.i("PlayCore", e(this.f8194a, str, objArr));
        }
    }

    public final void b(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 5)) {
            Log.w("PlayCore", e(this.f8194a, str, objArr));
        }
    }

    public final void c(String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            Log.e("PlayCore", e(this.f8194a, str, objArr));
        }
    }

    public final void d(RemoteException remoteException, String str, Object... objArr) {
        if (Log.isLoggable("PlayCore", 6)) {
            Log.e("PlayCore", e(this.f8194a, str, objArr), remoteException);
        }
    }
}
