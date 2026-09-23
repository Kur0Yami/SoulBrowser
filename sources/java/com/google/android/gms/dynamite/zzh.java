package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
final class zzh implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult a(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) {
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int b = iVersions.b(context, str);
        selectionResult.f3730a = b;
        if (b != 0) {
            selectionResult.f3731c = -1;
            return selectionResult;
        }
        int a2 = iVersions.a(context, str, true);
        selectionResult.b = a2;
        if (a2 != 0) {
            selectionResult.f3731c = 1;
        }
        return selectionResult;
    }
}
