package com.google.android.gms.internal.play_billing;

import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes3.dex */
public enum zzb {
    RESPONSE_CODE_UNSPECIFIED(-999),
    /* JADX INFO: Fake field, exist only in values array */
    SERVICE_TIMEOUT(-3),
    /* JADX INFO: Fake field, exist only in values array */
    FEATURE_NOT_SUPPORTED(-2),
    /* JADX INFO: Fake field, exist only in values array */
    SERVICE_DISCONNECTED(-1),
    /* JADX INFO: Fake field, exist only in values array */
    OK(0),
    /* JADX INFO: Fake field, exist only in values array */
    USER_CANCELED(1),
    /* JADX INFO: Fake field, exist only in values array */
    SERVICE_UNAVAILABLE(2),
    /* JADX INFO: Fake field, exist only in values array */
    BILLING_UNAVAILABLE(3),
    /* JADX INFO: Fake field, exist only in values array */
    ITEM_UNAVAILABLE(4),
    /* JADX INFO: Fake field, exist only in values array */
    DEVELOPER_ERROR(5),
    /* JADX INFO: Fake field, exist only in values array */
    ERROR(6),
    /* JADX INFO: Fake field, exist only in values array */
    ITEM_ALREADY_OWNED(7),
    /* JADX INFO: Fake field, exist only in values array */
    ITEM_NOT_OWNED(8),
    /* JADX INFO: Fake field, exist only in values array */
    EXPIRED_OFFER_TOKEN(11),
    /* JADX INFO: Fake field, exist only in values array */
    NETWORK_ERROR(12);

    public static final zzbz g;

    /* renamed from: c, reason: collision with root package name */
    public final int f11448c;

    /* JADX WARN: Type inference failed for: r0v3, types: [com.google.android.gms.internal.play_billing.zzby, java.lang.Object] */
    static {
        ?? obj = new Object();
        obj.f11460a = new Object[8];
        obj.b = 0;
        for (zzb zzbVar : values()) {
            Integer valueOf = Integer.valueOf(zzbVar.f11448c);
            int i = obj.b + 1;
            Object[] objArr = obj.f11460a;
            int length = objArr.length;
            int i2 = i + i;
            if (i2 > length) {
                if (i2 > length) {
                    length = length + (length >> 1) + 1;
                    if (length < i2) {
                        int highestOneBit = Integer.highestOneBit(i2 - 1);
                        length = highestOneBit + highestOneBit;
                    }
                    if (length < 0) {
                        length = Integer.MAX_VALUE;
                    }
                }
                obj.f11460a = Arrays.copyOf(objArr, length);
            }
            Object[] objArr2 = obj.f11460a;
            int i3 = obj.b;
            int i4 = i3 + i3;
            objArr2[i4] = valueOf;
            objArr2[i4 + 1] = zzbVar;
            obj.b = i3 + 1;
        }
        zzbx zzbxVar = obj.f11461c;
        if (zzbxVar == null) {
            zzci e = zzci.e(obj.b, obj.f11460a, obj);
            zzbx zzbxVar2 = obj.f11461c;
            if (zzbxVar2 == null) {
                g = e;
                return;
            }
            throw zzbxVar2.a();
        }
        throw zzbxVar.a();
    }

    zzb(int i) {
        this.f11448c = i;
    }
}
