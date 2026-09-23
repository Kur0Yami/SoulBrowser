.class Lcom/mycompany/app/pull/MyPullView$6;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic c:I

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/pull/MyPullView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/pull/MyPullView;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/pull/MyPullView$6;->g:Lcom/mycompany/app/pull/MyPullView;

    .line 2
    .line 3
    iput p2, p0, Lcom/mycompany/app/pull/MyPullView$6;->c:I

    .line 4
    .line 5
    iput p3, p0, Lcom/mycompany/app/pull/MyPullView$6;->f:I

    .line 6
    .line 7
    invoke-direct {p0}, Landroid/view/animation/Animation;-><init>()V

    .line 8
    .line 9
    .line 10
    return-void
.end method


# virtual methods
.method public final applyTransformation(FLandroid/view/animation/Transformation;)V
    .locals 3

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/pull/MyPullView$6;->g:Lcom/mycompany/app/pull/MyPullView;

    .line 2
    .line 3
    iget-object p2, p2, Lcom/mycompany/app/pull/MyPullView;->r:Lcom/mycompany/app/pull/MyMaterialProgressDrawable;

    .line 4
    .line 5
    if-nez p2, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    iget v0, p0, Lcom/mycompany/app/pull/MyPullView$6;->c:I

    .line 9
    .line 10
    int-to-float v1, v0

    .line 11
    iget v2, p0, Lcom/mycompany/app/pull/MyPullView$6;->f:I

    .line 12
    .line 13
    sub-int/2addr v2, v0

    .line 14
    int-to-float v0, v2

    .line 15
    mul-float/2addr v0, p1

    .line 16
    add-float/2addr v0, v1

    .line 17
    float-to-int p1, v0

    .line 18
    iget-object p2, p2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable;->f:Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;

    .line 19
    .line 20
    iput p1, p2, Lcom/mycompany/app/pull/MyMaterialProgressDrawable$Ring;->u:I

    .line 21
    .line 22
    return-void
.end method
