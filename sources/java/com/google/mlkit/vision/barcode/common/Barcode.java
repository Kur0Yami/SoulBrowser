package com.google.mlkit.vision.barcode.common;

import com.google.android.gms.common.internal.Preconditions;
import com.google.mlkit.vision.barcode.common.internal.BarcodeSource;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;

/* loaded from: classes3.dex */
public class Barcode {

    /* renamed from: a, reason: collision with root package name */
    public final BarcodeSource f12799a;

    /* loaded from: classes3.dex */
    public static class Address {

        @Retention(RetentionPolicy.CLASS)
        /* loaded from: classes3.dex */
        public @interface AddressType {
        }
    }

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface BarcodeFormat {
    }

    @Retention(RetentionPolicy.CLASS)
    /* loaded from: classes3.dex */
    public @interface BarcodeValueType {
    }

    /* loaded from: classes3.dex */
    public static class CalendarDateTime {
    }

    /* loaded from: classes3.dex */
    public static class CalendarEvent {
    }

    /* loaded from: classes3.dex */
    public static class ContactInfo {
    }

    /* loaded from: classes3.dex */
    public static class DriverLicense {
    }

    /* loaded from: classes3.dex */
    public static class Email {

        @Retention(RetentionPolicy.CLASS)
        /* loaded from: classes3.dex */
        public @interface FormatType {
        }
    }

    /* loaded from: classes3.dex */
    public static class GeoPoint {
    }

    /* loaded from: classes3.dex */
    public static class PersonName {
    }

    /* loaded from: classes3.dex */
    public static class Phone {

        @Retention(RetentionPolicy.CLASS)
        /* loaded from: classes3.dex */
        public @interface FormatType {
        }
    }

    /* loaded from: classes3.dex */
    public static class Sms {
    }

    /* loaded from: classes3.dex */
    public static class UrlBookmark {
    }

    /* loaded from: classes3.dex */
    public static class WiFi {

        @Retention(RetentionPolicy.CLASS)
        /* loaded from: classes3.dex */
        public @interface EncryptionType {
        }
    }

    public Barcode(BarcodeSource barcodeSource) {
        this.f12799a = (BarcodeSource) Preconditions.checkNotNull(barcodeSource);
    }
}
