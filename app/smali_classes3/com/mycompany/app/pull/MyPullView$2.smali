.class Lcom/mycompany/app/pull/MyPullView$2;
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
    iput-object p1, p0, Lcom/mycompany/app/pull/MyPullView$2;->c:Lcom/mycompany/app/pull/MyPullView;

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
    .locals 2

    .line 1
    iget-object p2, p0, Lcom/mycompany/app/pull/MyPullView$2;->c:Lcom/mycompany/app/pull/MyPullView;

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
    iget v0, p2, Lcom/mycompany/app/pull/MyPullView;->q:I

    .line 9
    .line 10
    int-to-float v1, v0

    .line 11
    mul-float/2addr v1, p1

    .line 12
    float-to-int p1, v1

    .line 13
    sub-int/2addr v0, p1

    .line 14
    iput v0, p2, Lcom/mycompany/app/pull/MyPullView;->k:I

    .line 15
    .line 16
    invoke-static {p2}, Lcom/mycompany/app/pull/MyPullView;->c(Lcom/mycompany/app/pull/MyPullView;)I

    .line 17
    .line 18
    .line 19
    move-result p1

    .line 20
    add-int/2addr p1, v0

    .line 21
    int-to-float p1, p1

    .line 22
    invoke-virtual {p2, p1}, Landroid/view/View;->setTranslationY(F)V

    .line 23
    .line 24
    .line 25
    return-void
.end method
