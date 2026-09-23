.class final Lcom/google/android/gms/internal/mlkit_vision_common/zzao;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/google/firebase/encoders/ValueEncoderContext;


# instance fields
.field public a:Z

.field public b:Z

.field public c:Lcom/google/firebase/encoders/FieldDescriptor;

.field public final d:Lcom/google/android/gms/internal/mlkit_vision_common/zzak;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_common/zzak;)V
    .locals 1

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->a:Z

    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->b:Z

    iput-object p1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->d:Lcom/google/android/gms/internal/mlkit_vision_common/zzak;

    return-void
.end method


# virtual methods
.method public final b(Ljava/lang/String;)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->b:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->d:Lcom/google/android/gms/internal/mlkit_vision_common/zzak;

    .line 13
    .line 14
    invoke-virtual {v2, v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->b(Lcom/google/firebase/encoders/FieldDescriptor;Ljava/lang/Object;Z)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    .line 19
    .line 20
    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method

.method public final c(Z)Lcom/google/firebase/encoders/ValueEncoderContext;
    .locals 3

    .line 1
    iget-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->a:Z

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const/4 v0, 0x1

    .line 6
    iput-boolean v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->a:Z

    .line 7
    .line 8
    iget-object v0, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->c:Lcom/google/firebase/encoders/FieldDescriptor;

    .line 9
    .line 10
    iget-boolean v1, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->b:Z

    .line 11
    .line 12
    iget-object v2, p0, Lcom/google/android/gms/internal/mlkit_vision_common/zzao;->d:Lcom/google/android/gms/internal/mlkit_vision_common/zzak;

    .line 13
    .line 14
    invoke-virtual {v2, v0, p1, v1}, Lcom/google/android/gms/internal/mlkit_vision_common/zzak;->c(Lcom/google/firebase/encoders/FieldDescriptor;IZ)V

    .line 15
    .line 16
    .line 17
    return-object p0

    .line 18
    :cond_0
    new-instance p1, Lcom/google/firebase/encoders/EncodingException;

    .line 19
    .line 20
    const-string v0, "Cannot encode a second value in the ValueEncoderContext"

    .line 21
    .line 22
    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 23
    .line 24
    .line 25
    throw p1
.end method
