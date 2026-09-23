package com.google.android.gms.internal.consent_sdk;

import android.util.JsonReader;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public final class zzcn {

    /* renamed from: a, reason: collision with root package name */
    public String f9985a;
    public String b;

    /* renamed from: c, reason: collision with root package name */
    public String f9986c;
    public List d;
    public List e;
    public String f;
    public int g;
    public int h;

    /* JADX WARN: Failed to find 'out' block for switch in B:134:0x0190. Please report as an issue. */
    /* JADX WARN: Failed to find 'out' block for switch in B:5:0x0023. Please report as an issue. */
    /* JADX WARN: Type inference failed for: r0v0, types: [com.google.android.gms.internal.consent_sdk.zzcn, java.lang.Object] */
    /* JADX WARN: Type inference failed for: r2v18, types: [com.google.android.gms.internal.consent_sdk.zzcm, java.lang.Object] */
    public static zzcn a(JsonReader jsonReader) {
        int i;
        ?? obj = new Object();
        obj.g = 1;
        List list = Collections.EMPTY_LIST;
        obj.d = list;
        obj.e = list;
        obj.h = 1;
        jsonReader.beginObject();
        while (jsonReader.hasNext()) {
            String nextName = jsonReader.nextName();
            int i2 = 3;
            switch (nextName.hashCode()) {
                case -2001388947:
                    if (nextName.equals("consent_signal")) {
                        String nextString = jsonReader.nextString();
                        switch (nextString.hashCode()) {
                            case -2058725357:
                                if (nextString.equals("CONSENT_SIGNAL_COLLECT_CONSENT")) {
                                    i2 = 5;
                                    obj.g = i2;
                                } else {
                                    throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: ".concat(nextString));
                                }
                            case -1969035850:
                                if (nextString.equals("CONSENT_SIGNAL_ERROR")) {
                                    i2 = 7;
                                    obj.g = i2;
                                } else {
                                    throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: ".concat(nextString));
                                }
                            case -1263695752:
                                if (nextString.equals("CONSENT_SIGNAL_UNKNOWN")) {
                                    i2 = 1;
                                    obj.g = i2;
                                } else {
                                    throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: ".concat(nextString));
                                }
                            case -954325659:
                                if (!nextString.equals("CONSENT_SIGNAL_NON_PERSONALIZED_ADS")) {
                                    throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: ".concat(nextString));
                                }
                                obj.g = i2;
                            case -918677260:
                                if (nextString.equals("CONSENT_SIGNAL_PUBLISHER_MISCONFIGURATION")) {
                                    i2 = 8;
                                    obj.g = i2;
                                } else {
                                    throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: ".concat(nextString));
                                }
                            case 429411856:
                                if (nextString.equals("CONSENT_SIGNAL_SUFFICIENT")) {
                                    i2 = 4;
                                    obj.g = i2;
                                } else {
                                    throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: ".concat(nextString));
                                }
                            case 467888915:
                                if (nextString.equals("CONSENT_SIGNAL_PERSONALIZED_ADS")) {
                                    i2 = 2;
                                    obj.g = i2;
                                } else {
                                    throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: ".concat(nextString));
                                }
                            case 1725474845:
                                if (nextString.equals("CONSENT_SIGNAL_NOT_REQUIRED")) {
                                    i2 = 6;
                                    obj.g = i2;
                                } else {
                                    throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: ".concat(nextString));
                                }
                            default:
                                throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.ConsentSignalfrom: ".concat(nextString));
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                case -1938755376:
                    if (nextName.equals("error_message")) {
                        obj.f9986c = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                case -1851537225:
                    if (nextName.equals("consent_form_base_url")) {
                        obj.b = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                case -1734348803:
                    if (nextName.equals("client_side_pingback_url")) {
                        obj.f = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                case -1324537865:
                    if (nextName.equals("privacy_options_required")) {
                        String nextString2 = jsonReader.nextString();
                        int hashCode = nextString2.hashCode();
                        if (hashCode != -1888946261) {
                            if (hashCode != 389487519) {
                                if (hashCode == 433141802 && nextString2.equals("UNKNOWN")) {
                                    i2 = 1;
                                    obj.h = i2;
                                }
                                throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.PrivacyOptionsRequirementStatusfrom: ".concat(nextString2));
                            }
                            if (nextString2.equals("REQUIRED")) {
                                i2 = 2;
                                obj.h = i2;
                            } else {
                                throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.PrivacyOptionsRequirementStatusfrom: ".concat(nextString2));
                            }
                        } else {
                            if (!nextString2.equals("NOT_REQUIRED")) {
                                throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.PrivacyOptionsRequirementStatusfrom: ".concat(nextString2));
                            }
                            obj.h = i2;
                        }
                    } else {
                        jsonReader.skipValue();
                    }
                    break;
                case -1161803523:
                    if (nextName.equals("actions")) {
                        obj.e = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            ?? obj2 = new Object();
                            obj2.b = 1;
                            jsonReader.beginObject();
                            while (jsonReader.hasNext()) {
                                String nextName2 = jsonReader.nextName();
                                int hashCode2 = nextName2.hashCode();
                                if (hashCode2 != -2105551094) {
                                    if (hashCode2 == 1583758243 && nextName2.equals("action_type")) {
                                        String nextString3 = jsonReader.nextString();
                                        int hashCode3 = nextString3.hashCode();
                                        if (hashCode3 != 64208429) {
                                            if (hashCode3 != 82862015) {
                                                if (hashCode3 == 1856333582 && nextString3.equals("UNKNOWN_ACTION_TYPE")) {
                                                    i = 1;
                                                    obj2.b = i;
                                                }
                                                throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.Action.ActionTypefrom: ".concat(nextString3));
                                            }
                                            if (nextString3.equals("WRITE")) {
                                                i = 2;
                                                obj2.b = i;
                                            } else {
                                                throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.Action.ActionTypefrom: ".concat(nextString3));
                                            }
                                        } else if (nextString3.equals("CLEAR")) {
                                            i = 3;
                                            obj2.b = i;
                                        } else {
                                            throw new IOException("Failed to parse contentads.contributor.direct.serving.appswitchboard.proto.ApplicationGdprResponse.Action.ActionTypefrom: ".concat(nextString3));
                                        }
                                    }
                                    jsonReader.skipValue();
                                } else if (nextName2.equals("args_json")) {
                                    obj2.f9984a = jsonReader.nextString();
                                } else {
                                    jsonReader.skipValue();
                                }
                            }
                            jsonReader.endObject();
                            obj.e.add(obj2);
                        }
                        jsonReader.endArray();
                    } else {
                        jsonReader.skipValue();
                    }
                    break;
                case -986806987:
                    if (nextName.equals("request_info_keys")) {
                        obj.d = new ArrayList();
                        jsonReader.beginArray();
                        while (jsonReader.hasNext()) {
                            obj.d.add(jsonReader.nextString());
                        }
                        jsonReader.endArray();
                    } else {
                        jsonReader.skipValue();
                    }
                case -790907624:
                    if (nextName.equals("consent_form_payload")) {
                        obj.f9985a = jsonReader.nextString();
                    } else {
                        jsonReader.skipValue();
                    }
                default:
                    jsonReader.skipValue();
            }
        }
        jsonReader.endObject();
        return obj;
    }
}
