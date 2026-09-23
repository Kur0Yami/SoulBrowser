.class final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhs;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhs;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhs;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhs;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzhs;

    .line 7
    .line 8
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 9
    .line 10
    const-string v1, "source"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 22
    .line 23
    const-string v2, "appliedFilter"

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 36
    .line 37
    const-string v2, "isAutoCaptureManuallyTriggered"

    .line 38
    .line 39
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 50
    .line 51
    const-string v2, "isRotated"

    .line 52
    .line 53
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 64
    .line 65
    const-string v2, "hasLowConfidenceProposedCorners"

    .line 66
    .line 67
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 v2, 0x5

    .line 77
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 78
    .line 79
    const-string v2, "autoCaptureTriggerLatencyMs"

    .line 80
    .line 81
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x6

    .line 91
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 92
    .line 93
    const-string v2, "galleryImportProcessingMs"

    .line 94
    .line 95
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    const/4 v2, 0x7

    .line 105
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 106
    .line 107
    const-string v2, "imageWidth"

    .line 108
    .line 109
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 110
    .line 111
    .line 112
    move-result-object v0

    .line 113
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 114
    .line 115
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 116
    .line 117
    .line 118
    const/16 v2, 0x8

    .line 119
    .line 120
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 121
    .line 122
    const-string v2, "imageHeight"

    .line 123
    .line 124
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 125
    .line 126
    .line 127
    move-result-object v0

    .line 128
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 129
    .line 130
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 131
    .line 132
    .line 133
    const/16 v2, 0x9

    .line 134
    .line 135
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 136
    .line 137
    const-string v2, "proposedCorners"

    .line 138
    .line 139
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 140
    .line 141
    .line 142
    move-result-object v0

    .line 143
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 144
    .line 145
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 146
    .line 147
    .line 148
    const/16 v2, 0xa

    .line 149
    .line 150
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 151
    .line 152
    const-string v2, "adjustedCorners"

    .line 153
    .line 154
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 155
    .line 156
    .line 157
    move-result-object v0

    .line 158
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 159
    .line 160
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 161
    .line 162
    .line 163
    const/16 v2, 0xb

    .line 164
    .line 165
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 166
    .line 167
    const-string v2, "isShadowRemoved"

    .line 168
    .line 169
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 170
    .line 171
    .line 172
    move-result-object v0

    .line 173
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 174
    .line 175
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 176
    .line 177
    .line 178
    const/16 v2, 0xc

    .line 179
    .line 180
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 181
    .line 182
    const-string v2, "numOfAppliedCleanUpStrokes"

    .line 183
    .line 184
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 185
    .line 186
    .line 187
    move-result-object v0

    .line 188
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 189
    .line 190
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 191
    .line 192
    .line 193
    const/16 v2, 0xd

    .line 194
    .line 195
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 196
    .line 197
    const-string v2, "numOfAttemptedCleanUpStrokes"

    .line 198
    .line 199
    invoke-static {v1, v0, v2}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->n(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 200
    .line 201
    .line 202
    move-result-object v0

    .line 203
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 204
    .line 205
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 206
    .line 207
    .line 208
    const/16 v2, 0xe

    .line 209
    .line 210
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 211
    .line 212
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/a;->y(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)V

    .line 213
    .line 214
    .line 215
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznt;

    .line 2
    .line 3
    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
