package com.google.android.gms.internal.ads;

import java.io.Serializable;
import java.math.BigDecimal;
import java.math.BigInteger;

/* loaded from: classes.dex */
public final class zzhxn extends zzhxj {

    /* renamed from: c, reason: collision with root package name */
    public final Serializable f8871c;

    public zzhxn(Boolean bool) {
        this.f8871c = bool;
    }

    public static boolean m(zzhxn zzhxnVar) {
        Serializable serializable = zzhxnVar.f8871c;
        if (serializable instanceof Number) {
            Number number = (Number) serializable;
            if ((number instanceof BigInteger) || (number instanceof Long) || (number instanceof Integer) || (number instanceof Short) || (number instanceof Byte)) {
                return true;
            }
            return false;
        }
        return false;
    }

    @Override // com.google.android.gms.internal.ads.zzhxj
    public final String a() {
        Serializable serializable = this.f8871c;
        if (!(serializable instanceof String)) {
            if (!(serializable instanceof Number)) {
                if (serializable instanceof Boolean) {
                    return ((Boolean) serializable).toString();
                }
                throw new AssertionError("Unexpected value type: ".concat(String.valueOf(serializable.getClass())));
            }
            return i().toString();
        }
        return (String) serializable;
    }

    public final boolean equals(Object obj) {
        double parseDouble;
        double parseDouble2;
        BigDecimal a2;
        BigDecimal a3;
        if (this != obj) {
            if (obj != null && zzhxn.class == obj.getClass()) {
                zzhxn zzhxnVar = (zzhxn) obj;
                Serializable serializable = zzhxnVar.f8871c;
                Serializable serializable2 = this.f8871c;
                if (serializable2 == null) {
                    if (serializable == null) {
                        return true;
                    }
                    return false;
                }
                if (m(this) && m(zzhxnVar)) {
                    if (!(serializable2 instanceof BigInteger) && !(serializable instanceof BigInteger)) {
                        if (i().longValue() == zzhxnVar.i().longValue()) {
                            return true;
                        }
                        return false;
                    }
                    return k().equals(zzhxnVar.k());
                }
                if ((serializable2 instanceof Number) && (serializable instanceof Number)) {
                    if ((serializable2 instanceof BigDecimal) && (serializable instanceof BigDecimal)) {
                        if (serializable2 instanceof BigDecimal) {
                            a2 = (BigDecimal) serializable2;
                        } else {
                            a2 = zzhyb.a(a());
                        }
                        if (serializable instanceof BigDecimal) {
                            a3 = (BigDecimal) serializable;
                        } else {
                            a3 = zzhyb.a(zzhxnVar.a());
                        }
                        if (a2.compareTo(a3) == 0) {
                            return true;
                        }
                        return false;
                    }
                    if (serializable2 instanceof Number) {
                        parseDouble = i().doubleValue();
                    } else {
                        parseDouble = Double.parseDouble(a());
                    }
                    if (serializable instanceof Number) {
                        parseDouble2 = zzhxnVar.i().doubleValue();
                    } else {
                        parseDouble2 = Double.parseDouble(zzhxnVar.a());
                    }
                    if (parseDouble != parseDouble2) {
                        if (Double.isNaN(parseDouble) && Double.isNaN(parseDouble2)) {
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

    public final int hashCode() {
        long doubleToLongBits;
        Serializable serializable = this.f8871c;
        if (serializable == null) {
            return 31;
        }
        if (m(this)) {
            doubleToLongBits = i().longValue();
        } else if (serializable instanceof Number) {
            doubleToLongBits = Double.doubleToLongBits(i().doubleValue());
        } else {
            return serializable.hashCode();
        }
        return (int) (doubleToLongBits ^ (doubleToLongBits >>> 32));
    }

    public final Number i() {
        Serializable serializable = this.f8871c;
        if (serializable instanceof Number) {
            return (Number) serializable;
        }
        if (serializable instanceof String) {
            return new zzhxs((String) serializable);
        }
        throw new UnsupportedOperationException("Primitive is neither a number nor a string");
    }

    public final BigInteger k() {
        Serializable serializable = this.f8871c;
        if (serializable instanceof BigInteger) {
            return (BigInteger) serializable;
        }
        if (m(this)) {
            return BigInteger.valueOf(i().longValue());
        }
        String a2 = a();
        zzhyb.b(a2);
        return new BigInteger(a2);
    }

    public zzhxn(Number number) {
        this.f8871c = number;
    }

    public zzhxn(String str) {
        this.f8871c = str;
    }
}
