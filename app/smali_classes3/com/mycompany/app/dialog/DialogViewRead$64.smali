.class Lcom/mycompany/app/dialog/DialogViewRead$64;
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
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogViewRead$64;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogViewRead$64;->c:Lcom/mycompany/app/dialog/DialogViewRead;

    .line 2
    .line 3
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->Y0:Z

    .line 4
    .line 5
    if-eqz v1, :cond_5

    .line 6
    .line 7
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->e0:Z

    .line 8
    .line 9
    if-eqz v1, :cond_5

    .line 10
    .line 11
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->j0:Z

    .line 12
    .line 13
    if-nez v1, :cond_5

    .line 14
    .line 15
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->c:Z

    .line 16
    .line 17
    if-nez v1, :cond_0

    .line 18
    .line 19
    goto :goto_1

    .line 20
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->Z0:Ljava/util/List;

    .line 21
    .line 22
    if-eqz v1, :cond_5

    .line 23
    .line 24
    invoke-interface {v1}, Ljava/util/List;->isEmpty()Z

    .line 25
    .line 26
    .line 27
    move-result v1

    .line 28
    if-eqz v1, :cond_1

    .line 29
    .line 30
    goto :goto_1

    .line 31
    :cond_1
    sget-boolean v1, Lcom/mycompany/app/pref/PrefRead;->M:Z

    .line 32
    .line 33
    if-eqz v1, :cond_2

    .line 34
    .line 35
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->d2:Z

    .line 36
    .line 37
    if-nez v1, :cond_2

    .line 38
    .line 39
    goto :goto_1

    .line 40
    :cond_2
    const/4 v1, 0x0

    .line 41
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->Y0:Z

    .line 42
    .line 43
    iget v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->r0:I

    .line 44
    .line 45
    if-eqz v2, :cond_3

    .line 46
    .line 47
    goto :goto_1

    .line 48
    :cond_3
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogViewRead;->a1:Z

    .line 49
    .line 50
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->d2:Z

    .line 51
    .line 52
    const/4 v3, 0x1

    .line 53
    if-eqz v2, :cond_4

    .line 54
    .line 55
    iget-boolean v2, v0, Lcom/mycompany/app/dialog/DialogViewRead;->l2:Z

    .line 56
    .line 57
    if-nez v2, :cond_4

    .line 58
    .line 59
    invoke-virtual {v0, v1}, Lcom/mycompany/app/dialog/DialogViewRead;->L(Z)V

    .line 60
    .line 61
    .line 62
    goto :goto_0

    .line 63
    :cond_4
    invoke-virtual {v0, v3}, Lcom/mycompany/app/dialog/DialogViewRead;->F0(Z)V

    .line 64
    .line 65
    .line 66
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogViewRead;->C:Lcom/mycompany/app/view/MyFadeFrame;

    .line 67
    .line 68
    if-eqz v0, :cond_5

    .line 69
    .line 70
    invoke-virtual {v0, v3}, Lcom/mycompany/app/view/MyFadeFrame;->d(Z)V

    .line 71
    .line 72
    .line 73
    :cond_5
    :goto_1
    return-void
.end method
