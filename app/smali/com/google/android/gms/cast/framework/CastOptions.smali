.class public Lcom/google/android/gms/cast/framework/CastOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "CastOptionsCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/CastOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/framework/CastOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final w:Lcom/google/android/gms/cast/framework/zzj;

.field public static final x:Lcom/google/android/gms/cast/framework/zzl;

.field public static final y:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;


# instance fields
.field public final c:Ljava/lang/String;

.field public final f:Ljava/util/ArrayList;

.field public final g:Z

.field public final h:Lcom/google/android/gms/cast/LaunchOptions;

.field public final i:Z

.field public final j:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

.field public final k:Z

.field public final l:D

.field public final m:Z

.field public final n:Z

.field public final o:Z

.field public final p:Ljava/util/List;

.field public final q:Z

.field public final r:Z

.field public final s:Lcom/google/android/gms/cast/framework/zzj;

.field public t:Lcom/google/android/gms/cast/framework/zzl;

.field public final u:Z

.field public final v:Z


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/framework/zzj;

    .line 2
    .line 3
    const/4 v1, 0x0

    .line 4
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/framework/zzj;-><init>(Z)V

    .line 5
    .line 6
    .line 7
    sput-object v0, Lcom/google/android/gms/cast/framework/CastOptions;->w:Lcom/google/android/gms/cast/framework/zzj;

    .line 8
    .line 9
    new-instance v0, Lcom/google/android/gms/cast/framework/zzl;

    .line 10
    .line 11
    invoke-direct {v0, v1}, Lcom/google/android/gms/cast/framework/zzl;-><init>(I)V

    .line 12
    .line 13
    .line 14
    sput-object v0, Lcom/google/android/gms/cast/framework/CastOptions;->x:Lcom/google/android/gms/cast/framework/zzl;

    .line 15
    .line 16
    new-instance v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;

    .line 17
    .line 18
    invoke-direct {v0}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;-><init>()V

    .line 19
    .line 20
    .line 21
    iput-boolean v1, v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->d:Z

    .line 22
    .line 23
    const/4 v1, 0x0

    .line 24
    iput-object v1, v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 25
    .line 26
    iget-object v2, v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->b:Lcom/google/android/gms/cast/framework/media/ImagePicker;

    .line 27
    .line 28
    if-nez v2, :cond_0

    .line 29
    .line 30
    :goto_0
    move-object v5, v1

    .line 31
    goto :goto_1

    .line 32
    :cond_0
    iget-object v1, v2, Lcom/google/android/gms/cast/framework/media/ImagePicker;->a:Lcom/google/android/gms/cast/framework/media/zzd;

    .line 33
    .line 34
    goto :goto_0

    .line 35
    :goto_1
    new-instance v2, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 36
    .line 37
    iget-object v4, v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->a:Ljava/lang/String;

    .line 38
    .line 39
    iget-object v6, v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->c:Lcom/google/android/gms/cast/framework/media/NotificationOptions;

    .line 40
    .line 41
    const/4 v7, 0x0

    .line 42
    iget-boolean v8, v0, Lcom/google/android/gms/cast/framework/media/CastMediaOptions$Builder;->d:Z

    .line 43
    .line 44
    const-string v3, "com.google.android.gms.cast.framework.media.MediaIntentReceiver"

    .line 45
    .line 46
    invoke-direct/range {v2 .. v8}, Lcom/google/android/gms/cast/framework/media/CastMediaOptions;-><init>(Ljava/lang/String;Ljava/lang/String;Landroid/os/IBinder;Lcom/google/android/gms/cast/framework/media/NotificationOptions;ZZ)V

    .line 47
    .line 48
    .line 49
    sput-object v2, Lcom/google/android/gms/cast/framework/CastOptions;->y:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 50
    .line 51
    new-instance v0, Lcom/google/android/gms/cast/framework/zzn;

    .line 52
    .line 53
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 54
    .line 55
    .line 56
    sput-object v0, Lcom/google/android/gms/cast/framework/CastOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 57
    .line 58
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/util/List;ZLcom/google/android/gms/cast/LaunchOptions;ZLcom/google/android/gms/cast/framework/media/CastMediaOptions;ZDZZZLjava/util/List;ZZLcom/google/android/gms/cast/framework/zzj;Lcom/google/android/gms/cast/framework/zzl;ZZ)V
    .locals 2

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    .line 3
    .line 4
    const/4 v0, 0x1

    .line 5
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 6
    .line 7
    .line 8
    move-result v1

    .line 9
    if-ne v0, v1, :cond_0

    .line 10
    .line 11
    const-string p1, ""

    .line 12
    .line 13
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->c:Ljava/lang/String;

    .line 14
    .line 15
    if-nez p2, :cond_1

    .line 16
    .line 17
    const/4 p1, 0x0

    .line 18
    goto :goto_0

    .line 19
    :cond_1
    invoke-interface {p2}, Ljava/util/List;->size()I

    .line 20
    .line 21
    .line 22
    move-result p1

    .line 23
    :goto_0
    new-instance v0, Ljava/util/ArrayList;

    .line 24
    .line 25
    invoke-direct {v0, p1}, Ljava/util/ArrayList;-><init>(I)V

    .line 26
    .line 27
    .line 28
    iput-object v0, p0, Lcom/google/android/gms/cast/framework/CastOptions;->f:Ljava/util/ArrayList;

    .line 29
    .line 30
    if-lez p1, :cond_2

    .line 31
    .line 32
    invoke-virtual {v0, p2}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 33
    .line 34
    .line 35
    :cond_2
    iput-boolean p3, p0, Lcom/google/android/gms/cast/framework/CastOptions;->g:Z

    .line 36
    .line 37
    if-nez p4, :cond_3

    .line 38
    .line 39
    new-instance p4, Lcom/google/android/gms/cast/LaunchOptions;

    .line 40
    .line 41
    invoke-direct {p4}, Lcom/google/android/gms/cast/LaunchOptions;-><init>()V

    .line 42
    .line 43
    .line 44
    :cond_3
    iput-object p4, p0, Lcom/google/android/gms/cast/framework/CastOptions;->h:Lcom/google/android/gms/cast/LaunchOptions;

    .line 45
    .line 46
    iput-boolean p5, p0, Lcom/google/android/gms/cast/framework/CastOptions;->i:Z

    .line 47
    .line 48
    iput-object p6, p0, Lcom/google/android/gms/cast/framework/CastOptions;->j:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 49
    .line 50
    iput-boolean p7, p0, Lcom/google/android/gms/cast/framework/CastOptions;->k:Z

    .line 51
    .line 52
    iput-wide p8, p0, Lcom/google/android/gms/cast/framework/CastOptions;->l:D

    .line 53
    .line 54
    iput-boolean p10, p0, Lcom/google/android/gms/cast/framework/CastOptions;->m:Z

    .line 55
    .line 56
    iput-boolean p11, p0, Lcom/google/android/gms/cast/framework/CastOptions;->n:Z

    .line 57
    .line 58
    iput-boolean p12, p0, Lcom/google/android/gms/cast/framework/CastOptions;->o:Z

    .line 59
    .line 60
    iput-object p13, p0, Lcom/google/android/gms/cast/framework/CastOptions;->p:Ljava/util/List;

    .line 61
    .line 62
    move/from16 p1, p14

    .line 63
    .line 64
    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->q:Z

    .line 65
    .line 66
    move/from16 p1, p15

    .line 67
    .line 68
    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->r:Z

    .line 69
    .line 70
    move-object/from16 p1, p16

    .line 71
    .line 72
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->s:Lcom/google/android/gms/cast/framework/zzj;

    .line 73
    .line 74
    move-object/from16 p1, p17

    .line 75
    .line 76
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->t:Lcom/google/android/gms/cast/framework/zzl;

    .line 77
    .line 78
    move/from16 p1, p18

    .line 79
    .line 80
    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->u:Z

    .line 81
    .line 82
    move/from16 p1, p19

    .line 83
    .line 84
    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->v:Z

    .line 85
    .line 86
    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 6

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->f:Ljava/util/ArrayList;

    .line 13
    .line 14
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 15
    .line 16
    .line 17
    move-result-object v1

    .line 18
    const/4 v2, 0x3

    .line 19
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 20
    .line 21
    .line 22
    const/4 v1, 0x4

    .line 23
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->g:Z

    .line 24
    .line 25
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 26
    .line 27
    .line 28
    const/4 v1, 0x5

    .line 29
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->h:Lcom/google/android/gms/cast/LaunchOptions;

    .line 30
    .line 31
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 32
    .line 33
    .line 34
    const/4 v1, 0x6

    .line 35
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->i:Z

    .line 36
    .line 37
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 38
    .line 39
    .line 40
    const/4 v1, 0x7

    .line 41
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->j:Lcom/google/android/gms/cast/framework/media/CastMediaOptions;

    .line 42
    .line 43
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 44
    .line 45
    .line 46
    const/16 v1, 0x8

    .line 47
    .line 48
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->k:Z

    .line 49
    .line 50
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 51
    .line 52
    .line 53
    const/16 v1, 0x9

    .line 54
    .line 55
    iget-wide v4, p0, Lcom/google/android/gms/cast/framework/CastOptions;->l:D

    .line 56
    .line 57
    invoke-static {p1, v1, v4, v5}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeDouble(Landroid/os/Parcel;ID)V

    .line 58
    .line 59
    .line 60
    const/16 v1, 0xa

    .line 61
    .line 62
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->m:Z

    .line 63
    .line 64
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 65
    .line 66
    .line 67
    const/16 v1, 0xb

    .line 68
    .line 69
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->n:Z

    .line 70
    .line 71
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 72
    .line 73
    .line 74
    const/16 v1, 0xc

    .line 75
    .line 76
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->o:Z

    .line 77
    .line 78
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 79
    .line 80
    .line 81
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->p:Ljava/util/List;

    .line 82
    .line 83
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 84
    .line 85
    .line 86
    move-result-object v1

    .line 87
    const/16 v2, 0xd

    .line 88
    .line 89
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 90
    .line 91
    .line 92
    const/16 v1, 0xe

    .line 93
    .line 94
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->q:Z

    .line 95
    .line 96
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 97
    .line 98
    .line 99
    const/16 v1, 0xf

    .line 100
    .line 101
    invoke-static {p1, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 102
    .line 103
    .line 104
    const/16 v1, 0x10

    .line 105
    .line 106
    iget-boolean v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->r:Z

    .line 107
    .line 108
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x11

    .line 112
    .line 113
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->s:Lcom/google/android/gms/cast/framework/zzj;

    .line 114
    .line 115
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 116
    .line 117
    .line 118
    const/16 v1, 0x12

    .line 119
    .line 120
    iget-object v2, p0, Lcom/google/android/gms/cast/framework/CastOptions;->t:Lcom/google/android/gms/cast/framework/zzl;

    .line 121
    .line 122
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 123
    .line 124
    .line 125
    const/16 p2, 0x13

    .line 126
    .line 127
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->u:Z

    .line 128
    .line 129
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 130
    .line 131
    .line 132
    const/16 p2, 0x14

    .line 133
    .line 134
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/CastOptions;->v:Z

    .line 135
    .line 136
    invoke-static {p1, p2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 137
    .line 138
    .line 139
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 140
    .line 141
    .line 142
    return-void
.end method
