package com.google.android.gms.internal.mlkit_common;

import com.google.api.client.http.HttpStatusCodes;

/* loaded from: classes3.dex */
public enum zzmu implements zzba {
    /* JADX INFO: Fake field, exist only in values array */
    NO_ERROR(0),
    /* JADX INFO: Fake field, exist only in values array */
    INCOMPATIBLE_INPUT(1),
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
    MEDIAPIPE_ERROR(9),
    /* JADX INFO: Fake field, exist only in values array */
    TIME_OUT_FETCHING_MODEL_METADATA(5),
    /* JADX INFO: Fake field, exist only in values array */
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
    MODEL_INFO_DOWNLOAD_UNSUCCESSFUL_HTTP_STATUS(105),
    /* JADX INFO: Fake field, exist only in values array */
    MODEL_INFO_DOWNLOAD_NO_HASH(106),
    /* JADX INFO: Fake field, exist only in values array */
    MODEL_INFO_DOWNLOAD_CONNECTION_FAILED(107),
    /* JADX INFO: Fake field, exist only in values array */
    NO_VALID_MODEL(108),
    /* JADX INFO: Fake field, exist only in values array */
    LOCAL_MODEL_INVALID(109),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_MODEL_INVALID(110),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_MODEL_LOADER_ERROR(111),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_MODEL_LOADER_LOADS_NO_MODEL(112),
    /* JADX INFO: Fake field, exist only in values array */
    SMART_REPLY_LANG_ID_DETECTAION_FAILURE(113),
    /* JADX INFO: Fake field, exist only in values array */
    MODEL_NOT_REGISTERED(114),
    /* JADX INFO: Fake field, exist only in values array */
    MODEL_TYPE_MISUSE(115),
    /* JADX INFO: Fake field, exist only in values array */
    MODEL_HASH_MISMATCH(116),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONAL_MODULE_NOT_AVAILABLE(HttpStatusCodes.STATUS_CODE_CREATED),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONAL_MODULE_INIT_ERROR(HttpStatusCodes.STATUS_CODE_ACCEPTED),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONAL_MODULE_INFERENCE_ERROR(203),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONAL_MODULE_RELEASE_ERROR(HttpStatusCodes.STATUS_CODE_NO_CONTENT),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONAL_TFLITE_MODULE_INIT_ERROR(205),
    /* JADX INFO: Fake field, exist only in values array */
    NATIVE_LIBRARY_LOAD_ERROR(206),
    /* JADX INFO: Fake field, exist only in values array */
    OPTIONAL_MODULE_CREATE_ERROR(207),
    /* JADX INFO: Fake field, exist only in values array */
    CAMERAX_SOURCE_ERROR(HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY),
    /* JADX INFO: Fake field, exist only in values array */
    CAMERA1_SOURCE_CANT_START_ERROR(HttpStatusCodes.STATUS_CODE_FOUND),
    /* JADX INFO: Fake field, exist only in values array */
    CAMERA1_SOURCE_NO_SUITABLE_SIZE_ERROR(HttpStatusCodes.STATUS_CODE_SEE_OTHER),
    /* JADX INFO: Fake field, exist only in values array */
    CAMERA1_SOURCE_NO_SUITABLE_FPS_ERROR(HttpStatusCodes.STATUS_CODE_NOT_MODIFIED),
    /* JADX INFO: Fake field, exist only in values array */
    CAMERA1_SOURCE_NO_BYTE_SOURCE_FOUND_ERROR(305),
    /* JADX INFO: Fake field, exist only in values array */
    CODE_SCANNER_UNAVAILABLE(HttpStatusCodes.STATUS_CODE_BAD_REQUEST),
    /* JADX INFO: Fake field, exist only in values array */
    CODE_SCANNER_CANCELLED(HttpStatusCodes.STATUS_CODE_UNAUTHORIZED),
    /* JADX INFO: Fake field, exist only in values array */
    CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED(402),
    /* JADX INFO: Fake field, exist only in values array */
    CODE_SCANNER_APP_NAME_UNAVAILABLE(HttpStatusCodes.STATUS_CODE_FORBIDDEN),
    /* JADX INFO: Fake field, exist only in values array */
    CODE_SCANNER_TASK_IN_PROGRESS(HttpStatusCodes.STATUS_CODE_NOT_FOUND),
    /* JADX INFO: Fake field, exist only in values array */
    CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR(HttpStatusCodes.STATUS_CODE_METHOD_NOT_ALLOWED),
    /* JADX INFO: Fake field, exist only in values array */
    CODE_SCANNER_PIPELINE_INFERENCE_ERROR(406),
    /* JADX INFO: Fake field, exist only in values array */
    CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(407),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(500),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(501),
    /* JADX INFO: Fake field, exist only in values array */
    PERMISSION_DENIED(600),
    /* JADX INFO: Fake field, exist only in values array */
    CANCELLED(601),
    /* JADX INFO: Fake field, exist only in values array */
    GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(602),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_MEMORY(603),
    /* JADX INFO: Fake field, exist only in values array */
    UNKNOWN_ERROR(9999);


    /* renamed from: c, reason: collision with root package name */
    public final int f10881c;

    zzmu(int i) {
        this.f10881c = i;
    }

    @Override // com.google.android.gms.internal.mlkit_common.zzba
    public final int zza() {
        return this.f10881c;
    }
}
