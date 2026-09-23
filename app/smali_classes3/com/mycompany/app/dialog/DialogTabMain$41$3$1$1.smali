.class Lcom/mycompany/app/dialog/DialogTabMain$41$3$1$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMain$41$3$1$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMain$41$3$1$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$41$3$1;->c:Lcom/mycompany/app/dialog/DialogTabMain$41$3;

    .line 4
    .line 5
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMain$41$3;->c:Lcom/mycompany/app/dialog/DialogTabMain$41;

    .line 6
    .line 7
    iget-object v2, v1, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 8
    .line 9
    iget v3, v1, Lcom/mycompany/app/dialog/DialogTabMain$41;->d:I

    .line 10
    .line 11
    iget-boolean v1, v1, Lcom/mycompany/app/dialog/DialogTabMain$41;->e:Z

    .line 12
    .line 13
    if-eqz v1, :cond_1

    .line 14
    .line 15
    iget-boolean v1, v2, Lcom/mycompany/app/dialog/DialogTabMain;->L:Z

    .line 16
    .line 17
    invoke-virtual {v2, v1}, Lcom/mycompany/app/dialog/DialogTabMain;->x(Z)Lcom/mycompany/app/web/WebTabAdapter;

    .line 18
    .line 19
    .line 20
    move-result-object v1

    .line 21
    if-nez v1, :cond_0

    .line 22
    .line 23
    goto :goto_0

    .line 24
    :cond_0
    invoke-static {v2, v3}, Lcom/mycompany/app/dialog/DialogTabMain;->t(Lcom/mycompany/app/dialog/DialogTabMain;I)V

    .line 25
    .line 26
    .line 27
    iget-object v1, v2, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 28
    .line 29
    sget v2, Lnet/kaki87/soul2/testing/R$string;->deleted:I

    .line 30
    .line 31
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 32
    .line 33
    .line 34
    goto :goto_0

    .line 35
    :cond_1
    iget-object v1, v2, Lcom/mycompany/app/dialog/DialogTabMain;->H:Landroid/content/Context;

    .line 36
    .line 37
    sget v2, Lnet/kaki87/soul2/testing/R$string;->fail:I

    .line 38
    .line 39
    invoke-static {v1, v2}, Lcom/mycompany/app/main/MainUtil;->e8(Landroid/content/Context;I)V

    .line 40
    .line 41
    .line 42
    :goto_0
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$41$3;->c:Lcom/mycompany/app/dialog/DialogTabMain$41;

    .line 43
    .line 44
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMain$41;->f:Lcom/mycompany/app/dialog/DialogTabMain;

    .line 45
    .line 46
    const/4 v1, 0x0

    .line 47
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMain;->k1:Z

    .line 48
    .line 49
    return-void
.end method
