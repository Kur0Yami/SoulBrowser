package androidx.core.app;

import android.app.Person;
import androidx.annotation.RequiresApi;
import j$.util.Objects;

/* loaded from: classes.dex */
public class Person {

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api22Impl {
    }

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api28Impl {
        public static android.app.Person a(Person person) {
            return new Person.Builder().setName(null).setIcon(null).setUri(null).setKey(null).setBot(false).setImportant(false).build();
        }
    }

    /* loaded from: classes.dex */
    public static class Builder {
    }

    public final boolean equals(Object obj) {
        if (obj == null || !(obj instanceof Person)) {
            return false;
        }
        if ("null".equals("null")) {
            Object obj2 = Boolean.FALSE;
            if (obj2.equals(obj2) && obj2.equals(obj2)) {
                return true;
            }
        }
        return false;
    }

    public final int hashCode() {
        Boolean bool = Boolean.FALSE;
        return Objects.hash(null, null, bool, bool);
    }
}
