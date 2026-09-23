.class Lcom/mycompany/app/view/MyIconFrame$4;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyIconFrame;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyIconFrame;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyIconFrame$4;->c:Lcom/mycompany/app/view/MyIconFrame;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyIconFrame$4;->c:Lcom/mycompany/app/view/MyIconFrame;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/view/MyIconFrame;->o:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    const/high16 v1, 0x3f800000    # 1.0f

    .line 12
    .line 13
    invoke-static {v0, v1}, Lcom/mycompany/app/view/MyIconFrame;->b(Lcom/mycompany/app/view/MyIconFrame;F)V

    .line 14
    .line 15
    .line 16
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyIconFrame;->r:Z

    .line 17
    .line 18
    if-eqz v1, :cond_1

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    iput-boolean v1, v0, Lcom/mycompany/app/view/MyIconFrame;->t:Z

    .line 22
    .line 23
    invoke-virtual {v0}, Lcom/mycompany/app/view/MyIconFrame;->g()V

    .line 24
    .line 25
    .line 26
    :cond_1
    :goto_0
    return-void
.end method
