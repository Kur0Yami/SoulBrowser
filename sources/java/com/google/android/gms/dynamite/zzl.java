package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
final class zzl implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult a(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) {
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        selectionResult.f3730a = iVersions.b(context, str);
        int i = 1;
        int a2 = iVersions.a(context, str, true);
        selectionResult.b = a2;
        int i2 = selectionResult.f3730a;
        if (i2 == 0) {
            i2 = 0;
            if (a2 == 0) {
                i = 0;
                selectionResult.f3731c = i;
                return selectionResult;
            }
        }
        if (a2 < i2) {
            i = -1;
        }
        selectionResult.f3731c = i;
        return selectionResult;
    }
}
