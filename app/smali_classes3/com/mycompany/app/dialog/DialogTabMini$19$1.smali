.class Lcom/mycompany/app/dialog/DialogTabMini$19$1;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini$19;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$19;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$19$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$19;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$19$1;->c:Lcom/mycompany/app/dialog/DialogTabMini$19;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$19;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->e1:Z

    .line 6
    .line 7
    iget-object v2, v0, Lcom/mycompany/app/dialog/DialogTabMini;->a1:Lcom/mycompany/app/view/MySnackbar;

    .line 8
    .line 9
    const/4 v3, 0x0

    .line 10
    if-eqz v2, :cond_0

    .line 11
    .line 12
    invoke-virtual {v2, v1}, Lcom/mycompany/app/view/MySnackbar;->i(Z)V

    .line 13
    .line 14
    .line 15
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMini;->a1:Lcom/mycompany/app/view/MySnackbar;

    .line 16
    .line 17
    :cond_0
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->f1:Lcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;

    .line 18
    .line 19
    if-eqz v1, :cond_1

    .line 20
    .line 21
    invoke-interface {v1}, Lcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;->a()V

    .line 22
    .line 23
    .line 24
    iput-object v3, v0, Lcom/mycompany/app/dialog/DialogTabMini;->f1:Lcom/mycompany/app/dialog/DialogTabMain$ReleaseBackListener;

    .line 25
    .line 26
    :cond_1
    const/4 v1, 0x0

    .line 27
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->E1:Z

    .line 28
    .line 29
    return-void
.end method
