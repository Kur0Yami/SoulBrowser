.class Lcom/mycompany/app/help/KeyHelper$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/help/KeyHelper;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/help/KeyHelper;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/help/KeyHelper$1;->c:Lcom/mycompany/app/help/KeyHelper;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final onGlobalLayout()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/help/KeyHelper$1;->c:Lcom/mycompany/app/help/KeyHelper;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    iget-boolean v2, v0, Lcom/mycompany/app/help/KeyHelper;->e:Z

    .line 9
    .line 10
    if-eqz v2, :cond_2

    .line 11
    .line 12
    iget-boolean v2, v0, Lcom/mycompany/app/help/KeyHelper;->f:Z

    .line 13
    .line 14
    if-eqz v2, :cond_2

    .line 15
    .line 16
    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    .line 17
    .line 18
    .line 19
    move-result v1

    .line 20
    iget v2, v0, Lcom/mycompany/app/help/KeyHelper;->g:I

    .line 21
    .line 22
    if-ne v2, v1, :cond_1

    .line 23
    .line 24
    :goto_0
    return-void

    .line 25
    :cond_1
    iput v1, v0, Lcom/mycompany/app/help/KeyHelper;->g:I

    .line 26
    .line 27
    :cond_2
    iget-object v0, v0, Lcom/mycompany/app/help/KeyHelper;->d:Landroid/view/View;

    .line 28
    .line 29
    new-instance v1, Lcom/mycompany/app/help/KeyHelper$1$1;

    .line 30
    .line 31
    invoke-direct {v1, p0}, Lcom/mycompany/app/help/KeyHelper$1$1;-><init>(Lcom/mycompany/app/help/KeyHelper$1;)V

    .line 32
    .line 33
    .line 34
    const-wide/16 v2, 0x190

    .line 35
    .line 36
    invoke-virtual {v0, v1, v2, v3}, Landroid/view/View;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 37
    .line 38
    .line 39
    return-void
.end method
