.class public Lcom/google/android/gms/cast/framework/media/NotificationOptions;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "NotificationOptionsCreator"
.end annotation

.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Reserved;
    value = {
        0x1
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/cast/framework/media/NotificationOptions$Builder;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation build Landroidx/annotation/NonNull;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/cast/framework/media/NotificationOptions;",
            ">;"
        }
    .end annotation
.end field

.field public static final M:Lcom/google/android/gms/internal/cast/zzhv;

.field public static final N:[I


# instance fields
.field public final A:I

.field public final B:I

.field public final C:I

.field public final D:I

.field public final E:I

.field public final F:I

.field public final G:I

.field public final H:I

.field public final I:I

.field public final J:Lcom/google/android/gms/cast/framework/media/zzg;

.field public final K:Z

.field public final L:Z

.field public final c:Ljava/util/ArrayList;

.field public final f:[I

.field public final g:J

.field public final h:Ljava/lang/String;

.field public final i:I

.field public final j:I

.field public final k:I

.field public final l:I

.field public final m:I

.field public final n:I

.field public final o:I

.field public final p:I

.field public final q:I

.field public final r:I

.field public final s:I

.field public final t:I

.field public final u:I

.field public final v:I

.field public final w:I

.field public final x:I

.field public final y:I

.field public final z:I


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/cast/zzhv;->f:Lcom/google/android/gms/internal/cast/zzim;

    .line 2
    .line 3
    const/4 v0, 0x2

    .line 4
    new-array v1, v0, [Ljava/lang/Object;

    .line 5
    .line 6
    const/4 v2, 0x0

    .line 7
    const-string v3, "com.google.android.gms.cast.framework.action.TOGGLE_PLAYBACK"

    .line 8
    .line 9
    aput-object v3, v1, v2

    .line 10
    .line 11
    const-string v3, "com.google.android.gms.cast.framework.action.STOP_CASTING"

    .line 12
    .line 13
    const/4 v4, 0x1

    .line 14
    aput-object v3, v1, v4

    .line 15
    .line 16
    move v3, v2

    .line 17
    :goto_0
    if-ge v3, v0, :cond_0

    .line 18
    .line 19
    aget-object v5, v1, v3

    .line 20
    .line 21
    invoke-static {v3, v5}, Lcom/google/android/gms/internal/cast/zzib;->a(ILjava/lang/Object;)V

    .line 22
    .line 23
    .line 24
    add-int/lit8 v3, v3, 0x1

    .line 25
    .line 26
    goto :goto_0

    .line 27
    :cond_0
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/cast/zzhv;->p(I[Ljava/lang/Object;)Lcom/google/android/gms/internal/cast/zzhv;

    .line 28
    .line 29
    .line 30
    move-result-object v0

    .line 31
    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->M:Lcom/google/android/gms/internal/cast/zzhv;

    .line 32
    .line 33
    filled-new-array {v2, v4}, [I

    .line 34
    .line 35
    .line 36
    move-result-object v0

    .line 37
    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->N:[I

    .line 38
    .line 39
    new-instance v0, Lcom/google/android/gms/cast/framework/media/zzs;

    .line 40
    .line 41
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 42
    .line 43
    .line 44
    sput-object v0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 45
    .line 46
    return-void
.end method

.method public constructor <init>(Ljava/util/List;[IJLjava/lang/String;IIIIIIIIIIIIIIIIIIIIIIIIIIILandroid/os/IBinder;ZZ)V
    .locals 2

    move-object/from16 v0, p33

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    new-instance v1, Ljava/util/ArrayList;

    .line 2
    invoke-direct {v1, p1}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    iput-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->c:Ljava/util/ArrayList;

    .line 3
    array-length p1, p2

    invoke-static {p2, p1}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->f:[I

    iput-wide p3, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->g:J

    iput-object p5, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->h:Ljava/lang/String;

    iput p6, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->i:I

    iput p7, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->j:I

    iput p8, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->k:I

    iput p9, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->l:I

    iput p10, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->m:I

    iput p11, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->n:I

    iput p12, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->o:I

    iput p13, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->p:I

    move/from16 p1, p14

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->q:I

    move/from16 p1, p15

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->r:I

    move/from16 p1, p16

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->s:I

    move/from16 p1, p17

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->t:I

    move/from16 p1, p18

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->u:I

    move/from16 p1, p19

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->v:I

    move/from16 p1, p20

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->w:I

    move/from16 p1, p21

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->x:I

    move/from16 p1, p22

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->y:I

    move/from16 p1, p23

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->z:I

    move/from16 p1, p24

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->A:I

    move/from16 p1, p25

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->B:I

    move/from16 p1, p26

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->C:I

    move/from16 p1, p27

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->D:I

    move/from16 p1, p28

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    move/from16 p1, p29

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->F:I

    move/from16 p1, p30

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->G:I

    move/from16 p1, p31

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->H:I

    move/from16 p1, p32

    iput p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->I:I

    move/from16 p1, p34

    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->K:Z

    move/from16 p1, p35

    iput-boolean p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->L:Z

    if-nez v0, :cond_0

    const/4 p1, 0x0

    goto :goto_0

    .line 4
    :cond_0
    const-string p1, "com.google.android.gms.cast.framework.media.INotificationActionsProvider"

    invoke-interface {v0, p1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object p2

    instance-of p3, p2, Lcom/google/android/gms/cast/framework/media/zzg;

    if-eqz p3, :cond_1

    .line 5
    move-object p1, p2

    check-cast p1, Lcom/google/android/gms/cast/framework/media/zzg;

    goto :goto_0

    :cond_1
    new-instance p2, Lcom/google/android/gms/cast/framework/media/zze;

    .line 6
    invoke-direct {p2, v0, p1}, Lcom/google/android/gms/internal/cast/zza;-><init>(Landroid/os/IBinder;Ljava/lang/String;)V

    move-object p1, p2

    .line 7
    :goto_0
    iput-object p1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->J:Lcom/google/android/gms/cast/framework/media/zzg;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 5

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result p2

    .line 5
    const/4 v0, 0x2

    .line 6
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->c:Ljava/util/ArrayList;

    .line 7
    .line 8
    const/4 v2, 0x0

    .line 9
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeStringList(Landroid/os/Parcel;ILjava/util/List;Z)V

    .line 10
    .line 11
    .line 12
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->f:[I

    .line 13
    .line 14
    array-length v1, v0

    .line 15
    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([II)[I

    .line 16
    .line 17
    .line 18
    move-result-object v0

    .line 19
    const/4 v1, 0x3

    .line 20
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIntArray(Landroid/os/Parcel;I[IZ)V

    .line 21
    .line 22
    .line 23
    const/4 v0, 0x4

    .line 24
    iget-wide v3, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->g:J

    .line 25
    .line 26
    invoke-static {p1, v0, v3, v4}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeLong(Landroid/os/Parcel;IJ)V

    .line 27
    .line 28
    .line 29
    const/4 v0, 0x5

    .line 30
    iget-object v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->h:Ljava/lang/String;

    .line 31
    .line 32
    invoke-static {p1, v0, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 33
    .line 34
    .line 35
    const/4 v0, 0x6

    .line 36
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->i:I

    .line 37
    .line 38
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 39
    .line 40
    .line 41
    const/4 v0, 0x7

    .line 42
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->j:I

    .line 43
    .line 44
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 45
    .line 46
    .line 47
    const/16 v0, 0x8

    .line 48
    .line 49
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->k:I

    .line 50
    .line 51
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 52
    .line 53
    .line 54
    const/16 v0, 0x9

    .line 55
    .line 56
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->l:I

    .line 57
    .line 58
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 59
    .line 60
    .line 61
    const/16 v0, 0xa

    .line 62
    .line 63
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->m:I

    .line 64
    .line 65
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 66
    .line 67
    .line 68
    const/16 v0, 0xb

    .line 69
    .line 70
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->n:I

    .line 71
    .line 72
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 73
    .line 74
    .line 75
    const/16 v0, 0xc

    .line 76
    .line 77
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->o:I

    .line 78
    .line 79
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 80
    .line 81
    .line 82
    const/16 v0, 0xd

    .line 83
    .line 84
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->p:I

    .line 85
    .line 86
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 87
    .line 88
    .line 89
    const/16 v0, 0xe

    .line 90
    .line 91
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->q:I

    .line 92
    .line 93
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 94
    .line 95
    .line 96
    const/16 v0, 0xf

    .line 97
    .line 98
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->r:I

    .line 99
    .line 100
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 101
    .line 102
    .line 103
    const/16 v0, 0x10

    .line 104
    .line 105
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->s:I

    .line 106
    .line 107
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 108
    .line 109
    .line 110
    const/16 v0, 0x11

    .line 111
    .line 112
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->t:I

    .line 113
    .line 114
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 115
    .line 116
    .line 117
    const/16 v0, 0x12

    .line 118
    .line 119
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->u:I

    .line 120
    .line 121
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 122
    .line 123
    .line 124
    const/16 v0, 0x13

    .line 125
    .line 126
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->v:I

    .line 127
    .line 128
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 129
    .line 130
    .line 131
    const/16 v0, 0x14

    .line 132
    .line 133
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->w:I

    .line 134
    .line 135
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 136
    .line 137
    .line 138
    const/16 v0, 0x15

    .line 139
    .line 140
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->x:I

    .line 141
    .line 142
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 143
    .line 144
    .line 145
    const/16 v0, 0x16

    .line 146
    .line 147
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->y:I

    .line 148
    .line 149
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 150
    .line 151
    .line 152
    const/16 v0, 0x17

    .line 153
    .line 154
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->z:I

    .line 155
    .line 156
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 157
    .line 158
    .line 159
    const/16 v0, 0x18

    .line 160
    .line 161
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->A:I

    .line 162
    .line 163
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 164
    .line 165
    .line 166
    const/16 v0, 0x19

    .line 167
    .line 168
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->B:I

    .line 169
    .line 170
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 171
    .line 172
    .line 173
    const/16 v0, 0x1a

    .line 174
    .line 175
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->C:I

    .line 176
    .line 177
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 178
    .line 179
    .line 180
    const/16 v0, 0x1b

    .line 181
    .line 182
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->D:I

    .line 183
    .line 184
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 185
    .line 186
    .line 187
    const/16 v0, 0x1c

    .line 188
    .line 189
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->E:I

    .line 190
    .line 191
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 192
    .line 193
    .line 194
    const/16 v0, 0x1d

    .line 195
    .line 196
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->F:I

    .line 197
    .line 198
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 199
    .line 200
    .line 201
    const/16 v0, 0x1e

    .line 202
    .line 203
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->G:I

    .line 204
    .line 205
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 206
    .line 207
    .line 208
    const/16 v0, 0x1f

    .line 209
    .line 210
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->H:I

    .line 211
    .line 212
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 213
    .line 214
    .line 215
    const/16 v0, 0x20

    .line 216
    .line 217
    iget v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->I:I

    .line 218
    .line 219
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 220
    .line 221
    .line 222
    iget-object v0, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->J:Lcom/google/android/gms/cast/framework/media/zzg;

    .line 223
    .line 224
    if-nez v0, :cond_0

    .line 225
    .line 226
    const/4 v0, 0x0

    .line 227
    goto :goto_0

    .line 228
    :cond_0
    invoke-interface {v0}, Landroid/os/IInterface;->asBinder()Landroid/os/IBinder;

    .line 229
    .line 230
    .line 231
    move-result-object v0

    .line 232
    :goto_0
    const/16 v1, 0x21

    .line 233
    .line 234
    invoke-static {p1, v1, v0, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeIBinder(Landroid/os/Parcel;ILandroid/os/IBinder;Z)V

    .line 235
    .line 236
    .line 237
    const/16 v0, 0x22

    .line 238
    .line 239
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->K:Z

    .line 240
    .line 241
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 242
    .line 243
    .line 244
    const/16 v0, 0x23

    .line 245
    .line 246
    iget-boolean v1, p0, Lcom/google/android/gms/cast/framework/media/NotificationOptions;->L:Z

    .line 247
    .line 248
    invoke-static {p1, v0, v1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeBoolean(Landroid/os/Parcel;IZ)V

    .line 249
    .line 250
    .line 251
    invoke-static {p1, p2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 252
    .line 253
    .line 254
    return-void
.end method
