.class public Lcom/google/android/gms/cast/MediaInfo;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "MediaInfoCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/MediaInfo$Writer;,
        Lcom/google/android/gms/cast/MediaInfo$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/MediaInfo;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:J


# instance fields
.field public final c:Ljava/lang/String;

.field public final f:I

.field public final g:Ljava/lang/String;

.field public final h:Lcom/google/android/gms/cast/MediaMetadata;

.field public final i:J

.field public final j:Ljava/util/List;

.field public final k:Lcom/google/android/gms/cast/TextTrackStyle;

.field public l:Ljava/lang/String;

.field public m:Ljava/util/List;

.field public n:Ljava/util/List;

.field public final o:Ljava/lang/String;

.field public final p:Lcom/google/android/gms/cast/VastAdsRequest;

.field public final q:J

.field public final r:Ljava/lang/String;

.field public final s:Ljava/lang/String;

.field public final t:Ljava/lang/String;

.field public final u:Ljava/lang/String;

.field public final v:Lorg/json/JSONObject;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    sget-object v0, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 2
    .line 3
    const-wide/16 v0, -0x3e8

    .line 4
    .line 5
    sput-wide v0, Lcom/google/android/gms/cast/MediaInfo;->w:J

    .line 6
    .line 7
    new-instance v0, Lcom/google/android/gms/cast/zzbr;

    .line 8
    .line 9
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 10
    .line 11
    .line 12
    sput-object v0, Lcom/google/android/gms/cast/MediaInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 13
    .line 14
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    move-object/from16 v0, p17

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    iput p2, p0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    iput-object p3, p0, Lcom/google/android/gms/cast/MediaInfo;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    iput-wide p5, p0, Lcom/google/android/gms/cast/MediaInfo;->i:J

    iput-object p7, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/List;

    iput-object p8, p0, Lcom/google/android/gms/cast/MediaInfo;->k:Lcom/google/android/gms/cast/TextTrackStyle;

    iput-object p9, p0, Lcom/google/android/gms/cast/MediaInfo;->l:Ljava/lang/String;

    const/4 p1, 0x0

    if-eqz p9, :cond_0

    .line 3
    :try_start_0
    new-instance p2, Lorg/json/JSONObject;

    iget-object p3, p0, Lcom/google/android/gms/cast/MediaInfo;->l:Ljava/lang/String;

    invoke-direct {p2, p3}, Lorg/json/JSONObject;-><init>(Ljava/lang/String;)V

    iput-object p2, p0, Lcom/google/android/gms/cast/MediaInfo;->v:Lorg/json/JSONObject;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 4
    :catch_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->v:Lorg/json/JSONObject;

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->l:Ljava/lang/String;

    goto :goto_0

    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->v:Lorg/json/JSONObject;

    .line 5
    :goto_0
    iput-object p10, p0, Lcom/google/android/gms/cast/MediaInfo;->m:Ljava/util/List;

    iput-object p11, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/List;

    iput-object p12, p0, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    iput-object p13, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/VastAdsRequest;

    move-wide p1, p14

    iput-wide p1, p0, Lcom/google/android/gms/cast/MediaInfo;->q:J

    move-object/from16 p1, p16

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    iput-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/lang/String;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Ljava/lang/String;

    iget-object p1, p0, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    if-nez p1, :cond_2

    if-nez v0, :cond_2

    if-eqz p12, :cond_1

    goto :goto_1

    :cond_1
    new-instance p1, Ljava/lang/IllegalArgumentException;

    const-string p2, "Either contentID or contentUrl or entity should be set"

    .line 6
    invoke-direct {p1, p2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_2
    :goto_1
    return-void
.end method

.method public constructor <init>(Lorg/json/JSONObject;)V
    .locals 45

    move-object/from16 v0, p1

    .line 7
    const-string v1, "contentId"

    invoke-virtual {v0, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const/16 v18, 0x0

    const/16 v19, 0x0

    const/4 v2, -0x1

    const/4 v3, 0x0

    const/4 v4, 0x0

    const-wide/16 v5, -0x1

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x0

    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, 0x0

    const/4 v13, 0x0

    const-wide/16 v14, -0x1

    const/16 v16, 0x0

    const/16 v17, 0x0

    move-object/from16 v0, p0

    .line 8
    invoke-direct/range {v0 .. v19}, Lcom/google/android/gms/cast/MediaInfo;-><init>(Ljava/lang/String;ILjava/lang/String;Lcom/google/android/gms/cast/MediaMetadata;JLjava/util/List;Lcom/google/android/gms/cast/TextTrackStyle;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const-string v1, "streamType"

    .line 9
    const-string v2, "NONE"

    move-object/from16 v3, p1

    invoke-virtual {v3, v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    const/4 v5, -0x1

    const/4 v6, 0x2

    const/4 v7, 0x1

    const/4 v8, 0x0

    if-eqz v4, :cond_0

    iput v8, v0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    goto :goto_0

    .line 10
    :cond_0
    const-string v4, "BUFFERED"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    iput v7, v0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    goto :goto_0

    :cond_1
    const-string v4, "LIVE"

    invoke-virtual {v4, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    iput v6, v0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    goto :goto_0

    :cond_2
    iput v5, v0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    .line 11
    :goto_0
    const-string v1, "contentType"

    .line 12
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->g:Ljava/lang/String;

    .line 13
    const-string v1, "metadata"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 14
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    const-string v4, "metadataType"

    .line 15
    invoke-virtual {v1, v4}, Lorg/json/JSONObject;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 16
    new-instance v9, Lcom/google/android/gms/cast/MediaMetadata;

    invoke-direct {v9, v4}, Lcom/google/android/gms/cast/MediaMetadata;-><init>(I)V

    iput-object v9, v0, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    .line 17
    invoke-virtual {v9, v1}, Lcom/google/android/gms/cast/MediaMetadata;->A0(Lorg/json/JSONObject;)V

    :cond_3
    const-wide/16 v9, -0x1

    iput-wide v9, v0, Lcom/google/android/gms/cast/MediaInfo;->i:J

    iget v1, v0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    const-wide v9, 0x408f400000000000L    # 1000.0

    const-wide/16 v11, 0x0

    if-eq v1, v6, :cond_4

    .line 18
    const-string v1, "duration"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_4

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 19
    invoke-virtual {v3, v1, v11, v12}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v13

    .line 20
    invoke-static {v13, v14}, Ljava/lang/Double;->isNaN(D)Z

    move-result v1

    if-nez v1, :cond_4

    invoke-static {v13, v14}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v1

    if-nez v1, :cond_4

    cmpl-double v1, v13, v11

    if-ltz v1, :cond_4

    mul-double/2addr v13, v9

    double-to-long v13, v13

    iput-wide v13, v0, Lcom/google/android/gms/cast/MediaInfo;->i:J

    .line 21
    :cond_4
    const-string v1, "tracks"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    const-string v15, "customData"

    const/4 v5, 0x0

    move-wide/from16 v17, v9

    if-eqz v4, :cond_11

    new-instance v4, Ljava/util/ArrayList;

    .line 22
    invoke-direct {v4}, Ljava/util/ArrayList;-><init>()V

    .line 23
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v1

    move v10, v8

    move-wide/from16 v19, v11

    .line 24
    :goto_1
    invoke-virtual {v1}, Lorg/json/JSONArray;->length()I

    move-result v11

    if-ge v10, v11, :cond_10

    .line 25
    invoke-virtual {v1, v10}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    move-result-object v11

    .line 26
    const-string v12, "trackId"

    .line 27
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    move-result-wide v22

    const-string v12, "type"

    .line 28
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "TEXT"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_5

    move/from16 v24, v7

    goto :goto_2

    .line 29
    :cond_5
    const-string v13, "AUDIO"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_6

    move/from16 v24, v6

    goto :goto_2

    :cond_6
    const-string v13, "VIDEO"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_7

    const/16 v24, 0x3

    goto :goto_2

    :cond_7
    move/from16 v24, v8

    .line 30
    :goto_2
    const-string v12, "trackContentId"

    .line 31
    invoke-static {v11, v12}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v25

    const-string v12, "trackContentType"

    .line 32
    invoke-static {v11, v12}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v26

    const-string v12, "name"

    .line 33
    invoke-static {v11, v12}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v27

    const-string v12, "language"

    .line 34
    invoke-static {v11, v12}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v28

    .line 35
    const-string v12, "subtype"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 36
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    const-string v13, "SUBTITLES"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    move/from16 v29, v7

    goto :goto_3

    .line 37
    :cond_8
    const-string v13, "CAPTIONS"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    move/from16 v29, v6

    goto :goto_3

    :cond_9
    const-string v13, "DESCRIPTIONS"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    const/16 v29, 0x3

    goto :goto_3

    :cond_a
    const-string v13, "CHAPTERS"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    const/16 v29, 0x4

    goto :goto_3

    :cond_b
    const-string v13, "METADATA"

    invoke-virtual {v13, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v12

    if-eqz v12, :cond_c

    const/16 v29, 0x5

    goto :goto_3

    :cond_c
    const/16 v29, -0x1

    goto :goto_3

    :cond_d
    move/from16 v29, v8

    .line 38
    :goto_3
    const-string v12, "roles"

    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 39
    sget-object v13, Lcom/google/android/gms/internal/cast/zzhv;->f:Lcom/google/android/gms/internal/cast/zzim;

    new-instance v13, Lcom/google/android/gms/internal/cast/zzhs;

    invoke-direct {v13}, Lcom/google/android/gms/internal/cast/zzhs;-><init>()V

    .line 40
    invoke-virtual {v11, v12}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    move-result-object v12

    move v14, v8

    .line 41
    :goto_4
    invoke-virtual {v12}, Lorg/json/JSONArray;->length()I

    move-result v9

    if-ge v14, v9, :cond_e

    .line 42
    invoke-virtual {v12, v14}, Lorg/json/JSONArray;->optString(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v13, v9}, Lcom/google/android/gms/internal/cast/zzhs;->b(Ljava/lang/String;)V

    add-int/lit8 v14, v14, 0x1

    goto :goto_4

    .line 43
    :cond_e
    invoke-virtual {v13}, Lcom/google/android/gms/internal/cast/zzhs;->c()Lcom/google/android/gms/internal/cast/zzhv;

    move-result-object v9

    move-object/from16 v30, v9

    goto :goto_5

    :cond_f
    move-object/from16 v30, v5

    .line 44
    :goto_5
    invoke-virtual {v11, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v31

    new-instance v21, Lcom/google/android/gms/cast/MediaTrack;

    .line 45
    invoke-direct/range {v21 .. v31}, Lcom/google/android/gms/cast/MediaTrack;-><init>(JILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/List;Lorg/json/JSONObject;)V

    move-object/from16 v9, v21

    .line 46
    invoke-virtual {v4, v9}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_1

    :cond_10
    new-instance v1, Ljava/util/ArrayList;

    .line 47
    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/List;

    goto :goto_6

    :cond_11
    move-wide/from16 v19, v11

    .line 48
    iput-object v5, v0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/List;

    .line 49
    :goto_6
    const-string v1, "textTrackStyle"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_26

    .line 50
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->getJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    .line 51
    new-instance v32, Lcom/google/android/gms/cast/TextTrackStyle;

    const/16 v43, -0x1

    const/16 v44, 0x0

    const/high16 v33, 0x3f800000    # 1.0f

    const/16 v34, 0x0

    const/16 v35, 0x0

    const/16 v36, -0x1

    const/16 v37, 0x0

    const/16 v38, -0x1

    const/16 v39, 0x0

    const/16 v40, 0x0

    const/16 v41, 0x0

    const/16 v42, -0x1

    .line 52
    invoke-direct/range {v32 .. v44}, Lcom/google/android/gms/cast/TextTrackStyle;-><init>(FIIIIIIILjava/lang/String;IILjava/lang/String;)V

    move-object/from16 v4, v32

    .line 53
    const-string v9, "fontScale"

    const-wide/high16 v10, 0x3ff0000000000000L    # 1.0

    invoke-virtual {v1, v9, v10, v11}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;D)D

    move-result-wide v9

    double-to-float v9, v9

    iput v9, v4, Lcom/google/android/gms/cast/TextTrackStyle;->c:F

    const-string v9, "foregroundColor"

    .line 54
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/cast/TextTrackStyle;->G(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/google/android/gms/cast/TextTrackStyle;->f:I

    const-string v9, "backgroundColor"

    .line 55
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/cast/TextTrackStyle;->G(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/google/android/gms/cast/TextTrackStyle;->g:I

    .line 56
    const-string v9, "edgeType"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_16

    .line 57
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_12

    iput v8, v4, Lcom/google/android/gms/cast/TextTrackStyle;->h:I

    goto :goto_7

    .line 58
    :cond_12
    const-string v10, "OUTLINE"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_13

    iput v7, v4, Lcom/google/android/gms/cast/TextTrackStyle;->h:I

    goto :goto_7

    :cond_13
    const-string v10, "DROP_SHADOW"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_14

    iput v6, v4, Lcom/google/android/gms/cast/TextTrackStyle;->h:I

    goto :goto_7

    :cond_14
    const-string v10, "RAISED"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_15

    const/4 v10, 0x3

    iput v10, v4, Lcom/google/android/gms/cast/TextTrackStyle;->h:I

    goto :goto_7

    :cond_15
    const-string v10, "DEPRESSED"

    invoke-virtual {v10, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_16

    const/4 v9, 0x4

    iput v9, v4, Lcom/google/android/gms/cast/TextTrackStyle;->h:I

    .line 59
    :cond_16
    :goto_7
    const-string v9, "edgeColor"

    .line 60
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/google/android/gms/cast/TextTrackStyle;->G(Ljava/lang/String;)I

    move-result v9

    iput v9, v4, Lcom/google/android/gms/cast/TextTrackStyle;->i:I

    .line 61
    const-string v9, "windowType"

    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v10

    const-string v11, "NORMAL"

    if-eqz v10, :cond_19

    .line 62
    invoke-virtual {v1, v9}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_17

    iput v8, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    goto :goto_8

    .line 63
    :cond_17
    invoke-virtual {v11, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_18

    iput v7, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    goto :goto_8

    :cond_18
    const-string v2, "ROUNDED_CORNERS"

    invoke-virtual {v2, v9}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_19

    iput v6, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    .line 64
    :cond_19
    :goto_8
    const-string v2, "windowColor"

    .line 65
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Lcom/google/android/gms/cast/TextTrackStyle;->G(Ljava/lang/String;)I

    move-result v2

    iput v2, v4, Lcom/google/android/gms/cast/TextTrackStyle;->k:I

    iget v2, v4, Lcom/google/android/gms/cast/TextTrackStyle;->j:I

    if-ne v2, v6, :cond_1a

    const-string v2, "windowRoundedCornerRadius"

    .line 66
    invoke-virtual {v1, v2, v8}, Lorg/json/JSONObject;->optInt(Ljava/lang/String;I)I

    move-result v2

    iput v2, v4, Lcom/google/android/gms/cast/TextTrackStyle;->l:I

    :cond_1a
    const-string v2, "fontFamily"

    .line 67
    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    iput-object v2, v4, Lcom/google/android/gms/cast/TextTrackStyle;->m:Ljava/lang/String;

    .line 68
    const-string v2, "fontGenericFamily"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_21

    .line 69
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v9, "SANS_SERIF"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1b

    iput v8, v4, Lcom/google/android/gms/cast/TextTrackStyle;->n:I

    goto :goto_a

    .line 70
    :cond_1b
    const-string v9, "MONOSPACED_SANS_SERIF"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1c

    iput v7, v4, Lcom/google/android/gms/cast/TextTrackStyle;->n:I

    goto :goto_a

    :cond_1c
    const-string v9, "SERIF"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1d

    iput v6, v4, Lcom/google/android/gms/cast/TextTrackStyle;->n:I

    goto :goto_a

    :cond_1d
    const-string v9, "MONOSPACED_SERIF"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1e

    const/4 v10, 0x3

    iput v10, v4, Lcom/google/android/gms/cast/TextTrackStyle;->n:I

    goto :goto_a

    :cond_1e
    const-string v9, "CASUAL"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_1f

    const/4 v9, 0x4

    :goto_9
    iput v9, v4, Lcom/google/android/gms/cast/TextTrackStyle;->n:I

    goto :goto_a

    :cond_1f
    const-string v9, "CURSIVE"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_20

    const/4 v9, 0x5

    goto :goto_9

    :cond_20
    const-string v9, "SMALL_CAPITALS"

    invoke-virtual {v9, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_21

    const/4 v2, 0x6

    iput v2, v4, Lcom/google/android/gms/cast/TextTrackStyle;->n:I

    .line 71
    :cond_21
    :goto_a
    const-string v2, "fontStyle"

    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v9

    if-eqz v9, :cond_25

    .line 72
    invoke-virtual {v1, v2}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v11, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v9

    if-eqz v9, :cond_22

    iput v8, v4, Lcom/google/android/gms/cast/TextTrackStyle;->o:I

    goto :goto_b

    .line 73
    :cond_22
    const-string v8, "BOLD"

    invoke-virtual {v8, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_23

    iput v7, v4, Lcom/google/android/gms/cast/TextTrackStyle;->o:I

    goto :goto_b

    :cond_23
    const-string v7, "ITALIC"

    invoke-virtual {v7, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_24

    iput v6, v4, Lcom/google/android/gms/cast/TextTrackStyle;->o:I

    goto :goto_b

    :cond_24
    const-string v6, "BOLD_ITALIC"

    invoke-virtual {v6, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_25

    const/4 v10, 0x3

    iput v10, v4, Lcom/google/android/gms/cast/TextTrackStyle;->o:I

    :cond_25
    :goto_b
    invoke-virtual {v1, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v4, Lcom/google/android/gms/cast/TextTrackStyle;->q:Lorg/json/JSONObject;

    .line 74
    iput-object v4, v0, Lcom/google/android/gms/cast/MediaInfo;->k:Lcom/google/android/gms/cast/TextTrackStyle;

    goto :goto_c

    .line 75
    :cond_26
    iput-object v5, v0, Lcom/google/android/gms/cast/MediaInfo;->k:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 76
    :goto_c
    invoke-virtual/range {p0 .. p1}, Lcom/google/android/gms/cast/MediaInfo;->F(Lorg/json/JSONObject;)V

    .line 77
    invoke-virtual {v3, v15}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->v:Lorg/json/JSONObject;

    const-string v1, "entity"

    .line 78
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    const-string v1, "atvEntity"

    .line 79
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    const-string v1, "vmapAdsRequest"

    .line 80
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object v1

    if-nez v1, :cond_27

    goto :goto_d

    .line 81
    :cond_27
    const-string v2, "adTagUrl"

    invoke-static {v1, v2}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    const-string v4, "adsResponse"

    .line 82
    invoke-static {v1, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    new-instance v5, Lcom/google/android/gms/cast/VastAdsRequest;

    .line 83
    invoke-direct {v5, v2, v1}, Lcom/google/android/gms/cast/VastAdsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    :goto_d
    iput-object v5, v0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 85
    const-string v1, "startAbsoluteTime"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_28

    .line 86
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->isNull(Ljava/lang/String;)Z

    move-result v2

    if-nez v2, :cond_28

    .line 87
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optDouble(Ljava/lang/String;)D

    move-result-wide v1

    .line 88
    invoke-static {v1, v2}, Ljava/lang/Double;->isNaN(D)Z

    move-result v4

    if-nez v4, :cond_28

    invoke-static {v1, v2}, Ljava/lang/Double;->isInfinite(D)Z

    move-result v4

    if-nez v4, :cond_28

    cmpl-double v4, v1, v19

    if-ltz v4, :cond_28

    mul-double v1, v1, v17

    double-to-long v1, v1

    iput-wide v1, v0, Lcom/google/android/gms/cast/MediaInfo;->q:J

    .line 89
    :cond_28
    const-string v1, "contentUrl"

    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_29

    .line 90
    invoke-virtual {v3, v1}, Lorg/json/JSONObject;->optString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/lang/String;

    :cond_29
    const-string v1, "hlsSegmentFormat"

    .line 91
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    const-string v1, "hlsVideoSegmentFormat"

    .line 92
    invoke-static {v3, v1}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/google/android/gms/cast/MediaInfo;->u:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final F(Lorg/json/JSONObject;)V
    .locals 42

    .line 1
    move-object/from16 v1, p0

    .line 2
    .line 3
    move-object/from16 v2, p1

    .line 4
    .line 5
    const-string v3, "whenSkippable"

    .line 6
    .line 7
    const-string v0, "breaks"

    .line 8
    .line 9
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 10
    .line 11
    .line 12
    move-result v4

    .line 13
    const-string v5, "duration"

    .line 14
    .line 15
    const-wide/16 v6, 0x3e8

    .line 16
    .line 17
    const-string v8, "id"

    .line 18
    .line 19
    const/4 v9, 0x0

    .line 20
    const/4 v10, 0x0

    .line 21
    if-eqz v4, :cond_7

    .line 22
    .line 23
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 24
    .line 25
    .line 26
    move-result-object v4

    .line 27
    new-instance v11, Ljava/util/ArrayList;

    .line 28
    .line 29
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 30
    .line 31
    .line 32
    move-result v0

    .line 33
    invoke-direct {v11, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 34
    .line 35
    .line 36
    move v12, v9

    .line 37
    :goto_0
    invoke-virtual {v4}, Lorg/json/JSONArray;->length()I

    .line 38
    .line 39
    .line 40
    move-result v0

    .line 41
    if-ge v12, v0, :cond_6

    .line 42
    .line 43
    invoke-virtual {v4, v12}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 44
    .line 45
    .line 46
    move-result-object v0

    .line 47
    if-nez v0, :cond_1

    .line 48
    .line 49
    :cond_0
    :goto_1
    move-wide/from16 v25, v6

    .line 50
    .line 51
    :goto_2
    move-object v15, v10

    .line 52
    goto/16 :goto_7

    .line 53
    .line 54
    :cond_1
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 55
    .line 56
    .line 57
    move-result v13

    .line 58
    if-eqz v13, :cond_0

    .line 59
    .line 60
    const-string v13, "position"

    .line 61
    .line 62
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 63
    .line 64
    .line 65
    move-result v14

    .line 66
    if-nez v14, :cond_2

    .line 67
    .line 68
    goto :goto_1

    .line 69
    :cond_2
    :try_start_0
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 70
    .line 71
    .line 72
    move-result-object v18

    .line 73
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->getLong(Ljava/lang/String;)J

    .line 74
    .line 75
    .line 76
    move-result-wide v13

    .line 77
    sget-object v15, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 78
    .line 79
    mul-long v16, v13, v6

    .line 80
    .line 81
    const-string v13, "isWatched"

    .line 82
    .line 83
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 84
    .line 85
    .line 86
    move-result v21

    .line 87
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 88
    .line 89
    .line 90
    move-result-wide v13

    .line 91
    mul-long v19, v13, v6

    .line 92
    .line 93
    const-string v13, "breakClipIds"

    .line 94
    .line 95
    invoke-virtual {v0, v13}, Lorg/json/JSONObject;->optJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 96
    .line 97
    .line 98
    move-result-object v13

    .line 99
    new-array v14, v9, [Ljava/lang/String;

    .line 100
    .line 101
    if-eqz v13, :cond_4

    .line 102
    .line 103
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    .line 104
    .line 105
    .line 106
    move-result v14

    .line 107
    new-array v14, v14, [Ljava/lang/String;
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_1

    .line 108
    .line 109
    move-wide/from16 v25, v6

    .line 110
    .line 111
    move v15, v9

    .line 112
    :goto_3
    :try_start_1
    invoke-virtual {v13}, Lorg/json/JSONArray;->length()I

    .line 113
    .line 114
    .line 115
    move-result v6

    .line 116
    if-ge v15, v6, :cond_3

    .line 117
    .line 118
    invoke-virtual {v13, v15}, Lorg/json/JSONArray;->getString(I)Ljava/lang/String;

    .line 119
    .line 120
    .line 121
    move-result-object v6

    .line 122
    aput-object v6, v14, v15

    .line 123
    .line 124
    add-int/lit8 v15, v15, 0x1

    .line 125
    .line 126
    goto :goto_3

    .line 127
    :catch_0
    move-exception v0

    .line 128
    goto :goto_6

    .line 129
    :cond_3
    :goto_4
    move-object/from16 v22, v14

    .line 130
    .line 131
    goto :goto_5

    .line 132
    :catch_1
    move-exception v0

    .line 133
    move-wide/from16 v25, v6

    .line 134
    .line 135
    goto :goto_6

    .line 136
    :cond_4
    move-wide/from16 v25, v6

    .line 137
    .line 138
    goto :goto_4

    .line 139
    :goto_5
    const-string v6, "isEmbedded"

    .line 140
    .line 141
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 142
    .line 143
    .line 144
    move-result v23

    .line 145
    const-string v6, "expanded"

    .line 146
    .line 147
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optBoolean(Ljava/lang/String;)Z

    .line 148
    .line 149
    .line 150
    move-result v24

    .line 151
    new-instance v15, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 152
    .line 153
    invoke-direct/range {v15 .. v24}, Lcom/google/android/gms/cast/AdBreakInfo;-><init>(JLjava/lang/String;JZ[Ljava/lang/String;ZZ)V
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 154
    .line 155
    .line 156
    goto :goto_7

    .line 157
    :goto_6
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 158
    .line 159
    .line 160
    move-result-object v0

    .line 161
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 162
    .line 163
    new-instance v6, Ljava/lang/StringBuilder;

    .line 164
    .line 165
    const-string v7, "Error while creating an AdBreakInfo from JSON: "

    .line 166
    .line 167
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 168
    .line 169
    .line 170
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 171
    .line 172
    .line 173
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 174
    .line 175
    .line 176
    move-result-object v0

    .line 177
    const-string v6, "AdBreakInfo"

    .line 178
    .line 179
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    .line 181
    .line 182
    goto/16 :goto_2

    .line 183
    .line 184
    :goto_7
    if-eqz v15, :cond_5

    .line 185
    .line 186
    invoke-virtual {v11, v15}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 187
    .line 188
    .line 189
    add-int/lit8 v12, v12, 0x1

    .line 190
    .line 191
    move-wide/from16 v6, v25

    .line 192
    .line 193
    goto/16 :goto_0

    .line 194
    .line 195
    :cond_5
    invoke-virtual {v11}, Ljava/util/ArrayList;->clear()V

    .line 196
    .line 197
    .line 198
    goto :goto_8

    .line 199
    :cond_6
    move-wide/from16 v25, v6

    .line 200
    .line 201
    :goto_8
    new-instance v0, Ljava/util/ArrayList;

    .line 202
    .line 203
    invoke-direct {v0, v11}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 204
    .line 205
    .line 206
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->m:Ljava/util/List;

    .line 207
    .line 208
    goto :goto_9

    .line 209
    :cond_7
    move-wide/from16 v25, v6

    .line 210
    .line 211
    :goto_9
    const-string v0, "breakClips"

    .line 212
    .line 213
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 214
    .line 215
    .line 216
    move-result v4

    .line 217
    if-eqz v4, :cond_11

    .line 218
    .line 219
    invoke-virtual {v2, v0}, Lorg/json/JSONObject;->getJSONArray(Ljava/lang/String;)Lorg/json/JSONArray;

    .line 220
    .line 221
    .line 222
    move-result-object v2

    .line 223
    new-instance v4, Ljava/util/ArrayList;

    .line 224
    .line 225
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 226
    .line 227
    .line 228
    move-result v0

    .line 229
    invoke-direct {v4, v0}, Ljava/util/ArrayList;-><init>(I)V

    .line 230
    .line 231
    .line 232
    :goto_a
    invoke-virtual {v2}, Lorg/json/JSONArray;->length()I

    .line 233
    .line 234
    .line 235
    move-result v0

    .line 236
    if-ge v9, v0, :cond_10

    .line 237
    .line 238
    invoke-virtual {v2, v9}, Lorg/json/JSONArray;->getJSONObject(I)Lorg/json/JSONObject;

    .line 239
    .line 240
    .line 241
    move-result-object v0

    .line 242
    if-nez v0, :cond_8

    .line 243
    .line 244
    :goto_b
    move-object v0, v10

    .line 245
    goto/16 :goto_12

    .line 246
    .line 247
    :cond_8
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 248
    .line 249
    .line 250
    move-result v6

    .line 251
    if-nez v6, :cond_9

    .line 252
    .line 253
    goto :goto_b

    .line 254
    :cond_9
    :try_start_2
    invoke-virtual {v0, v8}, Lorg/json/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    .line 255
    .line 256
    .line 257
    move-result-object v28

    .line 258
    invoke-virtual {v0, v5}, Lorg/json/JSONObject;->optLong(Ljava/lang/String;)J

    .line 259
    .line 260
    .line 261
    move-result-wide v6

    .line 262
    mul-long v30, v6, v25

    .line 263
    .line 264
    const-string v6, "clickThroughUrl"

    .line 265
    .line 266
    invoke-static {v0, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 267
    .line 268
    .line 269
    move-result-object v34

    .line 270
    const-string v6, "contentUrl"

    .line 271
    .line 272
    invoke-static {v0, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 273
    .line 274
    .line 275
    move-result-object v32

    .line 276
    const-string v6, "mimeType"

    .line 277
    .line 278
    invoke-static {v0, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 279
    .line 280
    .line 281
    move-result-object v6

    .line 282
    if-nez v6, :cond_a

    .line 283
    .line 284
    const-string v6, "contentType"

    .line 285
    .line 286
    invoke-static {v0, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 287
    .line 288
    .line 289
    move-result-object v6

    .line 290
    :cond_a
    move-object/from16 v33, v6

    .line 291
    .line 292
    goto :goto_c

    .line 293
    :catch_2
    move-exception v0

    .line 294
    goto/16 :goto_11

    .line 295
    .line 296
    :goto_c
    const-string v6, "title"

    .line 297
    .line 298
    invoke-static {v0, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 299
    .line 300
    .line 301
    move-result-object v29

    .line 302
    const-string v6, "customData"

    .line 303
    .line 304
    invoke-virtual {v0, v6}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 305
    .line 306
    .line 307
    move-result-object v6

    .line 308
    const-string v7, "contentId"

    .line 309
    .line 310
    invoke-static {v0, v7}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 311
    .line 312
    .line 313
    move-result-object v36

    .line 314
    const-string v7, "posterUrl"

    .line 315
    .line 316
    invoke-static {v0, v7}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 317
    .line 318
    .line 319
    move-result-object v37

    .line 320
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->has(Ljava/lang/String;)Z

    .line 321
    .line 322
    .line 323
    move-result v7

    .line 324
    if-eqz v7, :cond_b

    .line 325
    .line 326
    invoke-virtual {v0, v3}, Lorg/json/JSONObject;->get(Ljava/lang/String;)Ljava/lang/Object;

    .line 327
    .line 328
    .line 329
    move-result-object v7

    .line 330
    check-cast v7, Ljava/lang/Integer;

    .line 331
    .line 332
    invoke-virtual {v7}, Ljava/lang/Integer;->intValue()I

    .line 333
    .line 334
    .line 335
    move-result v7

    .line 336
    int-to-long v11, v7

    .line 337
    mul-long v11, v11, v25

    .line 338
    .line 339
    :goto_d
    move-wide/from16 v38, v11

    .line 340
    .line 341
    goto :goto_e

    .line 342
    :cond_b
    const-wide/16 v11, -0x1

    .line 343
    .line 344
    goto :goto_d

    .line 345
    :goto_e
    const-string v7, "hlsSegmentFormat"

    .line 346
    .line 347
    invoke-static {v0, v7}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 348
    .line 349
    .line 350
    move-result-object v40

    .line 351
    const-string v7, "vastAdsRequest"

    .line 352
    .line 353
    invoke-virtual {v0, v7}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    .line 354
    .line 355
    .line 356
    move-result-object v0

    .line 357
    if-nez v0, :cond_c

    .line 358
    .line 359
    move-object/from16 v41, v10

    .line 360
    .line 361
    goto :goto_f

    .line 362
    :cond_c
    const-string v7, "adTagUrl"

    .line 363
    .line 364
    invoke-static {v0, v7}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    .line 366
    .line 367
    move-result-object v7

    .line 368
    const-string v11, "adsResponse"

    .line 369
    .line 370
    invoke-static {v0, v11}, Lcom/google/android/gms/cast/internal/CastUtils;->a(Lorg/json/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    .line 371
    .line 372
    .line 373
    move-result-object v0

    .line 374
    new-instance v11, Lcom/google/android/gms/cast/VastAdsRequest;

    .line 375
    .line 376
    invoke-direct {v11, v7, v0}, Lcom/google/android/gms/cast/VastAdsRequest;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 377
    .line 378
    .line 379
    move-object/from16 v41, v11

    .line 380
    .line 381
    :goto_f
    new-instance v27, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 382
    .line 383
    if-eqz v6, :cond_d

    .line 384
    .line 385
    invoke-virtual {v6}, Lorg/json/JSONObject;->length()I

    .line 386
    .line 387
    .line 388
    move-result v0

    .line 389
    if-nez v0, :cond_e

    .line 390
    .line 391
    :cond_d
    move-object/from16 v35, v10

    .line 392
    .line 393
    goto :goto_10

    .line 394
    :cond_e
    invoke-virtual {v6}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 395
    .line 396
    .line 397
    move-result-object v0

    .line 398
    move-object/from16 v35, v0

    .line 399
    .line 400
    :goto_10
    invoke-direct/range {v27 .. v41}, Lcom/google/android/gms/cast/AdBreakClipInfo;-><init>(Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;JLjava/lang/String;Lcom/google/android/gms/cast/VastAdsRequest;)V
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_2

    .line 401
    .line 402
    .line 403
    move-object/from16 v0, v27

    .line 404
    .line 405
    goto :goto_12

    .line 406
    :goto_11
    invoke-virtual {v0}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    .line 407
    .line 408
    .line 409
    move-result-object v0

    .line 410
    sget-object v6, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 411
    .line 412
    new-instance v6, Ljava/lang/StringBuilder;

    .line 413
    .line 414
    const-string v7, "Error while creating an AdBreakClipInfo from JSON: "

    .line 415
    .line 416
    invoke-direct {v6, v7}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 417
    .line 418
    .line 419
    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 420
    .line 421
    .line 422
    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 423
    .line 424
    .line 425
    move-result-object v0

    .line 426
    const-string v6, "AdBreakClipInfo"

    .line 427
    .line 428
    invoke-static {v6, v0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    .line 430
    .line 431
    goto/16 :goto_b

    .line 432
    .line 433
    :goto_12
    if-eqz v0, :cond_f

    .line 434
    .line 435
    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 436
    .line 437
    .line 438
    add-int/lit8 v9, v9, 0x1

    .line 439
    .line 440
    goto/16 :goto_a

    .line 441
    .line 442
    :cond_f
    invoke-virtual {v4}, Ljava/util/ArrayList;->clear()V

    .line 443
    .line 444
    .line 445
    :cond_10
    new-instance v0, Ljava/util/ArrayList;

    .line 446
    .line 447
    invoke-direct {v0, v4}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 448
    .line 449
    .line 450
    iput-object v0, v1, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/List;

    .line 451
    .line 452
    :cond_11
    return-void
.end method

.method public final G()Lorg/json/JSONObject;
    .locals 9

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    .line 2
    .line 3
    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 4
    .line 5
    .line 6
    :try_start_0
    const-string v1, "contentId"

    .line 7
    .line 8
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    .line 9
    .line 10
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 11
    .line 12
    .line 13
    const-string v1, "contentUrl"

    .line 14
    .line 15
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/lang/String;

    .line 16
    .line 17
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    .line 21
    .line 22
    const/4 v2, 0x1

    .line 23
    if-eq v1, v2, :cond_1

    .line 24
    .line 25
    const/4 v2, 0x2

    .line 26
    if-eq v1, v2, :cond_0

    .line 27
    .line 28
    const-string v1, "NONE"

    .line 29
    .line 30
    goto :goto_0

    .line 31
    :cond_0
    const-string v1, "LIVE"

    .line 32
    .line 33
    goto :goto_0

    .line 34
    :cond_1
    const-string v1, "BUFFERED"

    .line 35
    .line 36
    :goto_0
    const-string v2, "streamType"

    .line 37
    .line 38
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 39
    .line 40
    .line 41
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->g:Ljava/lang/String;

    .line 42
    .line 43
    if-eqz v1, :cond_2

    .line 44
    .line 45
    const-string v2, "contentType"

    .line 46
    .line 47
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 48
    .line 49
    .line 50
    :cond_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    .line 51
    .line 52
    if-eqz v1, :cond_3

    .line 53
    .line 54
    const-string v2, "metadata"

    .line 55
    .line 56
    invoke-virtual {v1}, Lcom/google/android/gms/cast/MediaMetadata;->k0()Lorg/json/JSONObject;

    .line 57
    .line 58
    .line 59
    move-result-object v1

    .line 60
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 61
    .line 62
    .line 63
    :cond_3
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->i:J
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    .line 64
    .line 65
    const-wide/16 v3, -0x1

    .line 66
    .line 67
    cmp-long v5, v1, v3

    .line 68
    .line 69
    const-wide v6, 0x408f400000000000L    # 1000.0

    .line 70
    .line 71
    .line 72
    .line 73
    .line 74
    const-string v8, "duration"

    .line 75
    .line 76
    if-gtz v5, :cond_4

    .line 77
    .line 78
    :try_start_1
    sget-object v1, Lorg/json/JSONObject;->NULL:Ljava/lang/Object;

    .line 79
    .line 80
    invoke-virtual {v0, v8, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 81
    .line 82
    .line 83
    goto :goto_1

    .line 84
    :cond_4
    sget-object v5, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 85
    .line 86
    long-to-double v1, v1

    .line 87
    div-double/2addr v1, v6

    .line 88
    invoke-virtual {v0, v8, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;
    :try_end_1
    .catch Lorg/json/JSONException; {:try_start_1 .. :try_end_1} :catch_0

    .line 89
    .line 90
    .line 91
    :goto_1
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/List;

    .line 92
    .line 93
    if-eqz v1, :cond_6

    .line 94
    .line 95
    :try_start_2
    new-instance v2, Lorg/json/JSONArray;

    .line 96
    .line 97
    invoke-direct {v2}, Lorg/json/JSONArray;-><init>()V

    .line 98
    .line 99
    .line 100
    invoke-interface {v1}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 101
    .line 102
    .line 103
    move-result-object v1

    .line 104
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    .line 105
    .line 106
    .line 107
    move-result v5

    .line 108
    if-eqz v5, :cond_5

    .line 109
    .line 110
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 111
    .line 112
    .line 113
    move-result-object v5

    .line 114
    check-cast v5, Lcom/google/android/gms/cast/MediaTrack;

    .line 115
    .line 116
    invoke-virtual {v5}, Lcom/google/android/gms/cast/MediaTrack;->F()Lorg/json/JSONObject;

    .line 117
    .line 118
    .line 119
    move-result-object v5

    .line 120
    invoke-virtual {v2, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 121
    .line 122
    .line 123
    goto :goto_2

    .line 124
    :cond_5
    const-string v1, "tracks"

    .line 125
    .line 126
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 127
    .line 128
    .line 129
    :cond_6
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->k:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 130
    .line 131
    if-eqz v1, :cond_7

    .line 132
    .line 133
    const-string v2, "textTrackStyle"

    .line 134
    .line 135
    invoke-virtual {v1}, Lcom/google/android/gms/cast/TextTrackStyle;->F()Lorg/json/JSONObject;

    .line 136
    .line 137
    .line 138
    move-result-object v1

    .line 139
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 140
    .line 141
    .line 142
    :cond_7
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->v:Lorg/json/JSONObject;

    .line 143
    .line 144
    if-eqz v1, :cond_8

    .line 145
    .line 146
    const-string v2, "customData"

    .line 147
    .line 148
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 149
    .line 150
    .line 151
    :cond_8
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    .line 152
    .line 153
    if-eqz v1, :cond_9

    .line 154
    .line 155
    const-string v2, "entity"

    .line 156
    .line 157
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 158
    .line 159
    .line 160
    :cond_9
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->m:Ljava/util/List;

    .line 161
    .line 162
    if-eqz v1, :cond_b

    .line 163
    .line 164
    new-instance v1, Lorg/json/JSONArray;

    .line 165
    .line 166
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 167
    .line 168
    .line 169
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->m:Ljava/util/List;

    .line 170
    .line 171
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 172
    .line 173
    .line 174
    move-result-object v2

    .line 175
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 176
    .line 177
    .line 178
    move-result v5

    .line 179
    if-eqz v5, :cond_a

    .line 180
    .line 181
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 182
    .line 183
    .line 184
    move-result-object v5

    .line 185
    check-cast v5, Lcom/google/android/gms/cast/AdBreakInfo;

    .line 186
    .line 187
    invoke-virtual {v5}, Lcom/google/android/gms/cast/AdBreakInfo;->F()Lorg/json/JSONObject;

    .line 188
    .line 189
    .line 190
    move-result-object v5

    .line 191
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 192
    .line 193
    .line 194
    goto :goto_3

    .line 195
    :cond_a
    const-string v2, "breaks"

    .line 196
    .line 197
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 198
    .line 199
    .line 200
    :cond_b
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/List;

    .line 201
    .line 202
    if-eqz v1, :cond_d

    .line 203
    .line 204
    new-instance v1, Lorg/json/JSONArray;

    .line 205
    .line 206
    invoke-direct {v1}, Lorg/json/JSONArray;-><init>()V

    .line 207
    .line 208
    .line 209
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/List;

    .line 210
    .line 211
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    .line 212
    .line 213
    .line 214
    move-result-object v2

    .line 215
    :goto_4
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    .line 216
    .line 217
    .line 218
    move-result v5

    .line 219
    if-eqz v5, :cond_c

    .line 220
    .line 221
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    .line 222
    .line 223
    .line 224
    move-result-object v5

    .line 225
    check-cast v5, Lcom/google/android/gms/cast/AdBreakClipInfo;

    .line 226
    .line 227
    invoke-virtual {v5}, Lcom/google/android/gms/cast/AdBreakClipInfo;->F()Lorg/json/JSONObject;

    .line 228
    .line 229
    .line 230
    move-result-object v5

    .line 231
    invoke-virtual {v1, v5}, Lorg/json/JSONArray;->put(Ljava/lang/Object;)Lorg/json/JSONArray;

    .line 232
    .line 233
    .line 234
    goto :goto_4

    .line 235
    :cond_c
    const-string v2, "breakClips"

    .line 236
    .line 237
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 238
    .line 239
    .line 240
    :cond_d
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 241
    .line 242
    if-eqz v1, :cond_e

    .line 243
    .line 244
    const-string v2, "vmapAdsRequest"

    .line 245
    .line 246
    invoke-virtual {v1}, Lcom/google/android/gms/cast/VastAdsRequest;->F()Lorg/json/JSONObject;

    .line 247
    .line 248
    .line 249
    move-result-object v1

    .line 250
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 251
    .line 252
    .line 253
    :cond_e
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->q:J

    .line 254
    .line 255
    cmp-long v3, v1, v3

    .line 256
    .line 257
    if-eqz v3, :cond_f

    .line 258
    .line 259
    const-string v3, "startAbsoluteTime"

    .line 260
    .line 261
    sget-object v4, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 262
    .line 263
    long-to-double v1, v1

    .line 264
    div-double/2addr v1, v6

    .line 265
    invoke-virtual {v0, v3, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;D)Lorg/json/JSONObject;

    .line 266
    .line 267
    .line 268
    :cond_f
    const-string v1, "atvEntity"

    .line 269
    .line 270
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    .line 271
    .line 272
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->putOpt(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 273
    .line 274
    .line 275
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 276
    .line 277
    if-eqz v1, :cond_10

    .line 278
    .line 279
    const-string v2, "hlsSegmentFormat"

    .line 280
    .line 281
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;

    .line 282
    .line 283
    .line 284
    :cond_10
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Ljava/lang/String;

    .line 285
    .line 286
    if-eqz v1, :cond_11

    .line 287
    .line 288
    const-string v2, "hlsVideoSegmentFormat"

    .line 289
    .line 290
    invoke-virtual {v0, v2, v1}, Lorg/json/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Lorg/json/JSONObject;
    :try_end_2
    .catch Lorg/json/JSONException; {:try_start_2 .. :try_end_2} :catch_0

    .line 291
    .line 292
    .line 293
    :catch_0
    :cond_11
    return-object v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 7

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p0, p1, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/MediaInfo;

    .line 6
    .line 7
    const/4 v2, 0x0

    .line 8
    if-nez v1, :cond_1

    .line 9
    .line 10
    return v2

    .line 11
    :cond_1
    check-cast p1, Lcom/google/android/gms/cast/MediaInfo;

    .line 12
    .line 13
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->v:Lorg/json/JSONObject;

    .line 14
    .line 15
    if-eqz v1, :cond_2

    .line 16
    .line 17
    move v3, v2

    .line 18
    goto :goto_0

    .line 19
    :cond_2
    move v3, v0

    .line 20
    :goto_0
    iget-object v4, p1, Lcom/google/android/gms/cast/MediaInfo;->v:Lorg/json/JSONObject;

    .line 21
    .line 22
    if-eqz v4, :cond_3

    .line 23
    .line 24
    move v5, v2

    .line 25
    goto :goto_1

    .line 26
    :cond_3
    move v5, v0

    .line 27
    :goto_1
    if-eq v3, v5, :cond_4

    .line 28
    .line 29
    return v2

    .line 30
    :cond_4
    if-eqz v1, :cond_6

    .line 31
    .line 32
    if-eqz v4, :cond_6

    .line 33
    .line 34
    invoke-static {v1, v4}, Lcom/google/android/gms/common/util/JsonUtils;->areJsonValuesEquivalent(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 35
    .line 36
    .line 37
    move-result v1

    .line 38
    if-eqz v1, :cond_5

    .line 39
    .line 40
    goto :goto_2

    .line 41
    :cond_5
    return v2

    .line 42
    :cond_6
    :goto_2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    .line 43
    .line 44
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    .line 45
    .line 46
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 47
    .line 48
    .line 49
    move-result v1

    .line 50
    if-eqz v1, :cond_7

    .line 51
    .line 52
    iget v1, p0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    .line 53
    .line 54
    iget v3, p1, Lcom/google/android/gms/cast/MediaInfo;->f:I

    .line 55
    .line 56
    if-ne v1, v3, :cond_7

    .line 57
    .line 58
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->g:Ljava/lang/String;

    .line 59
    .line 60
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->g:Ljava/lang/String;

    .line 61
    .line 62
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 63
    .line 64
    .line 65
    move-result v1

    .line 66
    if-eqz v1, :cond_7

    .line 67
    .line 68
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    .line 69
    .line 70
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    .line 71
    .line 72
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 73
    .line 74
    .line 75
    move-result v1

    .line 76
    if-eqz v1, :cond_7

    .line 77
    .line 78
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->i:J

    .line 79
    .line 80
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->i:J

    .line 81
    .line 82
    cmp-long v1, v3, v5

    .line 83
    .line 84
    if-nez v1, :cond_7

    .line 85
    .line 86
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/List;

    .line 87
    .line 88
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/List;

    .line 89
    .line 90
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 91
    .line 92
    .line 93
    move-result v1

    .line 94
    if-eqz v1, :cond_7

    .line 95
    .line 96
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->k:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 97
    .line 98
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->k:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 99
    .line 100
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 101
    .line 102
    .line 103
    move-result v1

    .line 104
    if-eqz v1, :cond_7

    .line 105
    .line 106
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->m:Ljava/util/List;

    .line 107
    .line 108
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->m:Ljava/util/List;

    .line 109
    .line 110
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 111
    .line 112
    .line 113
    move-result v1

    .line 114
    if-eqz v1, :cond_7

    .line 115
    .line 116
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/List;

    .line 117
    .line 118
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/List;

    .line 119
    .line 120
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 121
    .line 122
    .line 123
    move-result v1

    .line 124
    if-eqz v1, :cond_7

    .line 125
    .line 126
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    .line 127
    .line 128
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    .line 129
    .line 130
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 131
    .line 132
    .line 133
    move-result v1

    .line 134
    if-eqz v1, :cond_7

    .line 135
    .line 136
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 137
    .line 138
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 139
    .line 140
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 141
    .line 142
    .line 143
    move-result v1

    .line 144
    if-eqz v1, :cond_7

    .line 145
    .line 146
    iget-wide v3, p0, Lcom/google/android/gms/cast/MediaInfo;->q:J

    .line 147
    .line 148
    iget-wide v5, p1, Lcom/google/android/gms/cast/MediaInfo;->q:J

    .line 149
    .line 150
    cmp-long v1, v3, v5

    .line 151
    .line 152
    if-nez v1, :cond_7

    .line 153
    .line 154
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    .line 155
    .line 156
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    .line 157
    .line 158
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 159
    .line 160
    .line 161
    move-result v1

    .line 162
    if-eqz v1, :cond_7

    .line 163
    .line 164
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/lang/String;

    .line 165
    .line 166
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/lang/String;

    .line 167
    .line 168
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 169
    .line 170
    .line 171
    move-result v1

    .line 172
    if-eqz v1, :cond_7

    .line 173
    .line 174
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 175
    .line 176
    iget-object v3, p1, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 177
    .line 178
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 179
    .line 180
    .line 181
    move-result v1

    .line 182
    if-eqz v1, :cond_7

    .line 183
    .line 184
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Ljava/lang/String;

    .line 185
    .line 186
    iget-object p1, p1, Lcom/google/android/gms/cast/MediaInfo;->u:Ljava/lang/String;

    .line 187
    .line 188
    invoke-static {v1, p1}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 189
    .line 190
    .line 191
    move-result p1

    .line 192
    if-eqz p1, :cond_7

    .line 193
    .line 194
    return v0

    .line 195
    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 9

    .line 1
    iget v0, p0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    .line 2
    .line 3
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 4
    .line 5
    .line 6
    move-result-object v0

    .line 7
    iget-wide v1, p0, Lcom/google/android/gms/cast/MediaInfo;->i:J

    .line 8
    .line 9
    invoke-static {v1, v2}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 10
    .line 11
    .line 12
    move-result-object v1

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->v:Lorg/json/JSONObject;

    .line 14
    .line 15
    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    .line 16
    .line 17
    .line 18
    move-result-object v2

    .line 19
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->m:Ljava/util/List;

    .line 20
    .line 21
    iget-object v4, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/List;

    .line 22
    .line 23
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaInfo;->q:J

    .line 24
    .line 25
    invoke-static {v5, v6}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    .line 26
    .line 27
    .line 28
    move-result-object v5

    .line 29
    const/16 v6, 0x10

    .line 30
    .line 31
    new-array v6, v6, [Ljava/lang/Object;

    .line 32
    .line 33
    const/4 v7, 0x0

    .line 34
    iget-object v8, p0, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    .line 35
    .line 36
    aput-object v8, v6, v7

    .line 37
    .line 38
    const/4 v7, 0x1

    .line 39
    aput-object v0, v6, v7

    .line 40
    .line 41
    const/4 v0, 0x2

    .line 42
    iget-object v7, p0, Lcom/google/android/gms/cast/MediaInfo;->g:Ljava/lang/String;

    .line 43
    .line 44
    aput-object v7, v6, v0

    .line 45
    .line 46
    const/4 v0, 0x3

    .line 47
    iget-object v7, p0, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    .line 48
    .line 49
    aput-object v7, v6, v0

    .line 50
    .line 51
    const/4 v0, 0x4

    .line 52
    aput-object v1, v6, v0

    .line 53
    .line 54
    const/4 v0, 0x5

    .line 55
    aput-object v2, v6, v0

    .line 56
    .line 57
    const/4 v0, 0x6

    .line 58
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/List;

    .line 59
    .line 60
    aput-object v1, v6, v0

    .line 61
    .line 62
    const/4 v0, 0x7

    .line 63
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->k:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 64
    .line 65
    aput-object v1, v6, v0

    .line 66
    .line 67
    const/16 v0, 0x8

    .line 68
    .line 69
    aput-object v3, v6, v0

    .line 70
    .line 71
    const/16 v0, 0x9

    .line 72
    .line 73
    aput-object v4, v6, v0

    .line 74
    .line 75
    const/16 v0, 0xa

    .line 76
    .line 77
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    .line 78
    .line 79
    aput-object v1, v6, v0

    .line 80
    .line 81
    const/16 v0, 0xb

    .line 82
    .line 83
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 84
    .line 85
    aput-object v1, v6, v0

    .line 86
    .line 87
    const/16 v0, 0xc

    .line 88
    .line 89
    aput-object v5, v6, v0

    .line 90
    .line 91
    const/16 v0, 0xd

    .line 92
    .line 93
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    .line 94
    .line 95
    aput-object v1, v6, v0

    .line 96
    .line 97
    const/16 v0, 0xe

    .line 98
    .line 99
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 100
    .line 101
    aput-object v1, v6, v0

    .line 102
    .line 103
    const/16 v0, 0xf

    .line 104
    .line 105
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Ljava/lang/String;

    .line 106
    .line 107
    aput-object v1, v6, v0

    .line 108
    .line 109
    invoke-static {v6}, Lcom/google/android/gms/common/internal/Objects;->hashCode([Ljava/lang/Object;)I

    .line 110
    .line 111
    .line 112
    move-result v0

    .line 113
    return v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 7

    .line 1
    const/4 v0, 0x0

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->v:Lorg/json/JSONObject;

    .line 3
    .line 4
    if-nez v1, :cond_0

    .line 5
    .line 6
    move-object v1, v0

    .line 7
    goto :goto_0

    .line 8
    :cond_0
    invoke-virtual {v1}, Lorg/json/JSONObject;->toString()Ljava/lang/String;

    .line 9
    .line 10
    .line 11
    move-result-object v1

    .line 12
    :goto_0
    iput-object v1, p0, Lcom/google/android/gms/cast/MediaInfo;->l:Ljava/lang/String;

    .line 13
    .line 14
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 15
    .line 16
    .line 17
    move-result v1

    .line 18
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->c:Ljava/lang/String;

    .line 19
    .line 20
    if-nez v2, :cond_1

    .line 21
    .line 22
    const-string v2, ""

    .line 23
    .line 24
    :cond_1
    const/4 v3, 0x2

    .line 25
    const/4 v4, 0x0

    .line 26
    invoke-static {p1, v3, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 27
    .line 28
    .line 29
    const/4 v2, 0x3

    .line 30
    iget v3, p0, Lcom/google/android/gms/cast/MediaInfo;->f:I

    .line 31
    .line 32
    invoke-static {p1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 33
    .line 34
    .line 35
    const/4 v2, 0x4

    .line 36
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->g:Ljava/lang/String;

    .line 37
    .line 38
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x5

    .line 42
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->h:Lcom/google/android/gms/cast/MediaMetadata;

    .line 43
    .line 44
    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 45
    .line 46
    .line 47
    const/4 v2, 0x6

    .line 48
    iget-wide v5, p0, Lcom/google/android/gms/cast/MediaInfo;->i:J

    .line 49
    .line 50
    invoke-static {p1, v2, v5, v6}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 51
    .line 52
    .line 53
    const/4 v2, 0x7

    .line 54
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->j:Ljava/util/List;

    .line 55
    .line 56
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 57
    .line 58
    .line 59
    const/16 v2, 0x8

    .line 60
    .line 61
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->k:Lcom/google/android/gms/cast/TextTrackStyle;

    .line 62
    .line 63
    invoke-static {p1, v2, v3, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 64
    .line 65
    .line 66
    const/16 v2, 0x9

    .line 67
    .line 68
    iget-object v3, p0, Lcom/google/android/gms/cast/MediaInfo;->l:Ljava/lang/String;

    .line 69
    .line 70
    invoke-static {p1, v2, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 71
    .line 72
    .line 73
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->m:Ljava/util/List;

    .line 74
    .line 75
    if-nez v2, :cond_2

    .line 76
    .line 77
    move-object v2, v0

    .line 78
    goto :goto_1

    .line 79
    :cond_2
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 80
    .line 81
    .line 82
    move-result-object v2

    .line 83
    :goto_1
    const/16 v3, 0xa

    .line 84
    .line 85
    invoke-static {p1, v3, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 86
    .line 87
    .line 88
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->n:Ljava/util/List;

    .line 89
    .line 90
    if-nez v2, :cond_3

    .line 91
    .line 92
    goto :goto_2

    .line 93
    :cond_3
    invoke-static {v2}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 94
    .line 95
    .line 96
    move-result-object v0

    .line 97
    :goto_2
    const/16 v2, 0xb

    .line 98
    .line 99
    invoke-static {p1, v2, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 100
    .line 101
    .line 102
    const/16 v0, 0xc

    .line 103
    .line 104
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->o:Ljava/lang/String;

    .line 105
    .line 106
    invoke-static {p1, v0, v2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 107
    .line 108
    .line 109
    const/16 v0, 0xd

    .line 110
    .line 111
    iget-object v2, p0, Lcom/google/android/gms/cast/MediaInfo;->p:Lcom/google/android/gms/cast/VastAdsRequest;

    .line 112
    .line 113
    invoke-static {p1, v0, v2, p2, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 114
    .line 115
    .line 116
    const/16 p2, 0xe

    .line 117
    .line 118
    iget-wide v2, p0, Lcom/google/android/gms/cast/MediaInfo;->q:J

    .line 119
    .line 120
    invoke-static {p1, p2, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 121
    .line 122
    .line 123
    const/16 p2, 0xf

    .line 124
    .line 125
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->r:Ljava/lang/String;

    .line 126
    .line 127
    invoke-static {p1, p2, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 128
    .line 129
    .line 130
    const/16 p2, 0x10

    .line 131
    .line 132
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->s:Ljava/lang/String;

    .line 133
    .line 134
    invoke-static {p1, p2, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 135
    .line 136
    .line 137
    const/16 p2, 0x11

    .line 138
    .line 139
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->t:Ljava/lang/String;

    .line 140
    .line 141
    invoke-static {p1, p2, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 142
    .line 143
    .line 144
    const/16 p2, 0x12

    .line 145
    .line 146
    iget-object v0, p0, Lcom/google/android/gms/cast/MediaInfo;->u:Ljava/lang/String;

    .line 147
    .line 148
    invoke-static {p1, p2, v0, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 149
    .line 150
    .line 151
    invoke-static {p1, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 152
    .line 153
    .line 154
    return-void
.end method
