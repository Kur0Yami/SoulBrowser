.class final Lcom/google/android/gms/internal/mlkit_code_scanner/zzev;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final a:Lcom/google/android/gms/internal/mlkit_code_scanner/zzev;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzev;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/mlkit_code_scanner/zzev;->a:Lcom/google/android/gms/internal/mlkit_code_scanner/zzev;

    .line 7
    .line 8
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 9
    .line 10
    const-string v1, "durationMs"

    .line 11
    .line 12
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 13
    .line 14
    .line 15
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 16
    .line 17
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 18
    .line 19
    .line 20
    const/4 v2, 0x1

    .line 21
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 22
    .line 23
    const-string v2, "imageSource"

    .line 24
    .line 25
    invoke-static {v1, v0, v2}, Landroidx/work/impl/workers/a;->j(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 26
    .line 27
    .line 28
    move-result-object v0

    .line 29
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 30
    .line 31
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 32
    .line 33
    .line 34
    const/4 v2, 0x2

    .line 35
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 36
    .line 37
    const-string v2, "imageFormat"

    .line 38
    .line 39
    invoke-static {v1, v0, v2}, Landroidx/work/impl/workers/a;->j(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 40
    .line 41
    .line 42
    move-result-object v0

    .line 43
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 44
    .line 45
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 46
    .line 47
    .line 48
    const/4 v2, 0x3

    .line 49
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 50
    .line 51
    const-string v2, "imageByteSize"

    .line 52
    .line 53
    invoke-static {v1, v0, v2}, Landroidx/work/impl/workers/a;->j(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 54
    .line 55
    .line 56
    move-result-object v0

    .line 57
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x4

    .line 63
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 64
    .line 65
    const-string v2, "imageWidth"

    .line 66
    .line 67
    invoke-static {v1, v0, v2}, Landroidx/work/impl/workers/a;->j(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 68
    .line 69
    .line 70
    move-result-object v0

    .line 71
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 72
    .line 73
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 74
    .line 75
    .line 76
    const/4 v2, 0x5

    .line 77
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 78
    .line 79
    const-string v2, "imageHeight"

    .line 80
    .line 81
    invoke-static {v1, v0, v2}, Landroidx/work/impl/workers/a;->j(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 82
    .line 83
    .line 84
    move-result-object v0

    .line 85
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 86
    .line 87
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 88
    .line 89
    .line 90
    const/4 v2, 0x6

    .line 91
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 92
    .line 93
    const-string v2, "rotationDegrees"

    .line 94
    .line 95
    invoke-static {v1, v0, v2}, Landroidx/work/impl/workers/a;->j(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;Ljava/lang/String;)Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 96
    .line 97
    .line 98
    move-result-object v0

    .line 99
    new-instance v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    const/4 v2, 0x7

    .line 105
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;->a:I

    .line 106
    .line 107
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->w(Lcom/google/android/gms/internal/mlkit_code_scanner/zzad;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)V

    .line 108
    .line 109
    .line 110
    return-void
.end method


# virtual methods
.method public final bridge synthetic a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_code_scanner/zzjr;

    .line 2
    .line 3
    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 4
    .line 5
    const/4 p1, 0x0

    .line 6
    throw p1
.end method
