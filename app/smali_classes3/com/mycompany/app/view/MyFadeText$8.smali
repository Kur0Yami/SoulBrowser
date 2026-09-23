.class Lcom/mycompany/app/view/MyFadeText$8;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/view/MyFadeText;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/view/MyFadeText;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/view/MyFadeText$8;->c:Lcom/mycompany/app/view/MyFadeText;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/view/MyFadeText$8;->c:Lcom/mycompany/app/view/MyFadeText;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_1

    .line 8
    :cond_0
    const/4 v1, 0x0

    .line 9
    iput-object v1, v0, Lcom/mycompany/app/view/MyFadeText;->p:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/view/MyFadeText;->u:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    const/4 v1, 0x4

    .line 16
    goto :goto_0

    .line 17
    :cond_1
    const/16 v1, 0x8

    .line 18
    .line 19
    :goto_0
    invoke-static {v0, v1}, Lcom/mycompany/app/view/MyFadeText;->q(Lcom/mycompany/app/view/MyFadeText;I)V

    .line 20
    .line 21
    .line 22
    iget-object v0, v0, Lcom/mycompany/app/view/MyFadeText;->w:Lcom/mycompany/app/view/MyFadeListener;

    .line 23
    .line 24
    if-eqz v0, :cond_2

    .line 25
    .line 26
    const/4 v1, 0x0

    .line 27
    invoke-interface {v0, v1}, Lcom/mycompany/app/view/MyFadeListener;->a(Z)V

    .line 28
    .line 29
    .line 30
    :cond_2
    :goto_1
    return-void
.end method
