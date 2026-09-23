package com.google.android.gms.cast;

import android.os.Parcelable;

/* loaded from: classes.dex */
public final class zzbt implements Parcelable.Creator {
    /* JADX WARN: Failed to find 'out' block for switch in B:6:0x002a. Please report as an issue. */
    /* JADX WARN: Removed duplicated region for block: B:5:0x0022  */
    @Override // android.os.Parcelable.Creator
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct add '--show-bad-code' argument
    */
    public final java.lang.Object createFromParcel(android.os.Parcel r24) {
        /*
            r23 = this;
            r0 = r24
            int r1 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.validateObjectHeader(r0)
            r2 = 0
            r4 = 0
            r5 = 0
            r11 = r2
            r21 = r11
            r2 = r4
            r8 = r2
            r9 = r8
            r10 = r9
            r15 = r10
            r17 = r15
            r18 = r17
            r19 = r18
            r20 = r19
        L1b:
            r13 = r5
        L1c:
            int r3 = r0.dataPosition()
            if (r3 >= r1) goto L7a
            int r3 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readHeader(r0)
            int r5 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.getFieldId(r3)
            switch(r5) {
                case 2: goto L70;
                case 3: goto L66;
                case 4: goto L61;
                case 5: goto L5b;
                case 6: goto L56;
                case 7: goto L51;
                case 8: goto L4c;
                case 9: goto L47;
                case 10: goto L42;
                case 11: goto L3d;
                case 12: goto L38;
                case 13: goto L31;
                default: goto L2d;
            }
        L2d:
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.skipUnknownField(r0, r3)
            goto L1c
        L31:
            long r5 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readLong(r0, r3)
            r21 = r5
            goto L1c
        L38:
            java.lang.String r20 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r3)
            goto L1c
        L3d:
            java.lang.String r19 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r3)
            goto L1c
        L42:
            java.lang.String r18 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r3)
            goto L1c
        L47:
            java.lang.String r17 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r3)
            goto L1c
        L4c:
            java.lang.String r2 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createString(r0, r3)
            goto L1c
        L51:
            long[] r15 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createLongArray(r0, r3)
            goto L1c
        L56:
            double r5 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readDouble(r0, r3)
            goto L1b
        L5b:
            long r5 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readLong(r0, r3)
            r11 = r5
            goto L1c
        L61:
            java.lang.Boolean r10 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.readBooleanObject(r0, r3)
            goto L1c
        L66:
            android.os.Parcelable$Creator<com.google.android.gms.cast.MediaQueueData> r5 = com.google.android.gms.cast.MediaQueueData.CREATOR
            android.os.Parcelable r3 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createParcelable(r0, r3, r5)
            r9 = r3
            com.google.android.gms.cast.MediaQueueData r9 = (com.google.android.gms.cast.MediaQueueData) r9
            goto L1c
        L70:
            android.os.Parcelable$Creator<com.google.android.gms.cast.MediaInfo> r5 = com.google.android.gms.cast.MediaInfo.CREATOR
            android.os.Parcelable r3 = com.google.android.gms.common.internal.safeparcel.SafeParcelReader.createParcelable(r0, r3, r5)
            r8 = r3
            com.google.android.gms.cast.MediaInfo r8 = (com.google.android.gms.cast.MediaInfo) r8
            goto L1c
        L7a:
            com.google.android.gms.common.internal.safeparcel.SafeParcelReader.ensureAtEnd(r0, r1)
            com.google.android.gms.cast.MediaLoadRequestData r7 = new com.google.android.gms.cast.MediaLoadRequestData
            java.util.regex.Pattern r0 = com.google.android.gms.cast.internal.CastUtils.f3603a
            if (r2 != 0) goto L86
        L83:
            r16 = r4
            goto L8d
        L86:
            org.json.JSONObject r0 = new org.json.JSONObject     // Catch: org.json.JSONException -> L83
            r0.<init>(r2)     // Catch: org.json.JSONException -> L83
            r16 = r0
        L8d:
            r7.<init>(r8, r9, r10, r11, r13, r15, r16, r17, r18, r19, r20, r21)
            return r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.cast.zzbt.createFromParcel(android.os.Parcel):java.lang.Object");
    }

    @Override // android.os.Parcelable.Creator
    public final /* synthetic */ Object[] newArray(int i) {
        return new MediaLoadRequestData[i];
    }
}
