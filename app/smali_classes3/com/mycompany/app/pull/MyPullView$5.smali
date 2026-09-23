.class Lcom/mycompany/app/pull/MyPullView$5;
.super Landroid/view/animation/Animation;
.source "SourceFile"


# instance fields
.field public final synthetic c:Lcom/mycompany/app/pull/MyPullView;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/pull/MyPullView;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/pull/MyPullView$5;->c:Lcom/mycompany/app/pull/MyPullView;

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
    .locals 1

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/pull/MyPullView$5;->c:Lcom/mycompany/app/pull/MyPullView;

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
    const/high16 v0, 0x3f800000    # 1.0f

    .line 9
    .line 10
    sub-float/2addr v0, p1

    .line 11
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleX(F)V

    .line 12
    .line 13
    .line 14
    invoke-virtual {p2, v0}, Landroid/view/View;->setScaleY(F)V

    .line 15
    .line 16
    .line 17
    return-void
.end method
