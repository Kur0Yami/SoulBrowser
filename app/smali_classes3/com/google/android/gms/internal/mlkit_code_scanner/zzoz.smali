.class public final Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;
.super Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;
.source "SourceFile"


# annotations
.annotation build Lcom/google/android/gms/common/internal/safeparcel/SafeParcelable$Class;
    creator = "BarcodeParcelCreator"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator<",
            "Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public final c:I

.field public final f:Ljava/lang/String;

.field public final g:Ljava/lang/String;

.field public final h:[B

.field public final i:[Landroid/graphics/Point;

.field public final j:I

.field public final k:Lcom/google/android/gms/internal/mlkit_code_scanner/zzos;

.field public final l:Lcom/google/android/gms/internal/mlkit_code_scanner/zzov;

.field public final m:Lcom/google/android/gms/internal/mlkit_code_scanner/zzow;

.field public final n:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoy;

.field public final o:Lcom/google/android/gms/internal/mlkit_code_scanner/zzox;

.field public final p:Lcom/google/android/gms/internal/mlkit_code_scanner/zzot;

.field public final q:Lcom/google/android/gms/internal/mlkit_code_scanner/zzop;

.field public final r:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoq;

.field public final s:Lcom/google/android/gms/internal/mlkit_code_scanner/zzor;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzpa;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 7
    .line 8
    return-void
.end method

.method public constructor <init>(ILjava/lang/String;Ljava/lang/String;[B[Landroid/graphics/Point;ILcom/google/android/gms/internal/mlkit_code_scanner/zzos;Lcom/google/android/gms/internal/mlkit_code_scanner/zzov;Lcom/google/android/gms/internal/mlkit_code_scanner/zzow;Lcom/google/android/gms/internal/mlkit_code_scanner/zzoy;Lcom/google/android/gms/internal/mlkit_code_scanner/zzox;Lcom/google/android/gms/internal/mlkit_code_scanner/zzot;Lcom/google/android/gms/internal/mlkit_code_scanner/zzop;Lcom/google/android/gms/internal/mlkit_code_scanner/zzoq;Lcom/google/android/gms/internal/mlkit_code_scanner/zzor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/common/internal/safeparcel/AbstractSafeParcelable;-><init>()V

    iput p1, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->c:I

    iput-object p2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->f:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->g:Ljava/lang/String;

    iput-object p4, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->h:[B

    iput-object p5, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->i:[Landroid/graphics/Point;

    iput p6, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->j:I

    iput-object p7, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->k:Lcom/google/android/gms/internal/mlkit_code_scanner/zzos;

    iput-object p8, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->l:Lcom/google/android/gms/internal/mlkit_code_scanner/zzov;

    iput-object p9, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->m:Lcom/google/android/gms/internal/mlkit_code_scanner/zzow;

    iput-object p10, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->n:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoy;

    iput-object p11, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->o:Lcom/google/android/gms/internal/mlkit_code_scanner/zzox;

    iput-object p12, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->p:Lcom/google/android/gms/internal/mlkit_code_scanner/zzot;

    iput-object p13, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->q:Lcom/google/android/gms/internal/mlkit_code_scanner/zzop;

    iput-object p14, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->r:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoq;

    iput-object p15, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->s:Lcom/google/android/gms/internal/mlkit_code_scanner/zzor;

    return-void
.end method


# virtual methods
.method public final writeToParcel(Landroid/os/Parcel;I)V
    .locals 4

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->beginObjectHeader(Landroid/os/Parcel;)I

    .line 2
    .line 3
    .line 4
    move-result v0

    .line 5
    const/4 v1, 0x1

    .line 6
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->c:I

    .line 7
    .line 8
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 9
    .line 10
    .line 11
    const/4 v1, 0x2

    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->f:Ljava/lang/String;

    .line 13
    .line 14
    const/4 v3, 0x0

    .line 15
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 16
    .line 17
    .line 18
    const/4 v1, 0x3

    .line 19
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->g:Ljava/lang/String;

    .line 20
    .line 21
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeString(Landroid/os/Parcel;ILjava/lang/String;Z)V

    .line 22
    .line 23
    .line 24
    const/4 v1, 0x4

    .line 25
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->h:[B

    .line 26
    .line 27
    invoke-static {p1, v1, v2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeByteArray(Landroid/os/Parcel;I[BZ)V

    .line 28
    .line 29
    .line 30
    const/4 v1, 0x5

    .line 31
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->i:[Landroid/graphics/Point;

    .line 32
    .line 33
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeTypedArray(Landroid/os/Parcel;I[Landroid/os/Parcelable;IZ)V

    .line 34
    .line 35
    .line 36
    const/4 v1, 0x6

    .line 37
    iget v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->j:I

    .line 38
    .line 39
    invoke-static {p1, v1, v2}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeInt(Landroid/os/Parcel;II)V

    .line 40
    .line 41
    .line 42
    const/4 v1, 0x7

    .line 43
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->k:Lcom/google/android/gms/internal/mlkit_code_scanner/zzos;

    .line 44
    .line 45
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 46
    .line 47
    .line 48
    const/16 v1, 0x8

    .line 49
    .line 50
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->l:Lcom/google/android/gms/internal/mlkit_code_scanner/zzov;

    .line 51
    .line 52
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 53
    .line 54
    .line 55
    const/16 v1, 0x9

    .line 56
    .line 57
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->m:Lcom/google/android/gms/internal/mlkit_code_scanner/zzow;

    .line 58
    .line 59
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 60
    .line 61
    .line 62
    const/16 v1, 0xa

    .line 63
    .line 64
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->n:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoy;

    .line 65
    .line 66
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 67
    .line 68
    .line 69
    const/16 v1, 0xb

    .line 70
    .line 71
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->o:Lcom/google/android/gms/internal/mlkit_code_scanner/zzox;

    .line 72
    .line 73
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 74
    .line 75
    .line 76
    const/16 v1, 0xc

    .line 77
    .line 78
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->p:Lcom/google/android/gms/internal/mlkit_code_scanner/zzot;

    .line 79
    .line 80
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 81
    .line 82
    .line 83
    const/16 v1, 0xd

    .line 84
    .line 85
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->q:Lcom/google/android/gms/internal/mlkit_code_scanner/zzop;

    .line 86
    .line 87
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 88
    .line 89
    .line 90
    const/16 v1, 0xe

    .line 91
    .line 92
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->r:Lcom/google/android/gms/internal/mlkit_code_scanner/zzoq;

    .line 93
    .line 94
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 95
    .line 96
    .line 97
    const/16 v1, 0xf

    .line 98
    .line 99
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzoz;->s:Lcom/google/android/gms/internal/mlkit_code_scanner/zzor;

    .line 100
    .line 101
    invoke-static {p1, v1, v2, p2, v3}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->writeParcelable(Landroid/os/Parcel;ILandroid/os/Parcelable;IZ)V

    .line 102
    .line 103
    .line 104
    invoke-static {p1, v0}, Lcom/google/android/gms/common/internal/safeparcel/SafeParcelWriter;->finishObjectHeader(Landroid/os/Parcel;I)V

    .line 105
    .line 106
    .line 107
    return-void
.end method
