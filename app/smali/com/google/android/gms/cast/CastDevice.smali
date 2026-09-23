.class public Lcom/google/android/gms/cast/CastDevice;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"

# interfaces
.implements Lcom/google/android/gms/common/internal/ReflectedParcelable;


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "CastDeviceCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/CastDevice;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:Ljava/lang/String;

.field public final f:Ljava/lang/String;

.field public final g:Ljava/net/InetAddress;

.field public final h:Ljava/lang/String;

.field public final i:Ljava/lang/String;

.field public final j:Ljava/lang/String;

.field public final k:I

.field public final l:Ljava/util/List;

.field public final m:Lcom/google/android/gms/cast/internal/zzp;

.field public final n:I

.field public final o:Ljava/lang/String;

.field public final p:Ljava/lang/String;

.field public final q:I

.field public final r:Ljava/lang/String;

.field public final s:[B

.field public final t:Ljava/lang/String;

.field public final u:Z

.field public final v:Lcom/google/android/gms/cast/internal/zzaa;

.field public final w:Ljava/lang/Integer;

.field public final x:Ljava/lang/Boolean;

.field public final y:Landroid/net/Network;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/cast/zzr;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/cast/CastDevice;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/util/ArrayList;IILjava/lang/String;Ljava/lang/String;ILjava/lang/String;[BLjava/lang/String;ZLcom/google/android/gms/cast/internal/zzaa;Ljava/lang/Integer;Ljava/lang/Boolean;Landroid/net/Network;)V
    .locals 4

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    .line 2
    const-string v1, ""

    if-nez p1, :cond_0

    move-object p1, v1

    .line 3
    :cond_0
    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    if-nez p2, :cond_1

    move-object p2, v1

    :cond_1
    iput-object p2, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    .line 4
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result p1

    if-nez p1, :cond_2

    .line 5
    :try_start_0
    invoke-static {p2}, Ljava/net/InetAddress;->getByName(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/net/UnknownHostException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    move-object p1, v0

    .line 6
    iget-object p2, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    .line 7
    invoke-virtual {p1}, Ljava/lang/Throwable;->getMessage()Ljava/lang/String;

    move-result-object p1

    invoke-static {p2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    add-int/lit8 v0, v0, 0x30

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    new-instance v3, Ljava/lang/StringBuilder;

    add-int/2addr v0, v2

    invoke-direct {v3, v0}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v0, "Unable to convert host address ("

    const-string v2, ") to ipaddress: "

    .line 8
    invoke-static {v3, v0, p2, v2, p1}, Landroid/support/v4/media/a;->r(Ljava/lang/StringBuilder;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    .line 9
    const-string p2, "CastDevice"

    .line 10
    invoke-static {p2, p1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    :cond_2
    :goto_0
    if-nez p3, :cond_3

    move-object p3, v1

    .line 11
    :cond_3
    iput-object p3, p0, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    if-nez p4, :cond_4

    move-object p4, v1

    :cond_4
    iput-object p4, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/lang/String;

    if-nez p5, :cond_5

    move-object p5, v1

    :cond_5
    iput-object p5, p0, Lcom/google/android/gms/cast/CastDevice;->j:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/cast/CastDevice;->k:I

    if-nez p7, :cond_6

    new-instance p7, Ljava/util/ArrayList;

    .line 12
    invoke-direct {p7}, Ljava/util/ArrayList;-><init>()V

    :cond_6
    iput-object p7, p0, Lcom/google/android/gms/cast/CastDevice;->l:Ljava/util/List;

    iput p9, p0, Lcom/google/android/gms/cast/CastDevice;->n:I

    if-nez p10, :cond_7

    goto :goto_1

    :cond_7
    move-object v1, p10

    :goto_1
    iput-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->o:Ljava/lang/String;

    iput-object p11, p0, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    move/from16 p1, p12

    iput p1, p0, Lcom/google/android/gms/cast/CastDevice;->q:I

    move-object/from16 p1, p13

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    move-object/from16 p1, p14

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->s:[B

    move-object/from16 p1, p15

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->t:Ljava/lang/String;

    move/from16 p1, p16

    iput-boolean p1, p0, Lcom/google/android/gms/cast/CastDevice;->u:Z

    move-object/from16 p1, p17

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->v:Lcom/google/android/gms/cast/internal/zzaa;

    move-object/from16 p1, p18

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/Integer;

    move-object/from16 p1, p19

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->x:Ljava/lang/Boolean;

    move-object/from16 p1, p20

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->y:Landroid/net/Network;

    new-instance p1, Lcom/google/android/gms/cast/internal/zzp;

    invoke-direct {p1, p8}, Lcom/google/android/gms/cast/internal/zzp;-><init>(I)V

    iput-object p1, p0, Lcom/google/android/gms/cast/CastDevice;->m:Lcom/google/android/gms/cast/internal/zzp;

    return-void
.end method

.method public static F(Landroid/os/Bundle;)Lcom/google/android/gms/cast/CastDevice;
    .locals 1

    .line 1
    if-nez p0, :cond_0

    .line 2
    .line 3
    goto :goto_0

    .line 4
    :cond_0
    const-class v0, Lcom/google/android/gms/cast/CastDevice;

    .line 5
    .line 6
    invoke-virtual {v0}, Ljava/lang/Class;->getClassLoader()Ljava/lang/ClassLoader;

    .line 7
    .line 8
    .line 9
    move-result-object v0

    .line 10
    if-eqz v0, :cond_1

    .line 11
    .line 12
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->setClassLoader(Ljava/lang/ClassLoader;)V

    .line 13
    .line 14
    .line 15
    const-string v0, "com.google.android.gms.cast.EXTRA_CAST_DEVICE"

    .line 16
    .line 17
    invoke-virtual {p0, v0}, Landroid/os/Bundle;->getParcelable(Ljava/lang/String;)Landroid/os/Parcelable;

    .line 18
    .line 19
    .line 20
    move-result-object p0

    .line 21
    check-cast p0, Lcom/google/android/gms/cast/CastDevice;

    .line 22
    .line 23
    return-object p0

    .line 24
    :cond_1
    :goto_0
    const/4 p0, 0x0

    .line 25
    return-object p0
.end method


# virtual methods
.method public final G()Lcom/google/android/gms/cast/internal/zzaa;
    .locals 13

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->v:Lcom/google/android/gms/cast/internal/zzaa;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->m:Lcom/google/android/gms/cast/internal/zzp;

    .line 6
    .line 7
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzp;->c()Z

    .line 8
    .line 9
    .line 10
    move-result v1

    .line 11
    if-eqz v1, :cond_0

    .line 12
    .line 13
    new-instance v2, Lcom/google/android/gms/cast/internal/zzaa;

    .line 14
    .line 15
    const/4 v11, 0x0

    .line 16
    const/4 v12, 0x0

    .line 17
    const/4 v3, 0x1

    .line 18
    const/4 v4, 0x0

    .line 19
    const/4 v5, 0x0

    .line 20
    const/4 v6, 0x0

    .line 21
    const/4 v7, 0x0

    .line 22
    const/4 v8, 0x0

    .line 23
    const/4 v9, 0x0

    .line 24
    const/4 v10, 0x0

    .line 25
    invoke-direct/range {v2 .. v12}, Lcom/google/android/gms/cast/internal/zzaa;-><init>(IZZLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZZ)V

    .line 26
    .line 27
    .line 28
    return-object v2

    .line 29
    :cond_0
    return-object v0
.end method

.method public final X()Z
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->x:Ljava/lang/Boolean;

    .line 2
    .line 3
    if-eqz v0, :cond_0

    .line 4
    .line 5
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    return v0

    .line 10
    :cond_0
    const/4 v0, -0x1

    .line 11
    iget v1, p0, Lcom/google/android/gms/cast/CastDevice;->n:I

    .line 12
    .line 13
    if-eq v1, v0, :cond_1

    .line 14
    .line 15
    and-int/lit8 v0, v1, 0x2

    .line 16
    .line 17
    if-lez v0, :cond_1

    .line 18
    .line 19
    const/4 v0, 0x1

    .line 20
    return v0

    .line 21
    :cond_1
    const/4 v0, 0x0

    .line 22
    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 9

    .line 1
    const/4 v0, 0x1

    .line 2
    if-ne p1, p0, :cond_0

    .line 3
    .line 4
    return v0

    .line 5
    :cond_0
    instance-of v1, p1, Lcom/google/android/gms/cast/CastDevice;

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
    check-cast p1, Lcom/google/android/gms/cast/CastDevice;

    .line 12
    .line 13
    iget-object v1, p1, Lcom/google/android/gms/cast/CastDevice;->s:[B

    .line 14
    .line 15
    iget v3, p1, Lcom/google/android/gms/cast/CastDevice;->k:I

    .line 16
    .line 17
    iget-object v4, p1, Lcom/google/android/gms/cast/CastDevice;->j:Ljava/lang/String;

    .line 18
    .line 19
    iget-object v5, p1, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    .line 20
    .line 21
    iget-object v6, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    .line 22
    .line 23
    if-nez v6, :cond_3

    .line 24
    .line 25
    if-nez v5, :cond_2

    .line 26
    .line 27
    return v0

    .line 28
    :cond_2
    return v2

    .line 29
    :cond_3
    invoke-static {v6, v5}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 30
    .line 31
    .line 32
    move-result v5

    .line 33
    if-eqz v5, :cond_7

    .line 34
    .line 35
    iget-object v5, p0, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/net/InetAddress;

    .line 36
    .line 37
    iget-object v6, p1, Lcom/google/android/gms/cast/CastDevice;->g:Ljava/net/InetAddress;

    .line 38
    .line 39
    invoke-static {v5, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 40
    .line 41
    .line 42
    move-result v5

    .line 43
    if-eqz v5, :cond_7

    .line 44
    .line 45
    iget-object v5, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/lang/String;

    .line 46
    .line 47
    iget-object v6, p1, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/lang/String;

    .line 48
    .line 49
    invoke-static {v5, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 50
    .line 51
    .line 52
    move-result v5

    .line 53
    if-eqz v5, :cond_7

    .line 54
    .line 55
    iget-object v5, p0, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    .line 56
    .line 57
    iget-object v6, p1, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    .line 58
    .line 59
    invoke-static {v5, v6}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 60
    .line 61
    .line 62
    move-result v5

    .line 63
    if-eqz v5, :cond_7

    .line 64
    .line 65
    iget-object v5, p0, Lcom/google/android/gms/cast/CastDevice;->j:Ljava/lang/String;

    .line 66
    .line 67
    invoke-static {v5, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 68
    .line 69
    .line 70
    move-result v6

    .line 71
    if-eqz v6, :cond_7

    .line 72
    .line 73
    iget v6, p0, Lcom/google/android/gms/cast/CastDevice;->k:I

    .line 74
    .line 75
    if-ne v6, v3, :cond_7

    .line 76
    .line 77
    iget-object v7, p0, Lcom/google/android/gms/cast/CastDevice;->l:Ljava/util/List;

    .line 78
    .line 79
    iget-object v8, p1, Lcom/google/android/gms/cast/CastDevice;->l:Ljava/util/List;

    .line 80
    .line 81
    invoke-static {v7, v8}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 82
    .line 83
    .line 84
    move-result v7

    .line 85
    if-eqz v7, :cond_7

    .line 86
    .line 87
    iget-object v7, p0, Lcom/google/android/gms/cast/CastDevice;->m:Lcom/google/android/gms/cast/internal/zzp;

    .line 88
    .line 89
    iget v7, v7, Lcom/google/android/gms/cast/internal/zzp;->a:I

    .line 90
    .line 91
    iget-object v8, p1, Lcom/google/android/gms/cast/CastDevice;->m:Lcom/google/android/gms/cast/internal/zzp;

    .line 92
    .line 93
    iget v8, v8, Lcom/google/android/gms/cast/internal/zzp;->a:I

    .line 94
    .line 95
    if-ne v7, v8, :cond_7

    .line 96
    .line 97
    iget v7, p0, Lcom/google/android/gms/cast/CastDevice;->n:I

    .line 98
    .line 99
    iget v8, p1, Lcom/google/android/gms/cast/CastDevice;->n:I

    .line 100
    .line 101
    if-ne v7, v8, :cond_7

    .line 102
    .line 103
    iget-object v7, p0, Lcom/google/android/gms/cast/CastDevice;->o:Ljava/lang/String;

    .line 104
    .line 105
    iget-object v8, p1, Lcom/google/android/gms/cast/CastDevice;->o:Ljava/lang/String;

    .line 106
    .line 107
    invoke-static {v7, v8}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 108
    .line 109
    .line 110
    move-result v7

    .line 111
    if-eqz v7, :cond_7

    .line 112
    .line 113
    iget v7, p0, Lcom/google/android/gms/cast/CastDevice;->q:I

    .line 114
    .line 115
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 116
    .line 117
    .line 118
    move-result-object v7

    .line 119
    iget v8, p1, Lcom/google/android/gms/cast/CastDevice;->q:I

    .line 120
    .line 121
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 122
    .line 123
    .line 124
    move-result-object v8

    .line 125
    invoke-static {v7, v8}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 126
    .line 127
    .line 128
    move-result v7

    .line 129
    if-eqz v7, :cond_7

    .line 130
    .line 131
    iget-object v7, p0, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    .line 132
    .line 133
    iget-object v8, p1, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    .line 134
    .line 135
    invoke-static {v7, v8}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 136
    .line 137
    .line 138
    move-result v7

    .line 139
    if-eqz v7, :cond_7

    .line 140
    .line 141
    iget-object v7, p0, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    .line 142
    .line 143
    iget-object v8, p1, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    .line 144
    .line 145
    invoke-static {v7, v8}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 146
    .line 147
    .line 148
    move-result v7

    .line 149
    if-eqz v7, :cond_7

    .line 150
    .line 151
    invoke-static {v5, v4}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 152
    .line 153
    .line 154
    move-result v4

    .line 155
    if-eqz v4, :cond_7

    .line 156
    .line 157
    if-ne v6, v3, :cond_7

    .line 158
    .line 159
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->s:[B

    .line 160
    .line 161
    if-nez v3, :cond_4

    .line 162
    .line 163
    if-eqz v1, :cond_5

    .line 164
    .line 165
    :cond_4
    invoke-static {v3, v1}, Ljava/util/Arrays;->equals([B[B)Z

    .line 166
    .line 167
    .line 168
    move-result v1

    .line 169
    if-eqz v1, :cond_7

    .line 170
    .line 171
    :cond_5
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->t:Ljava/lang/String;

    .line 172
    .line 173
    iget-object v3, p1, Lcom/google/android/gms/cast/CastDevice;->t:Ljava/lang/String;

    .line 174
    .line 175
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 176
    .line 177
    .line 178
    move-result v1

    .line 179
    if-eqz v1, :cond_7

    .line 180
    .line 181
    iget-boolean v1, p0, Lcom/google/android/gms/cast/CastDevice;->u:Z

    .line 182
    .line 183
    iget-boolean v3, p1, Lcom/google/android/gms/cast/CastDevice;->u:Z

    .line 184
    .line 185
    if-ne v1, v3, :cond_7

    .line 186
    .line 187
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->G()Lcom/google/android/gms/cast/internal/zzaa;

    .line 188
    .line 189
    .line 190
    move-result-object v1

    .line 191
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->G()Lcom/google/android/gms/cast/internal/zzaa;

    .line 192
    .line 193
    .line 194
    move-result-object v3

    .line 195
    invoke-static {v1, v3}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 196
    .line 197
    .line 198
    move-result v1

    .line 199
    if-eqz v1, :cond_7

    .line 200
    .line 201
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->X()Z

    .line 202
    .line 203
    .line 204
    move-result v1

    .line 205
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 206
    .line 207
    .line 208
    move-result-object v1

    .line 209
    invoke-virtual {p1}, Lcom/google/android/gms/cast/CastDevice;->X()Z

    .line 210
    .line 211
    .line 212
    move-result v3

    .line 213
    if-eqz v3, :cond_6

    .line 214
    .line 215
    iget-object v3, p0, Lcom/google/android/gms/cast/CastDevice;->y:Landroid/net/Network;

    .line 216
    .line 217
    iget-object p1, p1, Lcom/google/android/gms/cast/CastDevice;->y:Landroid/net/Network;

    .line 218
    .line 219
    invoke-static {v3, p1}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 220
    .line 221
    .line 222
    move-result p1

    .line 223
    if-eqz p1, :cond_6

    .line 224
    .line 225
    move p1, v0

    .line 226
    goto :goto_0

    .line 227
    :cond_6
    move p1, v2

    .line 228
    :goto_0
    invoke-static {p1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 229
    .line 230
    .line 231
    move-result-object p1

    .line 232
    invoke-static {v1, p1}, Lcom/google/android/gms/cast/internal/CastUtils;->c(Ljava/lang/Object;Ljava/lang/Object;)Z

    .line 233
    .line 234
    .line 235
    move-result p1

    .line 236
    if-eqz p1, :cond_7

    .line 237
    .line 238
    return v0

    .line 239
    :cond_7
    return v2
.end method

.method public final hashCode()I
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    return v0

    .line 7
    :cond_0
    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    .line 8
    .line 9
    .line 10
    move-result v0

    .line 11
    return v0
.end method

.method public final toString()Ljava/lang/String;
    .locals 8

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->m:Lcom/google/android/gms/cast/internal/zzp;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-eqz v0, :cond_0

    .line 10
    .line 11
    const-string v0, "[dynamic group]"

    .line 12
    .line 13
    goto :goto_0

    .line 14
    :cond_0
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzp;->b()Z

    .line 15
    .line 16
    .line 17
    move-result v0

    .line 18
    if-eqz v0, :cond_1

    .line 19
    .line 20
    const-string v0, "[static group]"

    .line 21
    .line 22
    goto :goto_0

    .line 23
    :cond_1
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzp;->c()Z

    .line 24
    .line 25
    .line 26
    move-result v0

    .line 27
    if-eqz v0, :cond_2

    .line 28
    .line 29
    const-string v0, "[speaker pair]"

    .line 30
    .line 31
    goto :goto_0

    .line 32
    :cond_2
    const-string v0, ""

    .line 33
    .line 34
    :goto_0
    const/high16 v2, 0x40000

    .line 35
    .line 36
    invoke-virtual {v1, v2}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    .line 37
    .line 38
    .line 39
    move-result v1

    .line 40
    if-eqz v1, :cond_3

    .line 41
    .line 42
    const-string v1, "[cast connect]"

    .line 43
    .line 44
    invoke-virtual {v0, v1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    :cond_3
    sget-object v1, Ljava/util/Locale;->ROOT:Ljava/util/Locale;

    .line 49
    .line 50
    sget-object v2, Lcom/google/android/gms/cast/internal/CastUtils;->a:Ljava/util/regex/Pattern;

    .line 51
    .line 52
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    .line 53
    .line 54
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    .line 55
    .line 56
    .line 57
    move-result v3

    .line 58
    if-nez v3, :cond_6

    .line 59
    .line 60
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    .line 61
    .line 62
    .line 63
    move-result v3

    .line 64
    const/4 v4, 0x2

    .line 65
    if-gt v3, v4, :cond_5

    .line 66
    .line 67
    if-ne v3, v4, :cond_4

    .line 68
    .line 69
    const-string v2, "xx"

    .line 70
    .line 71
    goto :goto_1

    .line 72
    :cond_4
    const-string v2, "x"

    .line 73
    .line 74
    goto :goto_1

    .line 75
    :cond_5
    const/4 v5, 0x0

    .line 76
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    .line 77
    .line 78
    .line 79
    move-result v6

    .line 80
    add-int/lit8 v7, v3, -0x1

    .line 81
    .line 82
    invoke-virtual {v2, v7}, Ljava/lang/String;->charAt(I)C

    .line 83
    .line 84
    .line 85
    move-result v2

    .line 86
    invoke-static {v6}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 87
    .line 88
    .line 89
    move-result-object v6

    .line 90
    add-int/lit8 v3, v3, -0x2

    .line 91
    .line 92
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    .line 93
    .line 94
    .line 95
    move-result-object v3

    .line 96
    invoke-static {v2}, Ljava/lang/Character;->valueOf(C)Ljava/lang/Character;

    .line 97
    .line 98
    .line 99
    move-result-object v2

    .line 100
    const/4 v7, 0x3

    .line 101
    new-array v7, v7, [Ljava/lang/Object;

    .line 102
    .line 103
    aput-object v6, v7, v5

    .line 104
    .line 105
    const/4 v5, 0x1

    .line 106
    aput-object v3, v7, v5

    .line 107
    .line 108
    aput-object v2, v7, v4

    .line 109
    .line 110
    const-string v2, "%c%d%c"

    .line 111
    .line 112
    invoke-static {v1, v2, v7}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 113
    .line 114
    .line 115
    move-result-object v2

    .line 116
    :cond_6
    :goto_1
    const-string v1, "\" ("

    .line 117
    .line 118
    const-string v3, ") "

    .line 119
    .line 120
    const-string v4, "\""

    .line 121
    .line 122
    iget-object v5, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    .line 123
    .line 124
    invoke-static {v4, v2, v1, v5, v3}, Landroidx/work/impl/workers/a;->u(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 125
    .line 126
    .line 127
    move-result-object v1

    .line 128
    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 129
    .line 130
    .line 131
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 132
    .line 133
    .line 134
    move-result-object v0

    .line 135
    return-object v0
.end method

.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x2

    .line 6
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->c:Ljava/lang/String;

    .line 7
    .line 8
    const/4 v3, 0x0

    .line 9
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 10
    .line 11
    .line 12
    const/4 v1, 0x3

    .line 13
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->f:Ljava/lang/String;

    .line 14
    .line 15
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x4

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->h:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x5

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->i:Ljava/lang/String;

    .line 26
    .line 27
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x6

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->j:Ljava/lang/String;

    .line 32
    .line 33
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x7

    .line 37
    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->k:I

    .line 38
    .line 39
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->l:Ljava/util/List;

    .line 43
    .line 44
    invoke-static {v1}, Lj$/util/DesugarCollections;->unmodifiableList(Ljava/util/List;)Ljava/util/List;

    .line 45
    .line 46
    .line 47
    move-result-object v1

    .line 48
    const/16 v2, 0x8

    .line 49
    .line 50
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 51
    .line 52
    .line 53
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->m:Lcom/google/android/gms/cast/internal/zzp;

    .line 54
    .line 55
    iget v1, v1, Lcom/google/android/gms/cast/internal/zzp;->a:I

    .line 56
    .line 57
    const/16 v2, 0x9

    .line 58
    .line 59
    invoke-static {p1, v2, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 60
    .line 61
    .line 62
    const/16 v1, 0xa

    .line 63
    .line 64
    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->n:I

    .line 65
    .line 66
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 67
    .line 68
    .line 69
    const/16 v1, 0xb

    .line 70
    .line 71
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->o:Ljava/lang/String;

    .line 72
    .line 73
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0xc

    .line 77
    .line 78
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->p:Ljava/lang/String;

    .line 79
    .line 80
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 81
    .line 82
    .line 83
    const/16 v1, 0xd

    .line 84
    .line 85
    iget v2, p0, Lcom/google/android/gms/cast/CastDevice;->q:I

    .line 86
    .line 87
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 88
    .line 89
    .line 90
    const/16 v1, 0xe

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->r:Ljava/lang/String;

    .line 93
    .line 94
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 95
    .line 96
    .line 97
    const/16 v1, 0xf

    .line 98
    .line 99
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->s:[B

    .line 100
    .line 101
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 102
    .line 103
    .line 104
    const/16 v1, 0x10

    .line 105
    .line 106
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->t:Ljava/lang/String;

    .line 107
    .line 108
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 109
    .line 110
    .line 111
    const/16 v1, 0x11

    .line 112
    .line 113
    iget-boolean v2, p0, Lcom/google/android/gms/cast/CastDevice;->u:Z

    .line 114
    .line 115
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 116
    .line 117
    .line 118
    const/16 v1, 0x12

    .line 119
    .line 120
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->G()Lcom/google/android/gms/cast/internal/zzaa;

    .line 121
    .line 122
    .line 123
    move-result-object v2

    .line 124
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 125
    .line 126
    .line 127
    const/16 v1, 0x13

    .line 128
    .line 129
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->w:Ljava/lang/Integer;

    .line 130
    .line 131
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntegerObject(Landroid/os/Parcel;ILjava/lang/Integer;Z)V

    .line 132
    .line 133
    .line 134
    invoke-virtual {p0}, Lcom/google/android/gms/cast/CastDevice;->X()Z

    .line 135
    .line 136
    .line 137
    move-result v1

    .line 138
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    .line 139
    .line 140
    .line 141
    move-result-object v1

    .line 142
    const/16 v2, 0x14

    .line 143
    .line 144
    invoke-static {p1, v2, v1, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBooleanObject(Landroid/os/Parcel;ILjava/lang/Boolean;Z)V

    .line 145
    .line 146
    .line 147
    const/16 v1, 0x15

    .line 148
    .line 149
    iget-object v2, p0, Lcom/google/android/gms/cast/CastDevice;->y:Landroid/net/Network;

    .line 150
    .line 151
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 152
    .line 153
    .line 154
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 155
    .line 156
    .line 157
    return-void
.end method

.method public final zzd()I
    .locals 2

    .line 1
    const/16 v0, 0x40

    .line 2
    .line 3
    iget-object v1, p0, Lcom/google/android/gms/cast/CastDevice;->m:Lcom/google/android/gms/cast/internal/zzp;

    .line 4
    .line 5
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    .line 6
    .line 7
    .line 8
    move-result v0

    .line 9
    if-nez v0, :cond_3

    .line 10
    .line 11
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzp;->b()Z

    .line 12
    .line 13
    .line 14
    move-result v0

    .line 15
    if-nez v0, :cond_2

    .line 16
    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/cast/internal/zzp;->c()Z

    .line 18
    .line 19
    .line 20
    move-result v0

    .line 21
    if-eqz v0, :cond_0

    .line 22
    .line 23
    const/4 v0, 0x5

    .line 24
    return v0

    .line 25
    :cond_0
    const/4 v0, 0x1

    .line 26
    invoke-virtual {v1, v0}, Lcom/google/android/gms/cast/internal/zzp;->a(I)Z

    .line 27
    .line 28
    .line 29
    move-result v1

    .line 30
    if-eqz v1, :cond_1

    .line 31
    .line 32
    const/4 v0, 0x2

    .line 33
    :cond_1
    return v0

    .line 34
    :cond_2
    const/4 v0, 0x3

    .line 35
    return v0

    .line 36
    :cond_3
    const/4 v0, 0x4

    .line 37
    return v0
.end method
