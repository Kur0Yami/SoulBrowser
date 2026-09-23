.class Lcom/mycompany/app/lock/PatternLock$2;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/lock/PatternLock$DotState;

.field public final synthetic b:F

.field public final synthetic c:F

.field public final synthetic d:F

.field public final synthetic e:F

.field public final synthetic f:Lcom/mycompany/app/lock/PatternLock;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PatternLock;Lcom/mycompany/app/lock/PatternLock$DotState;FFFF)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock$2;->f:Lcom/mycompany/app/lock/PatternLock;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/lock/PatternLock$2;->a:Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/lock/PatternLock$2;->b:F

    .line 9
    .line 10
    iput p4, p0, Lcom/mycompany/app/lock/PatternLock$2;->c:F

    .line 11
    .line 12
    iput p5, p0, Lcom/mycompany/app/lock/PatternLock$2;->d:F

    .line 13
    .line 14
    iput p6, p0, Lcom/mycompany/app/lock/PatternLock$2;->e:F

    .line 15
    .line 16
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 3

    .line 1
    invoke-virtual {p1}, Landroid/animation/ValueAnimator;->getAnimatedValue()Ljava/lang/Object;

    .line 2
    .line 3
    .line 4
    move-result-object p1

    .line 5
    check-cast p1, Ljava/lang/Float;

    .line 6
    .line 7
    invoke-virtual {p1}, Ljava/lang/Float;->floatValue()F

    .line 8
    .line 9
    .line 10
    move-result p1

    .line 11
    const/high16 v0, 0x3f800000    # 1.0f

    .line 12
    .line 13
    sub-float/2addr v0, p1

    .line 14
    iget v1, p0, Lcom/mycompany/app/lock/PatternLock$2;->b:F

    .line 15
    .line 16
    mul-float/2addr v1, v0

    .line 17
    iget v2, p0, Lcom/mycompany/app/lock/PatternLock$2;->c:F

    .line 18
    .line 19
    mul-float/2addr v2, p1

    .line 20
    add-float/2addr v2, v1

    .line 21
    iget-object v1, p0, Lcom/mycompany/app/lock/PatternLock$2;->a:Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 22
    .line 23
    iput v2, v1, Lcom/mycompany/app/lock/PatternLock$DotState;->b:F

    .line 24
    .line 25
    iget v2, p0, Lcom/mycompany/app/lock/PatternLock$2;->d:F

    .line 26
    .line 27
    mul-float/2addr v0, v2

    .line 28
    iget v2, p0, Lcom/mycompany/app/lock/PatternLock$2;->e:F

    .line 29
    .line 30
    mul-float/2addr p1, v2

    .line 31
    add-float/2addr p1, v0

    .line 32
    iput p1, v1, Lcom/mycompany/app/lock/PatternLock$DotState;->c:F

    .line 33
    .line 34
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternLock$2;->f:Lcom/mycompany/app/lock/PatternLock;

    .line 35
    .line 36
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 37
    .line 38
    .line 39
    return-void
.end method
