.class Landroidx/transition/ChangeTransform$Listener;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroidx/transition/ChangeTransform;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "Listener"
.end annotation


# instance fields
.field public a:Z

.field public final b:Landroid/graphics/Matrix;

.field public final c:Landroid/view/View;

.field public final d:Landroidx/transition/ChangeTransform$Transforms;

.field public final e:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;


# direct methods
.method public constructor <init>(Landroid/view/View;Landroidx/transition/ChangeTransform$Transforms;Landroidx/transition/ChangeTransform$PathAnimatorMatrix;Landroid/graphics/Matrix;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 2
    .line 3
    .line 4
    new-instance p4, Landroid/graphics/Matrix;

    .line 5
    .line 6
    invoke-direct {p4}, Landroid/graphics/Matrix;-><init>()V

    .line 7
    .line 8
    .line 9
    iput-object p4, p0, Landroidx/transition/ChangeTransform$Listener;->b:Landroid/graphics/Matrix;

    .line 10
    .line 11
    iput-object p1, p0, Landroidx/transition/ChangeTransform$Listener;->c:Landroid/view/View;

    .line 12
    .line 13
    iput-object p2, p0, Landroidx/transition/ChangeTransform$Listener;->d:Landroidx/transition/ChangeTransform$Transforms;

    .line 14
    .line 15
    iput-object p3, p0, Landroidx/transition/ChangeTransform$Listener;->e:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 16
    .line 17
    return-void
.end method


# virtual methods
.method public final onAnimationCancel(Landroid/animation/Animator;)V
    .locals 0

    .line 1
    const/4 p1, 0x1

    .line 2
    iput-boolean p1, p0, Landroidx/transition/ChangeTransform$Listener;->a:Z

    .line 3
    .line 4
    return-void
.end method

.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 9

    .line 1
    iget-boolean p1, p0, Landroidx/transition/ChangeTransform$Listener;->a:Z

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iget-object v1, p0, Landroidx/transition/ChangeTransform$Listener;->c:Landroid/view/View;

    .line 5
    .line 6
    if-nez p1, :cond_0

    .line 7
    .line 8
    sget p1, Landroidx/transition/R$id;->transition_transform:I

    .line 9
    .line 10
    invoke-virtual {v1, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 11
    .line 12
    .line 13
    sget p1, Landroidx/transition/R$id;->parent_matrix:I

    .line 14
    .line 15
    invoke-virtual {v1, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 16
    .line 17
    .line 18
    :cond_0
    sget-object p1, Landroidx/transition/ViewUtils;->a:Landroidx/transition/ViewUtilsApi23;

    .line 19
    .line 20
    invoke-virtual {p1, v1, v0}, Landroidx/transition/ViewUtilsApi21;->d(Landroid/view/View;Landroid/graphics/Matrix;)V

    .line 21
    .line 22
    .line 23
    iget-object p1, p0, Landroidx/transition/ChangeTransform$Listener;->d:Landroidx/transition/ChangeTransform$Transforms;

    .line 24
    .line 25
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->a:F

    .line 26
    .line 27
    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->b:F

    .line 28
    .line 29
    iget v3, p1, Landroidx/transition/ChangeTransform$Transforms;->c:F

    .line 30
    .line 31
    iget v4, p1, Landroidx/transition/ChangeTransform$Transforms;->d:F

    .line 32
    .line 33
    iget v5, p1, Landroidx/transition/ChangeTransform$Transforms;->e:F

    .line 34
    .line 35
    iget v6, p1, Landroidx/transition/ChangeTransform$Transforms;->f:F

    .line 36
    .line 37
    iget v7, p1, Landroidx/transition/ChangeTransform$Transforms;->g:F

    .line 38
    .line 39
    iget p1, p1, Landroidx/transition/ChangeTransform$Transforms;->h:F

    .line 40
    .line 41
    sget-object v8, Landroidx/transition/ChangeTransform;->G:[Ljava/lang/String;

    .line 42
    .line 43
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 47
    .line 48
    .line 49
    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->M(Landroid/view/View;F)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, v6}, Landroid/view/View;->setRotationX(F)V

    .line 59
    .line 60
    .line 61
    invoke-virtual {v1, v7}, Landroid/view/View;->setRotationY(F)V

    .line 62
    .line 63
    .line 64
    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    .line 65
    .line 66
    .line 67
    return-void
.end method

.method public final onAnimationPause(Landroid/animation/Animator;)V
    .locals 9

    .line 1
    iget-object p1, p0, Landroidx/transition/ChangeTransform$Listener;->e:Landroidx/transition/ChangeTransform$PathAnimatorMatrix;

    .line 2
    .line 3
    iget-object p1, p1, Landroidx/transition/ChangeTransform$PathAnimatorMatrix;->a:Landroid/graphics/Matrix;

    .line 4
    .line 5
    iget-object v0, p0, Landroidx/transition/ChangeTransform$Listener;->b:Landroid/graphics/Matrix;

    .line 6
    .line 7
    invoke-virtual {v0, p1}, Landroid/graphics/Matrix;->set(Landroid/graphics/Matrix;)V

    .line 8
    .line 9
    .line 10
    sget p1, Landroidx/transition/R$id;->transition_transform:I

    .line 11
    .line 12
    iget-object v1, p0, Landroidx/transition/ChangeTransform$Listener;->c:Landroid/view/View;

    .line 13
    .line 14
    invoke-virtual {v1, p1, v0}, Landroid/view/View;->setTag(ILjava/lang/Object;)V

    .line 15
    .line 16
    .line 17
    iget-object p1, p0, Landroidx/transition/ChangeTransform$Listener;->d:Landroidx/transition/ChangeTransform$Transforms;

    .line 18
    .line 19
    iget v0, p1, Landroidx/transition/ChangeTransform$Transforms;->a:F

    .line 20
    .line 21
    iget v2, p1, Landroidx/transition/ChangeTransform$Transforms;->b:F

    .line 22
    .line 23
    iget v3, p1, Landroidx/transition/ChangeTransform$Transforms;->c:F

    .line 24
    .line 25
    iget v4, p1, Landroidx/transition/ChangeTransform$Transforms;->d:F

    .line 26
    .line 27
    iget v5, p1, Landroidx/transition/ChangeTransform$Transforms;->e:F

    .line 28
    .line 29
    iget v6, p1, Landroidx/transition/ChangeTransform$Transforms;->f:F

    .line 30
    .line 31
    iget v7, p1, Landroidx/transition/ChangeTransform$Transforms;->g:F

    .line 32
    .line 33
    iget p1, p1, Landroidx/transition/ChangeTransform$Transforms;->h:F

    .line 34
    .line 35
    sget-object v8, Landroidx/transition/ChangeTransform;->G:[Ljava/lang/String;

    .line 36
    .line 37
    invoke-virtual {v1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 38
    .line 39
    .line 40
    invoke-virtual {v1, v2}, Landroid/view/View;->setTranslationY(F)V

    .line 41
    .line 42
    .line 43
    invoke-static {v1, v3}, Landroidx/core/view/ViewCompat;->M(Landroid/view/View;F)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v1, v4}, Landroid/view/View;->setScaleX(F)V

    .line 47
    .line 48
    .line 49
    invoke-virtual {v1, v5}, Landroid/view/View;->setScaleY(F)V

    .line 50
    .line 51
    .line 52
    invoke-virtual {v1, v6}, Landroid/view/View;->setRotationX(F)V

    .line 53
    .line 54
    .line 55
    invoke-virtual {v1, v7}, Landroid/view/View;->setRotationY(F)V

    .line 56
    .line 57
    .line 58
    invoke-virtual {v1, p1}, Landroid/view/View;->setRotation(F)V

    .line 59
    .line 60
    .line 61
    return-void
.end method

.method public final onAnimationResume(Landroid/animation/Animator;)V
    .locals 2

    .line 1
    sget-object p1, Landroidx/transition/ChangeTransform;->G:[Ljava/lang/String;

    .line 2
    .line 3
    iget-object p1, p0, Landroidx/transition/ChangeTransform$Listener;->c:Landroid/view/View;

    .line 4
    .line 5
    const/4 v0, 0x0

    .line 6
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationX(F)V

    .line 7
    .line 8
    .line 9
    invoke-virtual {p1, v0}, Landroid/view/View;->setTranslationY(F)V

    .line 10
    .line 11
    .line 12
    invoke-static {p1, v0}, Landroidx/core/view/ViewCompat;->M(Landroid/view/View;F)V

    .line 13
    .line 14
    .line 15
    const/high16 v1, 0x3f800000    # 1.0f

    .line 16
    .line 17
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleX(F)V

    .line 18
    .line 19
    .line 20
    invoke-virtual {p1, v1}, Landroid/view/View;->setScaleY(F)V

    .line 21
    .line 22
    .line 23
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationX(F)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotationY(F)V

    .line 27
    .line 28
    .line 29
    invoke-virtual {p1, v0}, Landroid/view/View;->setRotation(F)V

    .line 30
    .line 31
    .line 32
    return-void
.end method
