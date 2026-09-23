package com.google.gson;

import com.google.gson.internal.LazilyParsedNumber;
import com.google.gson.internal.NumberLimits;
import j$.util.Objects;
import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes3.dex */
public final class JsonPrimitive extends JsonElement {

    /* renamed from: c, reason: collision with root package name */
    public final Serializable f12672c;

    public JsonPrimitive(Boolean bool) {
        Objects.requireNonNull(bool);
        this.f12672c = bool;
    }

    public static boolean t(JsonPrimitive jsonPrimitive) {
        Serializable serializable = jsonPrimitive.f12672c;
        if (serializable instanceof Number) {
            Number number = (Number) serializable;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.gson.JsonElement
    public final boolean a() {
        Serializable serializable = this.f12672c;
        if (serializable instanceof Boolean) {
            return ((Boolean) serializable).booleanValue();
        }
        return Boolean.parseBoolean(p());
    }

    @Override // com.google.gson.JsonElement
    public final float c() {
        if (this.f12672c instanceof Number) {
            return s().floatValue();
        }
        return Float.parseFloat(p());
    }

    public final boolean equals(Object obj) {
        BigDecimal b;
        BigDecimal b2;
        if (this != obj) {
            if (obj != null && JsonPrimitive.class == obj.getClass()) {
                JsonPrimitive jsonPrimitive = (JsonPrimitive) obj;
                Serializable serializable = jsonPrimitive.f12672c;
                Serializable serializable2 = this.f12672c;
                if (serializable2 == null) {
                    if (serializable == null) {
                        return true;
                    }
                    return false;
                }
                if (t(this) && t(jsonPrimitive)) {
                    if (!(serializable2 instanceof BigInteger) && !(serializable instanceof BigInteger)) {
                        if (s().longValue() == jsonPrimitive.s().longValue()) {
                            return true;
                        }
                        return false;
                    }
                    return q().equals(jsonPrimitive.q());
                }
                if ((serializable2 instanceof Number) && (serializable instanceof Number)) {
                    if ((serializable2 instanceof BigDecimal) && (serializable instanceof BigDecimal)) {
                        if (serializable2 instanceof BigDecimal) {
                            b = (BigDecimal) serializable2;
                        } else {
                            b = NumberLimits.b(p());
                        }
                        if (serializable instanceof BigDecimal) {
                            b2 = (BigDecimal) serializable;
                        } else {
                            b2 = NumberLimits.b(jsonPrimitive.p());
                        }
                        if (b.compareTo(b2) == 0) {
                            return true;
                        }
                        return false;
                    }
                    double r = r();
                    double r2 = jsonPrimitive.r();
                    if (r != r2) {
                        if (Double.isNaN(r) && Double.isNaN(r2)) {
                            return true;
                        }
                        return false;
                    }
                    return true;
                }
                return serializable2.equals(serializable);
            }
            return false;
        }
        return true;
    }

    @Override // com.google.gson.JsonElement
    public final int g() {
        if (this.f12672c instanceof Number) {
            return s().intValue();
        }
        return Integer.parseInt(p());
    }

    public final int hashCode() {
        long doubleToLongBits;
        Serializable serializable = this.f12672c;
        if (serializable == null) {
            return 31;
        }
        if (t(this)) {
            doubleToLongBits = s().longValue();
        } else if (serializable instanceof Number) {
            doubleToLongBits = Double.doubleToLongBits(s().doubleValue());
        } else {
            return serializable.hashCode();
        }
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    @Override // com.google.gson.JsonElement
    public final long m() {
        if (this.f12672c instanceof Number) {
            return s().longValue();
        }
        return Long.parseLong(p());
    }

    @Override // com.google.gson.JsonElement
    public final String p() {
        Serializable serializable = this.f12672c;
        if (serializable instanceof String) {
            return (String) serializable;
        }
        if (serializable instanceof Number) {
            return s().toString();
        }
        if (serializable instanceof Boolean) {
            return ((Boolean) serializable).toString();
        }
        throw new AssertionError("Unexpected value type: " + serializable.getClass());
    }

    public final BigInteger q() {
        Serializable serializable = this.f12672c;
        if (serializable instanceof BigInteger) {
            return (BigInteger) serializable;
        }
        if (t(this)) {
            return BigInteger.valueOf(s().longValue());
        }
        String p = p();
        NumberLimits.a(p);
        return new BigInteger(p);
    }

    public final double r() {
        if (this.f12672c instanceof Number) {
            return s().doubleValue();
        }
        return Double.parseDouble(p());
    }

    public final Number s() {
        Serializable serializable = this.f12672c;
        if (serializable instanceof Number) {
            return (Number) serializable;
        }
        if (serializable instanceof String) {
            return new LazilyParsedNumber((String) serializable);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public JsonPrimitive(Number number) {
        Objects.requireNonNull(number);
        this.f12672c = number;
    }

    public JsonPrimitive(String str) {
        Objects.requireNonNull(str);
        this.f12672c = str;
    }
}
