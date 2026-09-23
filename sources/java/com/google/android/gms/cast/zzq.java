package com.google.android.gms.cast;

import com.google.android.gms.cast.framework.media.RemoteMediaClient;
import com.google.android.gms.common.api.HasApiKey;
import com.google.android.gms.common.internal.ShowFirstParty;
import com.google.android.gms.tasks.Task;

@ShowFirstParty
/* loaded from: classes.dex */
public interface zzq extends HasApiKey {
    Task a(String str);

    Task d(String str, String str2);

    Task e(String str, RemoteMediaClient remoteMediaClient);
}
