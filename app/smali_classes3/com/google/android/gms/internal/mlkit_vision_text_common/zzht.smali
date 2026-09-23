.class final Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ObjectEncoder;


# static fields
.field public static final a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;

.field public static final b:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final c:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final d:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final e:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final f:Lcom/google/firebase/encoders/FieldDescriptor;

.field public static final g:Lcom/google/firebase/encoders/FieldDescriptor;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;

    .line 2
    .line 3
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 4
    .line 5
    .line 6
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->a:Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;

    .line 7
    .line 8
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 9
    .line 10
    const-string v1, "maxMs"

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
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->q(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 24
    .line 25
    .line 26
    move-result-object v0

    .line 27
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 28
    .line 29
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 30
    .line 31
    const-string v1, "minMs"

    .line 32
    .line 33
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 34
    .line 35
    .line 36
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 37
    .line 38
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 39
    .line 40
    .line 41
    const/4 v2, 0x2

    .line 42
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 43
    .line 44
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->q(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 45
    .line 46
    .line 47
    move-result-object v0

    .line 48
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 49
    .line 50
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 51
    .line 52
    const-string v1, "avgMs"

    .line 53
    .line 54
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 55
    .line 56
    .line 57
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 58
    .line 59
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 60
    .line 61
    .line 62
    const/4 v2, 0x3

    .line 63
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 64
    .line 65
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->q(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 66
    .line 67
    .line 68
    move-result-object v0

    .line 69
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->d:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 70
    .line 71
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 72
    .line 73
    const-string v1, "firstQuartileMs"

    .line 74
    .line 75
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 76
    .line 77
    .line 78
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 79
    .line 80
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 81
    .line 82
    .line 83
    const/4 v2, 0x4

    .line 84
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 85
    .line 86
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->q(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 87
    .line 88
    .line 89
    move-result-object v0

    .line 90
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->e:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 91
    .line 92
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 93
    .line 94
    const-string v1, "medianMs"

    .line 95
    .line 96
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 97
    .line 98
    .line 99
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 100
    .line 101
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 102
    .line 103
    .line 104
    const/4 v2, 0x5

    .line 105
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 106
    .line 107
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->q(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 108
    .line 109
    .line 110
    move-result-object v0

    .line 111
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->f:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 112
    .line 113
    new-instance v0, Lcom/google/firebase/encoders/FieldDescriptor$Builder;

    .line 114
    .line 115
    const-string v1, "thirdQuartileMs"

    .line 116
    .line 117
    invoke-direct {v0, v1}, Lcom/google/firebase/encoders/FieldDescriptor$Builder;-><init>(Ljava/lang/String;)V

    .line 118
    .line 119
    .line 120
    new-instance v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;

    .line 121
    .line 122
    invoke-direct {v1}, Ljava/lang/Object;-><init>()V

    .line 123
    .line 124
    .line 125
    const/4 v2, 0x6

    .line 126
    iput v2, v1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;->a:I

    .line 127
    .line 128
    invoke-static {v1, v0}, Landroidx/work/impl/workers/a;->q(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzct;Lcom/google/firebase/encoders/FieldDescriptor$Builder;)Lcom/google/firebase/encoders/FieldDescriptor;

    .line 129
    .line 130
    .line 131
    move-result-object v0

    .line 132
    sput-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->g:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 133
    .line 134
    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 2

    .line 1
    check-cast p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;

    .line 2
    .line 3
    check-cast p2, Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 4
    .line 5
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->b:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 6
    .line 7
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;->a:Ljava/lang/Long;

    .line 8
    .line 9
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 10
    .line 11
    .line 12
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 13
    .line 14
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;->b:Ljava/lang/Long;

    .line 15
    .line 16
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 17
    .line 18
    .line 19
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->d:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 20
    .line 21
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;->c:Ljava/lang/Long;

    .line 22
    .line 23
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 24
    .line 25
    .line 26
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->e:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 27
    .line 28
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;->d:Ljava/lang/Long;

    .line 29
    .line 30
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 31
    .line 32
    .line 33
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->f:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 34
    .line 35
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;->e:Ljava/lang/Long;

    .line 36
    .line 37
    invoke-interface {p2, v0, v1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 38
    .line 39
    .line 40
    sget-object v0, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzht;->g:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 41
    .line 42
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zznw;->f:Ljava/lang/Long;

    .line 43
    .line 44
    invoke-interface {p2, v0, p1}, Lcom/google/firebase/encoders/ObjectEncoderContext;->d(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;)Lcom/google/firebase/encoders/ObjectEncoderContext;

    .line 45
    .line 46
    .line 47
    return-void
.end method
