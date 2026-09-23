.class Lcom/mycompany/app/dialog/DialogViewRead$119;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogViewRead;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogViewRead;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$119;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$119;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->k1:Landroid/animation/ValueAnimator;

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
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->k1:Landroid/animation/ValueAnimator;

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 12
    .line 13
    if-nez v1, :cond_1

    .line 14
    .line 15
    :goto_0
    return-void

    .line 16
    :cond_1
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->C1:Z

    .line 17
    .line 18
    if-eqz v1, :cond_2

    .line 19
    .line 20
    const/4 v1, 0x0

    .line 21
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->w(Lcom/mycompany/app/dialog/DialogViewRead;F)V

    .line 22
    .line 23
    .line 24
    goto :goto_1

    .line 25
    :cond_2
    const/high16 v1, 0x3f800000    # 1.0f

    .line 26
    .line 27
    invoke-static {v0, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->w(Lcom/mycompany/app/dialog/DialogViewRead;F)V

    .line 28
    .line 29
    .line 30
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->o:Z

    .line 31
    .line 32
    if-nez v1, :cond_3

    .line 33
    .line 34
    const/4 v1, 0x1

    .line 35
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->o:Z

    .line 36
    .line 37
    invoke-static {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->h(Lcom/mycompany/app/dialog/DialogViewRead;)V

    .line 38
    .line 39
    .line 40
    :cond_3
    :goto_1
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogViewRead;->invalidate()V

    .line 41
    .line 42
    .line 43
    return-void
.end method
