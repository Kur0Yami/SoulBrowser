package com.google.android.gms.internal.auth_blockstore;

import com.google.android.gms.auth.blockstore.BlockstoreClient;
import com.google.android.gms.common.api.Api;
import com.google.android.gms.common.api.GoogleApi;

/* loaded from: classes.dex */
public final class zzaa extends GoogleApi implements BlockstoreClient {
    static {
        new Api("Blockstore.API", new Api.AbstractClientBuilder(), new Api.ClientKey());
    }
}
