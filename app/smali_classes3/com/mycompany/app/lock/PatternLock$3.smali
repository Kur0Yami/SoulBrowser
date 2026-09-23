.class Lcom/mycompany/app/lock/PatternLock$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "SourceFile"


# instance fields
.field public final synthetic a:Lcom/mycompany/app/lock/PatternLock$DotState;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/lock/PatternLock$DotState;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/mycompany/app/lock/PatternLock$3;->a:Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 2
    .line 3
    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    .line 4
    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/mycompany/app/lock/PatternLock$3;->a:Lcom/mycompany/app/lock/PatternLock$DotState;

    .line 2
    .line 3
    const/4 v0, 0x0

    .line 4
    iput-object v0, p1, Lcom/mycompany/app/lock/PatternLock$DotState;->d:Landroid/animation/ValueAnimator;

    .line 5
    .line 6
    return-void
.end method
