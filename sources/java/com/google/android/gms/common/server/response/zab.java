package com.google.android.gms.common.server.response;

import androidx.annotation.Nullable;
import java.io.BufferedReader;

/* loaded from: classes.dex */
final class zab implements zai {
    @Override // com.google.android.gms.common.server.response.zai
    @Nullable
    public final /* synthetic */ Object zaa(FastParser fastParser, BufferedReader bufferedReader) {
        return Long.valueOf(fastParser.zac(bufferedReader));
    }
}
