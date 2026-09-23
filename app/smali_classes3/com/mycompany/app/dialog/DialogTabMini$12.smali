.class Lcom/mycompany/app/dialog/DialogTabMini$12;
.super Ljava/lang/Object;
.source "SourceFile"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field public final synthetic c:Lcom/mycompany/app/dialog/DialogTabMini;


# direct methods
.method public constructor <init>(Lcom/mycompany/app/dialog/DialogTabMini;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    .line 3
    .line 4
    iput-object p1, p0, Lcom/mycompany/app/dialog/DialogTabMini$12;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 5
    .line 6
    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/mycompany/app/dialog/DialogTabMini$12;->c:Lcom/mycompany/app/dialog/DialogTabMini;

    .line 2
    .line 3
    iget-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->t0:Lcom/google/android/material/tabs/TabLayout;

    .line 4
    .line 5
    if-nez v1, :cond_0

    .line 6
    .line 7
    goto :goto_0

    .line 8
    :cond_0
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 9
    .line 10
    const/4 v2, 0x1

    .line 11
    invoke-direct {v1, v0, v2}, Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;-><init>(Lcom/mycompany/app/dialog/DialogTabMini;Z)V

    .line 12
    .line 13
    .line 14
    iput-object v1, v0, Lcom/mycompany/app/dialog/DialogTabMini;->x0:Lcom/mycompany/app/dialog/DialogTabMini$TabGrid;

    .line 15
    .line 16
    iget-object v0, v0, Lcom/mycompany/app/view/MyDialogBottom;->i:Landroid/os/Handler;

    .line 17
    .line 18
    if-nez v0, :cond_1

    .line 19
    .line 20
    :goto_0
    return-void

    .line 21
    :cond_1
    new-instance v1, Lcom/mycompany/app/dialog/DialogTabMini$12$1;

    .line 22
    .line 23
    invoke-direct {v1, p0}, Lcom/mycompany/app/dialog/DialogTabMini$12$1;-><init>(Lcom/mycompany/app/dialog/DialogTabMini$12;)V

    .line 24
    .line 25
    .line 26
    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 27
    .line 28
    .line 29
    return-void
.end method
