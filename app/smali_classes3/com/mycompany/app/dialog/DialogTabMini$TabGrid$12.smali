.class Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Lcom/mycompany/app/view/MySnackbar$SnackbarListener;


# instance fields
.field public final synthetic a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final a()V
    .locals 0

    .line 1
    return-void
.end method

.method public final b()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->C1:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->C1:Z

    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12$1;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    return-void
.end method

.method public final c()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    invoke-virtual {v0}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->d()V

    .line 4
    .line 5
    .line 6
    return-void
.end method

.method public final onDismiss()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12;->a:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 2
    .line 3
    iget-object v0, v0, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;->B:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 4
    .line 5
    iget-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->D1:Z

    .line 6
    .line 7
    if-eqz v1, :cond_0

    .line 8
    .line 9
    return-void

    .line 10
    :cond_0
    const/4 v1, 0x1

    .line 11
    iput-boolean v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->D1:Z

    .line 12
    .line 13
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12$2;

    .line 14
    .line 15
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12$2;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$TabGrid$12;)V

    .line 16
    .line 17
    .line 18
    invoke-virtual {v0, v1}, Lcom/mycompany/app/view/MyDialogBottom;->s(Ljava/lang/Runnable;)V

    .line 19
    .line 20
    .line 21
    const/4 v1, 0x0

    .line 22
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->a1:Lcom/mycompany/app/view/MySnackbar;

    .line 23
    .line 24
    return-void
.end method
