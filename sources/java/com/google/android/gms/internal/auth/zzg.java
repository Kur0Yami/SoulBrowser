package com.google.android.gms.internal.auth;

import android.accounts.Account;
import android.os.Bundle;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.tasks.Task;

/* loaded from: classes.dex */
public interface zzg extends HasApiKey {
    Task c(Account account, String str, Bundle bundle);

    Task f(zzbw zzbwVar);
}
