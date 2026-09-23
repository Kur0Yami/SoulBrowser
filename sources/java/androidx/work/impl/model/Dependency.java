package androidx.work.impl.model;

import androidx.annotation.RestrictTo;
import androidx.room.Entity;

@Entity
@RestrictTo
/* loaded from: classes.dex */
public class Dependency {

    /* renamed from: a, reason: collision with root package name */
    public final String f1924a;
    public final String b;

    public Dependency(String str, String str2) {
        this.f1924a = str;
        this.b = str2;
    }
}
