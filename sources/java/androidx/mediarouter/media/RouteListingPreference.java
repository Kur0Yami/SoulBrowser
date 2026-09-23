package androidx.mediarouter.media;

import android.media.RouteListingPreference;
import android.text.TextUtils;
import androidx.annotation.RequiresApi;
import androidx.annotation.RestrictTo;
import j$.util.Objects;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.util.ArrayList;
import java.util.List;

/* loaded from: classes.dex */
public final class RouteListingPreference {

    /* renamed from: a, reason: collision with root package name */
    public final List f1415a;
    public final boolean b;

    @RequiresApi
    /* loaded from: classes.dex */
    public static class Api34Impl {
        public static android.media.RouteListingPreference a(RouteListingPreference routeListingPreference) {
            ArrayList arrayList = new ArrayList();
            for (Item item : routeListingPreference.f1415a) {
                arrayList.add(new RouteListingPreference.Item.Builder(item.f1417a).setFlags(0).setSubText(0).setCustomSubtextMessage(null).setSelectionBehavior(item.b).build());
            }
            return new RouteListingPreference.Builder().setItems(arrayList).setLinkedItemComponentName(null).setUseSystemOrdering(routeListingPreference.b).build();
        }
    }

    /* loaded from: classes.dex */
    public static final class Builder {

        /* renamed from: a, reason: collision with root package name */
        public List f1416a;
        public boolean b;
    }

    /* loaded from: classes.dex */
    public static final class Item {

        /* renamed from: a, reason: collision with root package name */
        public final String f1417a;
        public final int b;

        /* loaded from: classes.dex */
        public static final class Builder {

            /* renamed from: a, reason: collision with root package name */
            public final String f1418a;
            public final int b;

            public Builder(String str) {
                if (!TextUtils.isEmpty(str)) {
                    this.f1418a = str;
                    this.b = 1;
                    return;
                }
                throw new IllegalArgumentException();
            }
        }

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface Flags {
        }

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface SelectionBehavior {
        }

        @Retention(RetentionPolicy.SOURCE)
        @RestrictTo
        /* loaded from: classes.dex */
        public @interface SubText {
        }

        public Item(Builder builder) {
            this.f1417a = builder.f1418a;
            this.b = builder.b;
        }

        public final boolean equals(Object obj) {
            if (this != obj) {
                if (obj instanceof Item) {
                    Item item = (Item) obj;
                    if (this.f1417a.equals(item.f1417a) && this.b == item.b && TextUtils.equals(null, null)) {
                        return true;
                    }
                    return false;
                }
                return false;
            }
            return true;
        }

        public final int hashCode() {
            return Objects.hash(this.f1417a, Integer.valueOf(this.b), 0, 0, null);
        }
    }

    public RouteListingPreference(Builder builder) {
        this.f1415a = builder.f1416a;
        this.b = builder.b;
    }

    public final boolean equals(Object obj) {
        if (this != obj) {
            if (obj instanceof RouteListingPreference) {
                RouteListingPreference routeListingPreference = (RouteListingPreference) obj;
                if (this.f1415a.equals(routeListingPreference.f1415a) && this.b == routeListingPreference.b) {
                    return true;
                }
                return false;
            }
            return false;
        }
        return true;
    }

    public final int hashCode() {
        return Objects.hash(this.f1415a, Boolean.valueOf(this.b), null);
    }
}
