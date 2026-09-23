package com.google.android.gms.internal.mlkit_code_scanner;

import com.google.api.client.http.HttpStatusCodes;

/* loaded from: classes3.dex */
public enum zzka implements zzaf {
    NO_ERROR(0),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(1),
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
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(105),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(106),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_MODEL_INVALID(107),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(108),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(109),
    /* JADX INFO: Fake field, exist only in values array */
    REMOTE_MODEL_INVALID(110),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(111),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(112),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(113),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(114),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(115),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(116),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(HttpStatusCodes.STATUS_CODE_CREATED),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(HttpStatusCodes.STATUS_CODE_ACCEPTED),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(203),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(HttpStatusCodes.STATUS_CODE_NO_CONTENT),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(205),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(206),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(207),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(HttpStatusCodes.STATUS_CODE_MOVED_PERMANENTLY),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(HttpStatusCodes.STATUS_CODE_FOUND),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(HttpStatusCodes.STATUS_CODE_SEE_OTHER),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(HttpStatusCodes.STATUS_CODE_NOT_MODIFIED),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(305),
    CODE_SCANNER_UNAVAILABLE(HttpStatusCodes.STATUS_CODE_BAD_REQUEST),
    CODE_SCANNER_CANCELLED(HttpStatusCodes.STATUS_CODE_UNAUTHORIZED),
    CODE_SCANNER_CAMERA_PERMISSION_NOT_GRANTED(402),
    CODE_SCANNER_APP_NAME_UNAVAILABLE(HttpStatusCodes.STATUS_CODE_FORBIDDEN),
    CODE_SCANNER_TASK_IN_PROGRESS(HttpStatusCodes.STATUS_CODE_NOT_FOUND),
    CODE_SCANNER_PIPELINE_INITIALIZATION_ERROR(HttpStatusCodes.STATUS_CODE_METHOD_NOT_ALLOWED),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(406),
    CODE_SCANNER_GOOGLE_PLAY_SERVICES_VERSION_TOO_OLD(407),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_AUTO_EXPOSURE_COMPUTATION_FAILURE(500),
    /* JADX INFO: Fake field, exist only in values array */
    LOW_LIGHT_IMAGE_CAPTURE_PROCESSING_FAILURE(501),
    UNKNOWN_ERROR(9999);


    /* renamed from: c, reason: collision with root package name */
    public final int f10605c;

    zzka(int i) {
        this.f10605c = i;
    }

    @Override // com.google.android.gms.internal.mlkit_code_scanner.zzaf
    public final int zza() {
        return this.f10605c;
    }
}
