.class Lcom/mycompany/app/lock/PatternLock$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/lock/PatternLock$DotState;

.field public final synthetic b:Lcom/mycompany/app/lock/PatternLock;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PatternLock;Lcom/mycompany/app/lock/PatternLock$DotState;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock$4;->b:Lcom/mycompany/app/lock/PatternLock;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/lock/PatternLock$4;->a:Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 7
    .line 8
    return-void
.end method


# virtual methods
.method public final onAnimationUpdate(Landroid/animation/ValueAnimator;)V
    .locals 1

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
    iget-object v0, p0, Lcom/mycompany/app/lock/PatternLock$4;->a:Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 12
    .line 13
    iput p1, v0, Lcom/mycompany/app/lock/PatternLock$DotState;->a:F

    .line 14
    .line 15
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternLock$4;->b:Lcom/mycompany/app/lock/PatternLock;

    .line 16
    .line 17
    invoke-virtual {p1}, Landroid/view/View;->invalidate()V

    .line 18
    .line 19
    .line 20
    return-void
.end method
