.class final Lcom/google/mlkit/vision/text/internal/zzd;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/mlkit/vision/text/internal/zzm;


# instance fields
.field public final a:Landroid/content/Context;

.field public final b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

.field public c:Z

.field public d:Z

.field public final e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

.field public f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/mlkit/vision/text/internal/zzd;->a:Landroid/content/Context;

    iput-object p2, p0, Lcom/google/mlkit/vision/text/internal/zzd;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    iput-object p3, p0, Lcom/google/mlkit/vision/text/internal/zzd;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    return-void
.end method

.method public static b(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvh;
    .locals 11

    .line 1
    instance-of v0, p0, Lcom/google/mlkit/vision/text/internal/zzc;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    const/4 v2, 0x1

    .line 5
    if-eqz v0, :cond_0

    .line 6
    .line 7
    move-object v0, p0

    .line 8
    check-cast v0, Lcom/google/mlkit/vision/text/internal/zzc;

    .line 9
    .line 10
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/internal/zzc;->zza()Z

    .line 11
    .line 12
    .line 13
    move-result v0

    .line 14
    if-eqz v0, :cond_0

    .line 15
    .line 16
    move v10, v2

    .line 17
    goto :goto_0

    .line 18
    :cond_0
    move v10, v1

    .line 19
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvh;

    .line 20
    .line 21
    invoke-interface {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->e()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v4

    .line 25
    invoke-interface {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->f()Ljava/lang/String;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    invoke-interface {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->d()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    packed-switch v0, :pswitch_data_0

    .line 34
    .line 35
    .line 36
    goto :goto_1

    .line 37
    :pswitch_0
    const/16 v2, 0x9

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :pswitch_1
    const/16 v2, 0x8

    .line 41
    .line 42
    goto :goto_1

    .line 43
    :pswitch_2
    const/4 v2, 0x7

    .line 44
    goto :goto_1

    .line 45
    :pswitch_3
    const/4 v2, 0x6

    .line 46
    goto :goto_1

    .line 47
    :pswitch_4
    const/4 v2, 0x5

    .line 48
    goto :goto_1

    .line 49
    :pswitch_5
    const/4 v2, 0x4

    .line 50
    goto :goto_1

    .line 51
    :pswitch_6
    const/4 v2, 0x3

    .line 52
    goto :goto_1

    .line 53
    :pswitch_7
    const/4 v2, 0x2

    .line 54
    :goto_1
    add-int/lit8 v8, v2, -0x1

    .line 55
    .line 56
    invoke-interface {p0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->a()Ljava/lang/String;

    .line 57
    .line 58
    .line 59
    move-result-object v9

    .line 60
    const/4 v7, 0x1

    .line 61
    move-object v6, p1

    .line 62
    invoke-direct/range {v3 .. v10}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvh;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZILjava/lang/String;Z)V

    .line 63
    .line 64
    .line 65
    return-object v3

    .line 66
    nop

    .line 67
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_7
        :pswitch_6
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public final a(Lcom/google/mlkit/vision/common/InputImage;)Lcom/google/mlkit/vision/text/Text;
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzd;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {p0}, Lcom/google/mlkit/vision/text/internal/zzd;->zzb()V

    .line 6
    .line 7
    .line 8
    :cond_0
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzd;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 9
    .line 10
    invoke-static {v0}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    .line 12
    .line 13
    move-result-object v0

    .line 14
    check-cast v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 15
    .line 16
    iget-boolean v1, p0, Lcom/google/mlkit/vision/text/internal/zzd;->c:Z

    .line 17
    .line 18
    const/4 v2, 0x1

    .line 19
    if-nez v1, :cond_1

    .line 20
    .line 21
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->I1()Landroid/os/Parcel;

    .line 22
    .line 23
    .line 24
    move-result-object v1

    .line 25
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->r2(ILandroid/os/Parcel;)V

    .line 26
    .line 27
    .line 28
    iput-boolean v2, p0, Lcom/google/mlkit/vision/text/internal/zzd;->c:Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :catch_0
    move-exception v0

    .line 32
    move-object p1, v0

    .line 33
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzd;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 34
    .line 35
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->b()Ljava/lang/String;

    .line 36
    .line 37
    .line 38
    move-result-object v0

    .line 39
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    .line 40
    .line 41
    const-string v2, "Failed to init text recognizer "

    .line 42
    .line 43
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    invoke-direct {v1, p1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 48
    .line 49
    .line 50
    throw v1

    .line 51
    :cond_1
    :goto_0
    new-instance v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuq;

    .line 52
    .line 53
    iget v4, p1, Lcom/google/mlkit/vision/common/InputImage;->d:I

    .line 54
    .line 55
    iget v5, p1, Lcom/google/mlkit/vision/common/InputImage;->b:I

    .line 56
    .line 57
    iget v6, p1, Lcom/google/mlkit/vision/common/InputImage;->c:I

    .line 58
    .line 59
    const/4 v7, 0x0

    .line 60
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    .line 61
    .line 62
    .line 63
    move-result-wide v8

    .line 64
    invoke-direct/range {v3 .. v9}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuq;-><init>(IIIIJ)V

    .line 65
    .line 66
    .line 67
    sget-object v1, Lcom/google/mlkit/vision/common/internal/ImageUtils;->a:Lcom/google/mlkit/vision/common/internal/ImageUtils;

    .line 68
    .line 69
    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    .line 70
    .line 71
    .line 72
    iget v1, p1, Lcom/google/mlkit/vision/common/InputImage;->d:I

    .line 73
    .line 74
    const/4 v4, -0x1

    .line 75
    const/4 v5, 0x0

    .line 76
    const/4 v6, 0x3

    .line 77
    if-eq v1, v4, :cond_5

    .line 78
    .line 79
    const/16 v4, 0x11

    .line 80
    .line 81
    if-eq v1, v4, :cond_4

    .line 82
    .line 83
    const/16 v4, 0x23

    .line 84
    .line 85
    if-eq v1, v4, :cond_3

    .line 86
    .line 87
    const v4, 0x32315659

    .line 88
    .line 89
    .line 90
    if-ne v1, v4, :cond_2

    .line 91
    .line 92
    goto :goto_1

    .line 93
    :cond_2
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 94
    .line 95
    iget p1, p1, Lcom/google/mlkit/vision/common/InputImage;->d:I

    .line 96
    .line 97
    const-string v1, "Unsupported image format: "

    .line 98
    .line 99
    invoke-static {p1, v1}, Landroid/support/v4/media/a;->e(ILjava/lang/String;)Ljava/lang/String;

    .line 100
    .line 101
    .line 102
    move-result-object p1

    .line 103
    invoke-direct {v0, p1, v6}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 104
    .line 105
    .line 106
    throw v0

    .line 107
    :cond_3
    new-instance p1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 108
    .line 109
    invoke-direct {p1, v5}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 110
    .line 111
    .line 112
    goto :goto_3

    .line 113
    :cond_4
    :goto_1
    invoke-static {v5}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 114
    .line 115
    .line 116
    move-result-object p1

    .line 117
    check-cast p1, Ljava/nio/ByteBuffer;

    .line 118
    .line 119
    new-instance v1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 120
    .line 121
    invoke-direct {v1, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 122
    .line 123
    .line 124
    :goto_2
    move-object p1, v1

    .line 125
    goto :goto_3

    .line 126
    :cond_5
    iget-object p1, p1, Lcom/google/mlkit/vision/common/InputImage;->a:Landroid/graphics/Bitmap;

    .line 127
    .line 128
    invoke-static {p1}, Lcom/google/android/gms/common/internal/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 129
    .line 130
    .line 131
    move-result-object p1

    .line 132
    check-cast p1, Landroid/graphics/Bitmap;

    .line 133
    .line 134
    new-instance v1, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 135
    .line 136
    invoke-direct {v1, p1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 137
    .line 138
    .line 139
    goto :goto_2

    .line 140
    :goto_3
    :try_start_1
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->I1()Landroid/os/Parcel;

    .line 141
    .line 142
    .line 143
    move-result-object v1

    .line 144
    invoke-static {v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzc;->a(Landroid/os/Parcel;Lcom/google/android/gms/dynamic/ObjectWrapper;)V

    .line 145
    .line 146
    .line 147
    invoke-virtual {v1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 148
    .line 149
    .line 150
    const/4 p1, 0x0

    .line 151
    invoke-virtual {v3, v1, p1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuq;->writeToParcel(Landroid/os/Parcel;I)V

    .line 152
    .line 153
    .line 154
    invoke-virtual {v0, v6, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->f2(ILandroid/os/Parcel;)Landroid/os/Parcel;

    .line 155
    .line 156
    .line 157
    move-result-object p1

    .line 158
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvf;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 159
    .line 160
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    .line 161
    .line 162
    .line 163
    move-result v1

    .line 164
    if-nez v1, :cond_6

    .line 165
    .line 166
    goto :goto_4

    .line 167
    :cond_6
    invoke-interface {v0, p1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    .line 168
    .line 169
    .line 170
    move-result-object v0

    .line 171
    move-object v5, v0

    .line 172
    check-cast v5, Landroid/os/Parcelable;

    .line 173
    .line 174
    :goto_4
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvf;

    .line 175
    .line 176
    invoke-virtual {p1}, Landroid/os/Parcel;->recycle()V

    .line 177
    .line 178
    .line 179
    new-instance p1, Lcom/google/mlkit/vision/text/Text;

    .line 180
    .line 181
    invoke-direct {p1, v5}, Lcom/google/mlkit/vision/text/Text;-><init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvf;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 182
    .line 183
    .line 184
    return-object p1

    .line 185
    :catch_1
    move-exception v0

    .line 186
    move-object p1, v0

    .line 187
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzd;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 188
    .line 189
    invoke-interface {v0}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->b()Ljava/lang/String;

    .line 190
    .line 191
    .line 192
    move-result-object v0

    .line 193
    new-instance v1, Lcom/google/mlkit/common/MlKitException;

    .line 194
    .line 195
    const-string v2, "Failed to run text recognizer "

    .line 196
    .line 197
    invoke-virtual {v2, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 198
    .line 199
    .line 200
    move-result-object v0

    .line 201
    invoke-direct {v1, p1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 202
    .line 203
    .line 204
    throw v1
.end method

.method public final zzb()V
    .locals 10

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzd;->e:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzd;->a:Landroid/content/Context;

    .line 4
    .line 5
    iget-object v2, p0, Lcom/google/mlkit/vision/text/internal/zzd;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 6
    .line 7
    iget-object v3, p0, Lcom/google/mlkit/vision/text/internal/zzd;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 8
    .line 9
    if-eqz v3, :cond_0

    .line 10
    .line 11
    return-void

    .line 12
    :cond_0
    const/4 v3, 0x1

    .line 13
    :try_start_0
    instance-of v4, v2, Lcom/google/mlkit/vision/text/internal/zzb;

    .line 14
    .line 15
    const/4 v5, 0x0

    .line 16
    if-eqz v4, :cond_1

    .line 17
    .line 18
    move-object v6, v2

    .line 19
    check-cast v6, Lcom/google/mlkit/vision/text/internal/zzb;

    .line 20
    .line 21
    invoke-interface {v6}, Lcom/google/mlkit/vision/text/internal/zzb;->zza()Ljava/lang/String;

    .line 22
    .line 23
    .line 24
    move-result-object v6

    .line 25
    goto :goto_0

    .line 26
    :catch_0
    move-exception v1

    .line 27
    goto/16 :goto_5

    .line 28
    .line 29
    :catch_1
    move-exception v4

    .line 30
    goto/16 :goto_6

    .line 31
    .line 32
    :cond_1
    move-object v6, v5

    .line 33
    :goto_0
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->g()Z

    .line 34
    .line 35
    .line 36
    move-result v7
    :try_end_0
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 37
    const-string v8, "com.google.mlkit.vision.text.aidls.ITextRecognizerCreator"

    .line 38
    .line 39
    const-string v9, "DecoupledTextDelegate"

    .line 40
    .line 41
    if-eqz v7, :cond_4

    .line 42
    .line 43
    :try_start_1
    const-string v4, "Start loading thick OCR module."

    .line 44
    .line 45
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 46
    .line 47
    .line 48
    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->c:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 49
    .line 50
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->i()Ljava/lang/String;

    .line 51
    .line 52
    .line 53
    move-result-object v7

    .line 54
    invoke-static {v1, v4, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 55
    .line 56
    .line 57
    move-result-object v4

    .line 58
    const-string v7, "com.google.mlkit.vision.text.bundled.common.BundledTextRecognizerCreator"

    .line 59
    .line 60
    invoke-virtual {v4, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 61
    .line 62
    .line 63
    move-result-object v4

    .line 64
    sget v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzux;->c:I

    .line 65
    .line 66
    if-nez v4, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    invoke-interface {v4, v8}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 70
    .line 71
    .line 72
    move-result-object v5

    .line 73
    instance-of v7, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuy;

    .line 74
    .line 75
    if-eqz v7, :cond_3

    .line 76
    .line 77
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuy;

    .line 78
    .line 79
    goto :goto_1

    .line 80
    :cond_3
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuw;

    .line 81
    .line 82
    invoke-direct {v5, v4, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 83
    .line 84
    .line 85
    :goto_1
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 86
    .line 87
    invoke-direct {v4, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 88
    .line 89
    .line 90
    invoke-static {v2, v6}, Lcom/google/mlkit/vision/text/internal/zzd;->b(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvh;

    .line 91
    .line 92
    .line 93
    move-result-object v6

    .line 94
    invoke-interface {v5, v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuy;->Q2(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvh;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 95
    .line 96
    .line 97
    move-result-object v4

    .line 98
    goto/16 :goto_4

    .line 99
    .line 100
    :cond_4
    if-eqz v4, :cond_7

    .line 101
    .line 102
    const-string v4, "Start loading custom OCR module."

    .line 103
    .line 104
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 105
    .line 106
    .line 107
    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 108
    .line 109
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->i()Ljava/lang/String;

    .line 110
    .line 111
    .line 112
    move-result-object v7

    .line 113
    invoke-static {v1, v4, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 114
    .line 115
    .line 116
    move-result-object v4

    .line 117
    const-string v7, "com.google.android.gms.vision.text.mlkit.CommonTextRecognizerCreator"

    .line 118
    .line 119
    invoke-virtual {v4, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 120
    .line 121
    .line 122
    move-result-object v4

    .line 123
    sget v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzut;->c:I

    .line 124
    .line 125
    const-string v7, "com.google.mlkit.vision.text.aidls.ICommonTextRecognizerCreator"

    .line 126
    .line 127
    if-nez v4, :cond_5

    .line 128
    .line 129
    goto :goto_2

    .line 130
    :cond_5
    invoke-interface {v4, v7}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 131
    .line 132
    .line 133
    move-result-object v5

    .line 134
    instance-of v8, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuu;

    .line 135
    .line 136
    if-eqz v8, :cond_6

    .line 137
    .line 138
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuu;

    .line 139
    .line 140
    goto :goto_2

    .line 141
    :cond_6
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzus;

    .line 142
    .line 143
    invoke-direct {v5, v4, v7}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 144
    .line 145
    .line 146
    :goto_2
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 147
    .line 148
    invoke-direct {v4, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 149
    .line 150
    .line 151
    invoke-static {v2, v6}, Lcom/google/mlkit/vision/text/internal/zzd;->b(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvh;

    .line 152
    .line 153
    .line 154
    move-result-object v6

    .line 155
    invoke-interface {v5, v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuu;->E3(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvh;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 156
    .line 157
    .line 158
    move-result-object v4

    .line 159
    goto :goto_4

    .line 160
    :cond_7
    const-string v4, "Start loading thin OCR module."

    .line 161
    .line 162
    invoke-static {v9, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 163
    .line 164
    .line 165
    sget-object v4, Lcom/google/android/gms/dynamite/DynamiteModule;->b:Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;

    .line 166
    .line 167
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->i()Ljava/lang/String;

    .line 168
    .line 169
    .line 170
    move-result-object v7

    .line 171
    invoke-static {v1, v4, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->c(Landroid/content/Context;Lcom/google/android/gms/dynamite/DynamiteModule$VersionPolicy;Ljava/lang/String;)Lcom/google/android/gms/dynamite/DynamiteModule;

    .line 172
    .line 173
    .line 174
    move-result-object v4

    .line 175
    const-string v7, "com.google.android.gms.vision.text.mlkit.TextRecognizerCreator"

    .line 176
    .line 177
    invoke-virtual {v4, v7}, Lcom/google/android/gms/dynamite/DynamiteModule;->b(Ljava/lang/String;)Landroid/os/IBinder;

    .line 178
    .line 179
    .line 180
    move-result-object v4

    .line 181
    sget v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzux;->c:I

    .line 182
    .line 183
    if-nez v4, :cond_8

    .line 184
    .line 185
    goto :goto_3

    .line 186
    :cond_8
    invoke-interface {v4, v8}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    .line 187
    .line 188
    .line 189
    move-result-object v5

    .line 190
    instance-of v7, v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuy;

    .line 191
    .line 192
    if-eqz v7, :cond_9

    .line 193
    .line 194
    check-cast v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuy;

    .line 195
    .line 196
    goto :goto_3

    .line 197
    :cond_9
    new-instance v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuw;

    .line 198
    .line 199
    invoke-direct {v5, v4, v8}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    .line 200
    .line 201
    .line 202
    :goto_3
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->d()I

    .line 203
    .line 204
    .line 205
    move-result v4

    .line 206
    if-ne v4, v3, :cond_a

    .line 207
    .line 208
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 209
    .line 210
    invoke-direct {v4, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 211
    .line 212
    .line 213
    invoke-interface {v5, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuy;->F2(Lcom/google/android/gms/dynamic/ObjectWrapper;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 214
    .line 215
    .line 216
    move-result-object v4

    .line 217
    goto :goto_4

    .line 218
    :cond_a
    new-instance v4, Lcom/google/android/gms/dynamic/ObjectWrapper;

    .line 219
    .line 220
    invoke-direct {v4, v1}, Lcom/google/android/gms/dynamic/ObjectWrapper;-><init>(Ljava/lang/Object;)V

    .line 221
    .line 222
    .line 223
    invoke-static {v2, v6}, Lcom/google/mlkit/vision/text/internal/zzd;->b(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;Ljava/lang/String;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvh;

    .line 224
    .line 225
    .line 226
    move-result-object v6

    .line 227
    invoke-interface {v5, v4, v6}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuy;->Q2(Lcom/google/android/gms/dynamic/ObjectWrapper;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvh;)Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 228
    .line 229
    .line 230
    move-result-object v4

    .line 231
    :goto_4
    iput-object v4, p0, Lcom/google/mlkit/vision/text/internal/zzd;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 232
    .line 233
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->g()Z

    .line 234
    .line 235
    .line 236
    move-result v4

    .line 237
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 238
    .line 239
    new-instance v6, Lcom/google/mlkit/vision/text/internal/zzl;

    .line 240
    .line 241
    invoke-direct {v6, v4, v5}, Lcom/google/mlkit/vision/text/internal/zzl;-><init>(ZLcom/google/android/gms/internal/mlkit_vision_text_common/zzou;)V

    .line 242
    .line 243
    .line 244
    sget-object v4, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;->n:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 245
    .line 246
    invoke-virtual {v0, v6, v4}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzub;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;)V
    :try_end_1
    .catch Lcom/google/android/gms/dynamite/DynamiteModule$LoadingException; {:try_start_1 .. :try_end_1} :catch_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 247
    .line 248
    .line 249
    return-void

    .line 250
    :goto_5
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->g()Z

    .line 251
    .line 252
    .line 253
    move-result v3

    .line 254
    new-instance v4, Lcom/google/mlkit/vision/text/internal/zzl;

    .line 255
    .line 256
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->i:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 257
    .line 258
    invoke-direct {v4, v3, v5}, Lcom/google/mlkit/vision/text/internal/zzl;-><init>(ZLcom/google/android/gms/internal/mlkit_vision_text_common/zzou;)V

    .line 259
    .line 260
    .line 261
    sget-object v3, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;->n:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 262
    .line 263
    invoke-virtual {v0, v4, v3}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzub;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;)V

    .line 264
    .line 265
    .line 266
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->b()Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v0

    .line 270
    new-instance v2, Lcom/google/mlkit/common/MlKitException;

    .line 271
    .line 272
    const-string v3, "Failed to create text recognizer "

    .line 273
    .line 274
    invoke-virtual {v3, v0}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 275
    .line 276
    .line 277
    move-result-object v0

    .line 278
    invoke-direct {v2, v1, v0}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 279
    .line 280
    .line 281
    throw v2

    .line 282
    :goto_6
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->g()Z

    .line 283
    .line 284
    .line 285
    move-result v5

    .line 286
    new-instance v6, Lcom/google/mlkit/vision/text/internal/zzl;

    .line 287
    .line 288
    sget-object v7, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;->h:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzou;

    .line 289
    .line 290
    invoke-direct {v6, v5, v7}, Lcom/google/mlkit/vision/text/internal/zzl;-><init>(ZLcom/google/android/gms/internal/mlkit_vision_text_common/zzou;)V

    .line 291
    .line 292
    .line 293
    sget-object v5, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;->n:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;

    .line 294
    .line 295
    invoke-virtual {v0, v6, v5}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuc;->b(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzub;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzov;)V

    .line 296
    .line 297
    .line 298
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->g()Z

    .line 299
    .line 300
    .line 301
    move-result v0

    .line 302
    if-nez v0, :cond_c

    .line 303
    .line 304
    iget-boolean v0, p0, Lcom/google/mlkit/vision/text/internal/zzd;->d:Z

    .line 305
    .line 306
    if-eqz v0, :cond_b

    .line 307
    .line 308
    goto :goto_7

    .line 309
    :cond_b
    invoke-static {v2}, Lcom/google/mlkit/vision/text/internal/TextOptionalModuleUtils;->a(Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;)[Lcom/google/android/gms/common/Feature;

    .line 310
    .line 311
    .line 312
    move-result-object v0

    .line 313
    invoke-static {v1, v0}, Lcom/google/mlkit/common/sdkinternal/OptionalModuleUtils;->b(Landroid/content/Context;[Lcom/google/android/gms/common/Feature;)V

    .line 314
    .line 315
    .line 316
    iput-boolean v3, p0, Lcom/google/mlkit/vision/text/internal/zzd;->d:Z

    .line 317
    .line 318
    :goto_7
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 319
    .line 320
    const-string v1, "Waiting for the text optional module to be downloaded. Please wait."

    .line 321
    .line 322
    const/16 v2, 0xe

    .line 323
    .line 324
    invoke-direct {v0, v1, v2}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/String;I)V

    .line 325
    .line 326
    .line 327
    throw v0

    .line 328
    :cond_c
    new-instance v0, Lcom/google/mlkit/common/MlKitException;

    .line 329
    .line 330
    invoke-interface {v2}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->b()Ljava/lang/String;

    .line 331
    .line 332
    .line 333
    move-result-object v1

    .line 334
    invoke-virtual {v4}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 335
    .line 336
    .line 337
    move-result-object v2

    .line 338
    const-string v3, "Failed to load text module "

    .line 339
    .line 340
    const-string v5, ". "

    .line 341
    .line 342
    invoke-static {v3, v1, v5, v2}, Landroid/support/v4/media/a;->m(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 343
    .line 344
    .line 345
    move-result-object v1

    .line 346
    invoke-direct {v0, v4, v1}, Lcom/google/mlkit/common/MlKitException;-><init>(Ljava/lang/Exception;Ljava/lang/String;)V

    .line 347
    .line 348
    .line 349
    throw v0
.end method

.method public final zzc()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzd;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    :try_start_0
    invoke-virtual {v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->I1()Landroid/os/Parcel;

    .line 6
    .line 7
    .line 8
    move-result-object v1

    .line 9
    const/4 v2, 0x2

    .line 10
    invoke-virtual {v0, v2, v1}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zza;->r2(ILandroid/os/Parcel;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 11
    .line 12
    .line 13
    goto :goto_0

    .line 14
    :catch_0
    move-exception v0

    .line 15
    iget-object v1, p0, Lcom/google/mlkit/vision/text/internal/zzd;->b:Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;

    .line 16
    .line 17
    invoke-interface {v1}, Lcom/google/mlkit/vision/text/TextRecognizerOptionsInterface;->b()Ljava/lang/String;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    const-string v2, "Failed to release text recognizer "

    .line 22
    .line 23
    invoke-virtual {v2, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 24
    .line 25
    .line 26
    move-result-object v1

    .line 27
    const-string v2, "DecoupledTextDelegate"

    .line 28
    .line 29
    invoke-static {v2, v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 30
    .line 31
    .line 32
    :goto_0
    const/4 v0, 0x0

    .line 33
    iput-object v0, p0, Lcom/google/mlkit/vision/text/internal/zzd;->f:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzuv;

    .line 34
    .line 35
    :cond_0
    const/4 v0, 0x0

    .line 36
    iput-boolean v0, p0, Lcom/google/mlkit/vision/text/internal/zzd;->c:Z

    .line 37
    .line 38
    return-void
.end method
