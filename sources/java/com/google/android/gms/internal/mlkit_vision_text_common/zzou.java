package com.google.android.gms.internal.mlkit_vision_text_common;

import com.google.api.client.http.HttpStatusCodes;

/* loaded from: classes3.dex */
public enum zzou implements zzcv {
    NO_ERROR(0),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(1),
    /* JADX INFO: Fake field, exist only in values array */
    INCOMPATIBLE_OUTPUT(2),
    /* JADX INFO: Fake field, exist only in values array */
    INCOMPATIBLE_TFLITE_VERSION(3),
    /* JADX INFO: Fake field, exist only in values array */
    MISSING_OP(4),
    /* JADX INFO: Fake field, exist only in values array */
    DATA_TYPE_ERROR(6),
    /* JADX INFO: Fake field, exist only in values array */
    TFLITE_INTERNAL_ERROR(7),
    /* JADX INFO: Fake field, exist only in values array */
    TFLITE_UNKNOWN_ERROR(8),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_MODEL_INVALID(9),
    /* JADX INFO: Fake field, exist only in values array */
    TIME_OUT_FETCHING_MODEL_METADATA(5),
    MODEL_NOT_DOWNLOADED(100),
    /* JADX INFO: Fake field, exist only in values array */
    URI_EXPIRED(101),
    /* JADX INFO: Fake field, exist only in values array */
    NO_NETWORK_CONNECTION(102),
    /* JADX INFO: Fake field, exist only in values array */
    METERED_NETWORK(103),
    /* JADX INFO: Fake field, exist only in values array */
    DOWNLOAD_FAILED(104),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(105),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(106),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_MODEL_INVALID(107),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(108),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(109),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_MODEL_INVALID(110),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(111),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(112),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(113),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(114),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(115),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(116),
    OPTIONAL_MODULE_NOT_AVAILABLE(HttpStatusCodes.STATUS_CODE_CREATED),
    OPTIONAL_MODULE_INIT_ERROR(HttpStatusCodes.STATUS_CODE_ACCEPTED),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(203),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(HttpStatusCodes.STATUS_CODE_NO_CONTENT),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(205),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(206),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(207),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(HttpStatusCodes.STATUS_CODE_FOUND),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(HttpStatusCodes.STATUS_CODE_SEE_OTHER),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(HttpStatusCodes.STATUS_CODE_NOT_MODIFIED),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(305),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(HttpStatusCodes.STATUS_CODE_BAD_REQUEST),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(HttpStatusCodes.STATUS_CODE_UNAUTHORIZED),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(402),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(HttpStatusCodes.STATUS_CODE_FORBIDDEN),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(HttpStatusCodes.STATUS_CODE_NOT_FOUND),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(HttpStatusCodes.STATUS_CODE_METHOD_NOT_ALLOWED),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(406),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(407),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(500),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(501),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(600),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(601),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(602),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(603),
    UNKNOWN_ERROR(9999);


    /* renamed from: c, reason: collision with root package name */
    public final int f11390c;

    zzou(int i) {
        this.f11390c = i;
    }

    @Override // com.google.android.gms.internal.mlkit_vision_text_common.zzcv
    public final int zza() {
        return this.f11390c;
    }
}
