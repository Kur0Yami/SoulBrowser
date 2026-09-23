.class Lcom/mycompany/app/expand/ExpandListAdapter$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;

.field public final synthetic f:I

.field public final synthetic g:Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

.field public final synthetic h:I

.field public final synthetic i:Lcom/mycompany/app/expand/ExpandListAdapter;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/expand/ExpandListAdapter;Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;ILcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;I)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1;->i:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 5
    .line 6
    iput-object p2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1;->c:Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;

    .line 7
    .line 8
    iput p3, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1;->f:I

    .line 9
    .line 10
    iput-object p4, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1;->g:Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 11
    .line 12
    iput p5, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1;->h:I

    .line 13
    .line 14
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 6

    .line 1
    iget-object v1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1;->i:Lcom/mycompany/app/expand/ExpandListAdapter;

    .line 2
    .line 3
    iget-boolean v0, v1, Lcom/mycompany/app/expand/ExpandListAdapter;->a:Z

    .line 4
    .line 5
    if-nez v0, :cond_0

    .line 6
    .line 7
    return-void

    .line 8
    :cond_0
    new-instance v0, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;

    .line 9
    .line 10
    iget v4, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1;->f:I

    .line 11
    .line 12
    iget-object v5, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1;->g:Lcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;

    .line 13
    .line 14
    iget-object v2, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1;->c:Lcom/mycompany/app/expand/ExpandListAdapter$DummyView;

    .line 15
    .line 16
    const/4 v3, 0x0

    .line 17
    invoke-direct/range {v0 .. v5}, Lcom/mycompany/app/expand/ExpandListAdapter$ExpandAnimation;-><init>(Lcom/mycompany/app/expand/ExpandListAdapter;Landroid/view/View;IILcom/mycompany/app/expand/ExpandListAdapter$GroupInfo;)V

    .line 18
    .line 19
    .line 20
    iget v1, p0, Lcom/mycompany/app/expand/ExpandListAdapter$1;->f:I

    .line 21
    .line 22
    invoke-static {v1}, Lcom/mycompany/app/expand/ExpandListAdapter;->a(I)I

    .line 23
    .line 24
    .line 25
    move-result v1

    .line 26
    int-to-long v3, v1

    .line 27
    invoke-virtual {v0, v3, v4}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 28
    .line 29
    .line 30
    new-instance v1, Landroid/view/animation/AccelerateInterpolator;

    .line 31
    .line 32
    invoke-direct {v1}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    .line 33
    .line 34
    .line 35
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 36
    .line 37
    .line 38
    new-instance v1, Lcom/mycompany/app/expand/ExpandListAdapter$1$1;

    .line 39
    .line 40
    invoke-direct {v1, p0}, Lcom/mycompany/app/expand/ExpandListAdapter$1$1;-><init>(Lcom/mycompany/app/expand/ExpandListAdapter$1;)V

    .line 41
    .line 42
    .line 43
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 44
    .line 45
    .line 46
    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 47
    .line 48
    .line 49
    return-void
.end method
