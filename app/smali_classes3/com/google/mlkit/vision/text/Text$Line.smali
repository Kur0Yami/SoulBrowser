.class public Lcom/google/mlkit/vision/text/Text$Line;
.super Lcom/google/mlkit/vision/text/Text$TextBase;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/mlkit/vision/text/Text;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Line"
.end annotation


# instance fields
.field public final d:F

.field public final e:F


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvd;FF)V
    .locals 4

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvd;->c:Ljava/lang/String;

    .line 2
    iget-object v1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvd;->f:Landroid/graphics/Rect;

    .line 3
    iget-object v2, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvd;->g:Ljava/util/List;

    .line 4
    iget-object v3, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvd;->h:Ljava/lang/String;

    .line 5
    invoke-direct {p0, v0, v1, v2, v3}, Lcom/google/mlkit/vision/text/Text$TextBase;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V

    .line 6
    iget-object p1, p1, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzvd;->i:Ljava/util/List;

    .line 7
    new-instance v0, Lcom/google/mlkit/vision/text/zzc;

    .line 8
    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    .line 9
    invoke-static {p1, v0}, Lcom/google/android/gms/internal/mlkit_vision_text_common/zzbu;->a(Ljava/util/List;Lcom/google/android/gms/internal/mlkit_vision_text_common/zzu;)Ljava/util/AbstractList;

    iput p2, p0, Lcom/google/mlkit/vision/text/Text$Line;->d:F

    iput p3, p0, Lcom/google/mlkit/vision/text/Text$Line;->e:F

    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;Ljava/util/AbstractList;FF)V
    .locals 0

    .line 10
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/google/mlkit/vision/text/Text$TextBase;-><init>(Ljava/lang/String;Landroid/graphics/Rect;Ljava/util/List;Ljava/lang/String;)V

    iput p6, p0, Lcom/google/mlkit/vision/text/Text$Line;->d:F

    iput p7, p0, Lcom/google/mlkit/vision/text/Text$Line;->e:F

    return-void
.end method


# virtual methods
.method public final a()Landroid/graphics/Rect;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->b:Landroid/graphics/Rect;

    .line 2
    .line 3
    return-object v0
.end method

.method public final b()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->c:Ljava/lang/String;

    .line 2
    .line 3
    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/mlkit/vision/text/Text$TextBase;->a:Ljava/lang/String;

    .line 2
    .line 3
    if-nez v0, :cond_0

    .line 4
    .line 5
    const-string v0, ""

    .line 6
    .line 7
    :cond_0
    return-object v0
.end method
