package com.google.android.gms.internal.drive;

/* loaded from: classes.dex */
final class zzkj implements zzlp {

    /* renamed from: a, reason: collision with root package name */
    public static final zzkj f10219a = new Object();

    @Override // com.google.android.gms.internal.drive.zzlp
    public final boolean a(Class cls) {
        return zzkk.class.isAssignableFrom(cls);
    }

    @Override // com.google.android.gms.internal.drive.zzlp
    public final zzlo b(Class cls) {
        String str;
        String str2;
        if (!zzkk.class.isAssignableFrom(cls)) {
            String name = cls.getName();
            if (name.length() != 0) {
                str2 = "Unsupported message type: ".concat(name);
            } else {
                str2 = new String("Unsupported message type: ");
            }
            throw new IllegalArgumentException(str2);
        }
        try {
            return (zzlo) zzkk.l(cls.asSubclass(zzkk.class)).i(3, null);
        } catch (Exception e) {
            String name2 = cls.getName();
            if (name2.length() != 0) {
                str = "Unable to get message info for ".concat(name2);
            } else {
                str = new String("Unable to get message info for ");
            }
            throw new RuntimeException(str, e);
        }
    }
}
