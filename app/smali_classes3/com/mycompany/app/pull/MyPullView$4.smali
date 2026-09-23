.class Lcom/mycompany/app/pull/MyPullView$4;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/mycompany/app/pull/MyPullView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = null
.end annotation


# instance fields
.field public final synthetic c:Lcom/mycompany/app/pull/MyPullView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/pull/MyPullView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/pull/MyPullView$4;->c:Lcom/mycompany/app/pull/MyPullView;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/pull/MyPullView$4;->c:Lcom/mycompany/app/pull/MyPullView;

    .line 2
    .line 3
    iget-object v0, p2, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    .line 9
    .line 10
    sub-float/2addr v1, p1

    .line 11
    iget-object v0, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 12
    .line 13
    iget v2, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->q:F

    .line 14
    .line 15
    cmpl-float v2, v1, v2

    .line 16
    .line 17
    if-eqz v2, :cond_1

    .line 18
    .line 19
    iput v1, v0, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->q:F

    .line 20
    .line 21
    invoke-virtual {v0}, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->a()V

    .line 22
    .line 23
    .line 24
    :cond_1
    iget v0, p2, Lcom/mycompany/app/pull/MyPullView;->q:I

    .line 25
    .line 26
    iget v1, p2, Lcom/mycompany/app/pull/MyPullView;->w:F

    .line 27
    .line 28
    int-to-float v2, v0

    .line 29
    sub-float/2addr v1, v2

    .line 30
    mul-float/2addr v1, p1

    .line 31
    float-to-int p1, v1

    .line 32
    add-int/2addr v0, p1

    .line 33
    iput v0, p2, Lcom/mycompany/app/pull/MyPullView;->k:I

    .line 34
    .line 35
    invoke-static {p2}, Lcom/mycompany/app/pull/MyPullView;->c(Lcom/mycompany/app/pull/MyPullView;)I

    .line 36
    .line 37
    .line 38
    move-result p1

    .line 39
    add-int/2addr p1, v0

    .line 40
    int-to-float p1, p1

    .line 41
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 42
    .line 43
    .line 44
    return-void
.end method
