package com.google.android.gms.auth;

import android.content.Intent;
import com.google.android.gms.common.annotation.KeepName;
import com.google.android.gms.common.internal.Preconditions;

@KeepName
/* loaded from: classes.dex */
public class UserRecoverableAuthException extends GoogleAuthException {
    public static final /* synthetic */ int g = 0;

    /* renamed from: c, reason: collision with root package name */
    public final Intent f3338c;
    public final zzn f;

    public UserRecoverableAuthException(String str, Intent intent) {
        this(str, intent, zzn.f3423c);
    }

    public UserRecoverableAuthException(String str, Intent intent, zzn zznVar) {
        super(str);
        this.f3338c = intent;
        this.f = (zzn) Preconditions.checkNotNull(zznVar);
    }
}
