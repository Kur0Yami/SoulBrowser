package com.google.android.gms.common.internal;

import android.content.Context;
import android.content.res.Resources;
import android.support.v4.media.a;
import android.util.AttributeSet;
import android.util.Log;
import android.util.TypedValue;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.annotation.KeepForSdk;

@KeepForSdk
/* loaded from: classes.dex */
public class ViewUtils {
    private ViewUtils() {
    }

    @Nullable
    @KeepForSdk
    public static String getXmlAttributeString(@NonNull String str, @NonNull String str2, @NonNull Context context, @NonNull AttributeSet attributeSet, boolean z, boolean z2, @NonNull String str3) {
        String attributeValue;
        if (attributeSet == null) {
            attributeValue = null;
        } else {
            attributeValue = attributeSet.getAttributeValue(str, str2);
        }
        if (attributeValue != null && attributeValue.startsWith("@string/") && z) {
            String substring = attributeValue.substring(8);
            String packageName = context.getPackageName();
            TypedValue typedValue = new TypedValue();
            try {
                Resources resources = context.getResources();
                StringBuilder sb = new StringBuilder(String.valueOf(packageName).length() + 8 + String.valueOf(substring).length());
                sb.append(packageName);
                sb.append(":string/");
                sb.append(substring);
                resources.getValue(sb.toString(), typedValue, true);
            } catch (Resources.NotFoundException unused) {
                Log.w(str3, a.r(new StringBuilder(androidx.work.impl.workers.a.e(30, str2) + attributeValue.length()), "Could not find resource for ", str2, ": ", attributeValue));
            }
            CharSequence charSequence = typedValue.string;
            if (charSequence != null) {
                attributeValue = charSequence.toString();
            } else {
                String obj = typedValue.toString();
                Log.w(str3, a.r(new StringBuilder(androidx.work.impl.workers.a.e(28, str2) + obj.length()), "Resource ", str2, " was not a string: ", obj));
            }
        }
        if (z2 && attributeValue == null) {
            StringBuilder sb2 = new StringBuilder(String.valueOf(str2).length() + 33);
            sb2.append("Required XML attribute \"");
            sb2.append(str2);
            sb2.append("\" missing");
            Log.w(str3, sb2.toString());
        }
        return attributeValue;
    }
}
