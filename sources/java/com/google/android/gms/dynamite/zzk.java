package com.google.android.gms.dynamite;

import android.content.Context;
import com.google.android.gms.dynamite.DynamiteModule;

/* loaded from: classes.dex */
final class zzk implements DynamiteModule.VersionPolicy {
    @Override // com.google.android.gms.dynamite.DynamiteModule.VersionPolicy
    public final DynamiteModule.VersionPolicy.SelectionResult a(Context context, String str, DynamiteModule.VersionPolicy.IVersions iVersions) {
        int a2;
        DynamiteModule.VersionPolicy.SelectionResult selectionResult = new DynamiteModule.VersionPolicy.SelectionResult();
        int b = iVersions.b(context, str);
        selectionResult.f3730a = b;
        int i = 1;
        int i2 = 0;
        if (b != 0) {
            a2 = iVersions.a(context, str, false);
            selectionResult.b = a2;
        } else {
            a2 = iVersions.a(context, str, true);
            selectionResult.b = a2;
        }
        int i3 = selectionResult.f3730a;
        if (i3 == 0) {
            if (a2 == 0) {
                i = 0;
                selectionResult.f3731c = i;
                return selectionResult;
            }
        } else {
            i2 = i3;
        }
        if (i2 >= a2) {
            i = -1;
        }
        selectionResult.f3731c = i;
        return selectionResult;
    }
}
